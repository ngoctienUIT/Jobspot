import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobspot/src/core/constants/constants.dart';

class CustomTitleTextInput extends StatelessWidget {
  const CustomTitleTextInput({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.isPassword = false,
    this.title,
    this.onHidePassword,
    this.titleFontSize,
    this.maxLines = 1,
    this.isSearch = false,
    this.textInputAction,
    this.onClear,
    this.onTap,
    this.focusNode,
    this.validator,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String? title;
  final double? titleFontSize;
  final String? hintText;
  final bool obscureText;
  final bool isPassword;
  final bool isSearch;
  final int maxLines;
  final TextInputAction? textInputAction;
  final Function(bool isHide)? onHidePassword;
  final VoidCallback? onClear;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(
            title!,
            style: TextStyle(
              color: AppColors.nightBlue,
              fontWeight: FontWeight.w700,
              fontSize: titleFontSize,
            ),
          ),
        if (title != null) const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(18, 153, 171, 198),
                blurRadius: 62,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            keyboardType: keyboardType,
            focusNode: focusNode,
            onTap: onTap,
            readOnly: onTap != null,
            controller: controller,
            obscureText: obscureText,
            maxLines: maxLines,
            textInputAction: textInputAction,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppDimens.smallPadding,
                vertical: 15,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: TextStyle(
                color: AppColors.spunPearl,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              prefixIcon: isSearch
                  ? Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: AppColors.spunPearl,
                      size: 20,
                    )
                  : null,
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () => onHidePassword!(!obscureText),
                      icon: Icon(obscureText
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash),
                    )
                  : isSearch && controller.text.isNotEmpty
                      ? IconButton(
                          onPressed: () => controller.clear(), //onClear
                          icon: const Icon(FontAwesomeIcons.xmark),
                        )
                      : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              ),
            ),
          ),
        ),
      ],
    );
  }
}