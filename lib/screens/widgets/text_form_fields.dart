import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logistics_landing_page/shared/app_colours.dart';

class CustomTextFormField extends ConsumerStatefulWidget {
  final bool isForPassword;
  final String hint;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Icon? prefixIcon;
  final Widget? prefixSVG;
  final Icon? suffixIcon;
  final bool? isPasswordVisible;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.isForPassword,
    required this.hint,
    required this.controller,
    this.isPasswordVisible,
    this.keyboardType,
    this.prefixIcon,
    this.prefixSVG,
    this.suffixIcon,
    this.validator,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends ConsumerState<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPasswordVisible ?? false,
      keyboardAppearance: Brightness.dark,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          color: AppColours.appGrey500,
        ),
        errorStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
        ),
        prefixIcon: widget.prefixSVG ?? widget.prefixIcon,
        suffixIcon: widget.suffixIcon,

        //! BORDERS
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.2,
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.6,
          ),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.6,
          ),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.6,
          ),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
      ),
      validator: widget.validator,
    );
  }
}
