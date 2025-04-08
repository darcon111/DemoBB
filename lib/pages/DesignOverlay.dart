import 'package:flutter/material.dart';

class DesignOverlay extends StatelessWidget {
  final Widget child;
  final List<Widget> children;
  final bool enabled;

  const DesignOverlay({
    super.key,
    required this.child,
    this.children = const [],
    this.enabled = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    return Stack(
      children: [
        child,
        ...children,
      ],
    );
  }
}

class DesignBox extends StatelessWidget {
  final double width;
  final double height;
  final String? label;

  const DesignBox({
    super.key,
    required this.width,
    required this.height,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 1),
        color: Colors.red.withOpacity(0.1),
      ),
      child: label != null
          ? Center(
        child: Text(
          label!,
          style: TextStyle(
            fontSize: 10,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
          : null,
    );
  }
}
