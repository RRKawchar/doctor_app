import 'package:flutter/material.dart';

class KDivider extends StatelessWidget {
  final double? height;
  final double? indent;
  final double? endIndent;
  final double? thickness;
  const KDivider({
    super.key,
    this.height,
    this.indent,
    this.endIndent,
     this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height??10,
      indent:indent??20,
      thickness: thickness??1,
    );
  }
}
