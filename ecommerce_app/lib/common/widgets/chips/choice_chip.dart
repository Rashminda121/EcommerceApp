import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: const TCircularContainer(
        width: 50,
        height: 50,
        backgroundColor: Colors.green,
      ),
    );
  }
}