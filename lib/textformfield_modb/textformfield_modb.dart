import 'package:flutter/material.dart';

class TextFormFieldModb extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final Function(String? text)? onSaved;
  final Function(String text)? onChanged;
  final Function()? onEditingComplete;
  final Color? fillColor;
  final Color? shadowColor;
  final Color? cursorColor;
  final TextStyle? textStyle;
  final TextStyle? suffixStyle;
  final TextStyle? labelStyle;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final double? borderRadius;
  final String? suffixText;
  final String? labelText;

  const TextFormFieldModb({
    Key? key,
    this.controller,
    this.textInputAction,
    this.textInputType,
    this.onSaved,
    this.onChanged,
    this.onEditingComplete,
    this.fillColor,
    this.shadowColor,
    this.cursorColor,
    this.textStyle,
    this.suffixStyle,
    this.labelStyle,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.borderRadius,
    this.suffixText,
    this.labelText,
  }) : super(key: key);

  @override
  State<TextFormFieldModb> createState() => _TextFormFieldModbState();
}

class _TextFormFieldModbState extends State<TextFormFieldModb> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: widget.shadowBlurRadius ?? 15,
                color: widget.shadowColor ??
                    const Color(0xffd2d2d2).withOpacity(0.5),
                spreadRadius: widget.shadowSpreadRadius ?? 3,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: TextFormField(
            controller: widget.controller,
            textInputAction: widget.textInputAction,
            keyboardType: widget.textInputType ?? TextInputType.text,
            onSaved: widget.onSaved,
            onChanged: widget.onChanged,
            onEditingComplete: widget.onEditingComplete,
            cursorColor: widget.cursorColor ?? Colors.grey,
            style: widget.textStyle ?? const TextStyle(color: Colors.black),
            decoration: _buildInputDecoration(),
          ),
        ),
      ],
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: widget.fillColor ?? Colors.white,
      suffixText: widget.suffixText ?? '',
      suffixStyle: widget.suffixStyle,
      labelText: widget.labelText ?? '',
      labelStyle: widget.labelStyle,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 15),
        borderSide: BorderSide.none,
      ),
    );
  }
}
