import 'package:doctor_app/src/core/extensions/build_context_extensions.dart';
import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class KTextFormField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final FormFieldValidator? validator;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool obscureText;
  final bool filled;
  final int? maxLine;
  final int? minLine;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final bool readOnly;
  const KTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.onTap,
    this.validator,
    required this.controller,
    this.obscureText = false,
    this.filled = false,
    this.readOnly = false,
    this.maxLine = 1,
    this.minLine,
    this.title,
    this.focusNode,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 7),
        TextFormField(
          onTap: onTap,
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          focusNode: focusNode,
          minLines: minLine,
          readOnly: readOnly,
          textAlign: textAlign,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          style: context.appTextTheme.titleSmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decorationColor: Colors.black,
          ),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hintText ?? '',
            filled: filled,
            fillColor: kWhite,
            hintStyle: context.appTextTheme.bodySmall,
            isDense: true,
            focusedBorder: _outlineInputBorder(),
            enabledBorder: _outlineInputBorder(),
            prefixIcon: prefixIcon
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
        color: kBorderColor,
      ),
    );
  }
}
