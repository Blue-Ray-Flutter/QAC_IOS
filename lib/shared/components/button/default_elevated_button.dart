import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final OutlinedBorder shape;
  final Color? overlayColor;

  const DefaultElevatedButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    required this.shape,
    this.overlayColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.black,
        elevation: 0,
        shape: shape,
      ),
      onPressed: onPressed,
      child: Ink(

        child: InkWell(
          onTap: onPressed,
          splashColor: overlayColor ?? Colors.white10,
          highlightColor: Colors.white,
          child: child,
        ),
      ),
    );
  }
}
