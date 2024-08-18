import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    this.label,
    this.onTap,
    this.keyboardType,
    this.prefixText,
    this.onChanged,
    this.textAlign,
    this.controller,
    super.key,
  });

  final String? label;
  final String? prefixText;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final TextAlign? textAlign;
  final TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    _focusNode.addListener(
      () {
        setState(() {
          _isFocused = _focusNode.hasFocus;
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        border: Border(
          bottom: _isFocused
              ? BorderSide(
                  color: AppColors.blue,
                  width: AppSizes.value2,
                )
              : BorderSide.none,
        ),
        borderRadius: BorderRadius.circular(
          AppSizes.radius_6,
        ),
      ),
      child: TextField(
        focusNode: _focusNode,
        cursorColor: AppColors.blue,
        cursorErrorColor: AppColors.blue,
        textAlign: widget.textAlign ?? TextAlign.start,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: AppTextStyles.normalRegular.copyWith(
            color: AppColors.greyDavy,
          ),
          prefixText: widget.prefixText,
          prefixStyle: AppTextStyles.normalBold,
          floatingLabelStyle: AppTextStyles.mediumRegular.copyWith(
            color: AppColors.greyDavy,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.greyNeutral,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.greyNeutral,
              // width: 3.0,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.greyNeutral,
            ),
          ),
        ),
        keyboardType: widget.keyboardType,
        onTap: () {
          if (!_isFocused) {
            setState(() {
              _isFocused = true;
              _focusNode.requestFocus();
            });
          }
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
        onChanged: widget.onChanged,
      ),
    );
  }
}
