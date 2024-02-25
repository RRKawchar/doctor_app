import 'package:doctor_app/src/core/extensions/build_context_extensions.dart';
import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class KButton extends StatelessWidget {

  final VoidCallback onTap;
  final Widget child;
  final double? height;
  final double? width;
  final double? borderRadius;

  const KButton({
    super.key,
    required this.onTap,
    required this.child,
    this.height,
    this.width,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height ?? 45,
      minWidth: width ?? context.screenWidth,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      onPressed: onTap,
      color: kPrimaryColor,
      textColor: kWhite,
      child: child,
    );
  }
}
