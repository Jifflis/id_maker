import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/style.dart';


typedef TextValidator = List<String> Function(String text);

class InputText extends StatefulWidget {
  InputText({
    this.suffixIcon,
    this.labelText,
    this.boxDecoration,
    this.padding,
    TextEditingController? textController,
    this.keyboardType,
    String? defaultValue,
    this.onChanged,
    super.key,
    this.inputFormatters,
    this.textValidator,
    this.errorAlignment = Alignment.centerLeft,
    this.obscureText = false,
    this.error,
    this.autoFocus = false,
  }) : textEditingController = textController ?? TextEditingController(text: defaultValue);

  final String? labelText;
  final Widget? suffixIcon;
  final BoxDecoration? boxDecoration;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final TextEditingController? textEditingController;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final List<String>? error;
  final TextValidator? textValidator;
  final AlignmentGeometry errorAlignment;
  final bool obscureText;
  final bool autoFocus;

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  List<String> _error = [];
  bool _obscureText = false;

  void _initError() {
    _error = widget.error ?? widget.textValidator?.call('') ?? [];
  }

  @override
  void didUpdateWidget(covariant InputText oldWidget) {
    _initError();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _obscureText = widget.obscureText;
    _initError();
    super.initState();
  }

  @override
  void dispose() {
    widget.textEditingController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 8, vertical: Style.spacing6),
          decoration: widget.boxDecoration ??
              const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey, // Specify the color of the border
                    width: 2.0, // Specify the width of the border
                  ),
                ),
              ),
          child: Center(
            child: TextField(
              autofocus: widget.autoFocus,
              controller: widget.textEditingController,
              style: const TextStyle(color: Style.colorTextPrimary),
              keyboardType: widget.keyboardType,
              onChanged: (text) {
                widget.onChanged?.call(text);

                var error = widget.textValidator?.call(text);

                if (error != _error) {
                  setState(() {
                    _error = error ?? [];
                  });
                }
              },
              obscureText: !_obscureText ? false : widget.obscureText,
              inputFormatters: widget.inputFormatters,
              decoration: InputDecoration(
                isDense: true,
                suffixIcon: widget.obscureText
                    ? _obscureText
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = false;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 8),
                              // child: SvgPicture.asset(
                              //   Assets.iconsHidePassword,
                              //   color: Style.colorWhite,
                              // ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = true;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Style.colorWhite,
                              ),
                            ),
                          )
                    : widget.suffixIcon,
                suffixIconConstraints:
                    BoxConstraints(maxWidth: Style.spacing30, maxHeight: Style.spacing24),
                labelText: widget.labelText,
                border: InputBorder.none,
                // H// ide the default border of TextField
                labelStyle: const TextStyle(
                  color: Style.colorBlack6D,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ),
        for (final error in _error) ...[
          SizedBox(height: Style.spacing8),
          Align(
            alignment: widget.errorAlignment,
            child: Text(
              error,
              style: Style.finePrint.copyWith(
                color: Colors.redAccent,
                fontStyle: FontStyle.italic,
              ),
            ),
          )
        ]
      ],
    );
  }
}
