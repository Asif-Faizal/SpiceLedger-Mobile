import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/snackbars.dart';
import '../../domain/entities/merchant_entity.dart';
import '../bloc/merchant_details_bloc.dart';
import '../bloc/merchant_details_event.dart';
import '../bloc/merchant_details_state.dart';

class MerchantDetailsPage extends StatelessWidget {
  const MerchantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<MerchantDetailsBloc>();
        bloc.add(const MerchantDetailsEvent.fetchRequested());
        return bloc;
      },
      child: const _MerchantDetailsView(),
    );
  }
}

class _MerchantDetailsView extends StatelessWidget {
  const _MerchantDetailsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchant Details'),
        actions: [
          BlocBuilder<MerchantDetailsBloc, MerchantDetailsState>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (details) => IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => _showEditBottomSheet(context, details),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<MerchantDetailsBloc, MerchantDetailsState>(
        listener: (context, state) {
          state.maybeWhen(
            failure: (message) => showErrorSnackbar(context, message),
            success: (_) {
              // Note: snackbar specifically for updates is handled in the bottom sheet listener
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            noDetails: () => _buildNoDetailsView(context),
            success: (details) => _buildDetailsView(context, details),
            saveLoading: (currentDetails) => currentDetails != null
                ? _buildDetailsView(context, currentDetails)
                : const Center(child: CircularProgressIndicator()),
            failure: (message) => _buildErrorView(context, message),
          );
        },
      ),
    );
  }

  Widget _buildNoDetailsView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.info_outline,
            size: 64,
            color: AppColors.neutralGray,
          ),
          const SizedBox(height: 16),
          const Text(
            'No merchant details found',
            style: TextStyle(fontSize: 18, color: AppColors.neutralGray),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => _showEditBottomSheet(context, null),
            child: const Text('ADD MERCHANT DETAILS'),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsView(BuildContext context, MerchantEntity details) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoCard(
            context,
            title: 'Contact Information',
            items: [
              _InfoItem(label: 'Phone Number', value: details.phoneNumber),
            ],
          ),
          const SizedBox(height: 16),
          _buildInfoCard(
            context,
            title: 'Address Details',
            items: [
              _InfoItem(label: 'Address', value: details.address),
              _InfoItem(label: 'City', value: details.city),
              _InfoItem(label: 'State', value: details.state),
              _InfoItem(label: 'Pincode', value: details.pincode),
            ],
          ),
          const SizedBox(height: 32),
          Text(
            'Merchant ID: ${details.id}',
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: AppColors.neutralGray),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required List<_InfoItem> items,
  }) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.lightGray),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.blueAccent,
              ),
            ),
            const Divider(height: 24),
            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        item.label,
                        style: const TextStyle(
                          color: AppColors.neutralGray,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item.value,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorView(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<MerchantDetailsBloc>().add(
                const MerchantDetailsEvent.fetchRequested(),
              );
            },
            child: const Text('RETRY'),
          ),
        ],
      ),
    );
  }

  void _showEditBottomSheet(BuildContext context, MerchantEntity? details) {
    final phoneController = TextEditingController(text: details?.phoneNumber);
    final addressController = TextEditingController(text: details?.address);
    final cityController = TextEditingController(text: details?.city);
    final stateController = TextEditingController(text: details?.state);
    final pincodeController = TextEditingController(text: details?.pincode);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      builder: (_) {
        return BlocProvider.value(
          value: context.read<MerchantDetailsBloc>(),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      details == null
                          ? 'Add Merchant Details'
                          : 'Edit Merchant Details',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: addressController,
                      decoration: const InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: cityController,
                            decoration: const InputDecoration(
                              labelText: 'City',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            controller: stateController,
                            decoration: const InputDecoration(
                              labelText: 'State',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: pincodeController,
                      decoration: const InputDecoration(
                        labelText: 'Pincode',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 32),
                    BlocConsumer<MerchantDetailsBloc, MerchantDetailsState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (_) {
                            showSuccessSnackbar(
                              context,
                              'Merchant details saved successfully',
                            );
                            Navigator.pop(context);
                          },
                          failure: (message) =>
                              showErrorSnackbar(context, message),
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        final isLoading = state.maybeWhen(
                          saveLoading: (_) => true,
                          orElse: () => false,
                        );

                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () {
                                    context.read<MerchantDetailsBloc>().add(
                                      MerchantDetailsEvent.saveRequested(
                                        MerchantEntity(
                                          id: details?.id ?? '',
                                          accountId: details?.accountId ?? '',
                                          phoneNumber: phoneController.text,
                                          address: addressController.text,
                                          city: cityController.text,
                                          state: stateController.text,
                                          pincode: pincodeController.text,
                                        ),
                                      ),
                                    );
                                  },
                            child: Text(
                              isLoading ? 'SAVING...' : 'SAVE DETAILS',
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _InfoItem {
  final String label;
  final String value;
  _InfoItem({required this.label, required this.value});
}
