import 'package:flutter/material.dart';

class SearchableDropdown<T> extends StatelessWidget {
  final T? value;
  final String label;
  final String hint;
  final List<SearchableDropdownItem<T>> items;
  final ValueChanged<T?> onChanged;
  final String? Function(T?)? validator;

  const SearchableDropdown({
    super.key,
    required this.value,
    required this.label,
    this.hint = 'Select an item',
    required this.items,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final selectedItem = items.cast<SearchableDropdownItem<T>?>().firstWhere(
      (item) => item?.value == value,
      orElse: () => null,
    );

    return InkWell(
      onTap: () => _showSearchDialog(context),
      child: FormField<T>(
        validator: validator,
        initialValue: value,
        builder: (state) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText: label,
              errorText: state.errorText,
              border: const OutlineInputBorder(),
              suffixIcon: const Icon(Icons.arrow_drop_down),
            ),
            child: Text(
              selectedItem?.label ?? hint,
              style: TextStyle(
                color: selectedItem == null ? Colors.grey : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => _SearchDialog<T>(
        title: label,
        items: items,
        onSelected: (val) {
          onChanged(val);
          Navigator.pop(context);
        },
      ),
    );
  }
}

class SearchableDropdownItem<T> {
  final T value;
  final String label;

  SearchableDropdownItem({required this.value, required this.label});
}

class _SearchDialog<T> extends StatefulWidget {
  final String title;
  final List<SearchableDropdownItem<T>> items;
  final ValueChanged<T> onSelected;

  const _SearchDialog({
    required this.title,
    required this.items,
    required this.onSelected,
  });

  @override
  State<_SearchDialog<T>> createState() => _SearchDialogState<T>();
}

class _SearchDialogState<T> extends State<_SearchDialog<T>> {
  late TextEditingController _searchController;
  late List<SearchableDropdownItem<T>> _filteredItems;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredItems = widget.items;
    _searchController.addListener(_filterItems);
  }

  void _filterItems() {
    setState(() {
      _filteredItems = widget.items
          .where(
            (item) => item.label.toLowerCase().contains(
              _searchController.text.toLowerCase(),
            ),
          )
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      title: Text('Select ${widget.title}'),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  final item = _filteredItems[index];
                  return ListTile(
                    title: Text(item.label),
                    onTap: () => widget.onSelected(item.value),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
