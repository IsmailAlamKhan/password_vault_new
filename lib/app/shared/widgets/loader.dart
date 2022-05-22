import 'package:flutter/material.dart';

class LoaderOverlay extends StatelessWidget {
  const LoaderOverlay({
    super.key,
    required this.show,
    required this.child,
  });

  final bool show;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (show) ...[
          ModalBarrier(dismissible: false, color: Colors.grey.withOpacity(.4)),
          const Center(child: CircularProgressIndicator()),
        ],
      ],
    );
  }
}
