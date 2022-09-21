import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({
    super.key,
    required this.title,
    this.actionText = "see all",
    this.onActionTap,
  });

  final String title;
  final String actionText;
  final void Function()? onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          actionText,
          style: Theme.of(context).textTheme.button?.copyWith(
                color: Colors.blue,
              ),
        ),
      ],
    );
  }
}
