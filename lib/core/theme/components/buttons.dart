import 'package:flutter/material.dart';
import '../app_theme.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool expanded;
  final IconData? trailingIcon;

  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.expanded = true,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        if (trailingIcon != null) ...[
          const SizedBox(width: 8),
          Icon(trailingIcon, size: 18, color: AppColors.white),
        ],
      ],
    );
    return expanded
        ? SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: child))
        : ElevatedButton(onPressed: onPressed, child: child);
  }
}

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool expanded;
  final IconData? trailingIcon;

  const SecondaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.expanded = true,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        if (trailingIcon != null) ...[
          const SizedBox(width: 8),
          Icon(trailingIcon, size: 18, color: AppColors.nearBlack),
        ],
      ],
    );
    return expanded
        ? SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: onPressed, child: child),
          )
        : OutlinedButton(onPressed: onPressed, child: child);
  }
}

class TextLinkButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? trailingIcon;
  final bool expanded;

  const TextLinkButton({
    super.key,
    required this.label,
    this.onPressed,
    this.trailingIcon,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: color)),
        if (trailingIcon != null) ...[
          const SizedBox(width: 8),
          Icon(trailingIcon, size: 18, color: color),
        ],
      ],
    );
    final btn = TextButton(onPressed: onPressed, child: child);
    return expanded ? SizedBox(width: double.infinity, child: btn) : btn;
  }
}
