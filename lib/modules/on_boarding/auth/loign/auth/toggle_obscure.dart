import 'package:flutter/material.dart';

class ObscureTextField extends StatefulWidget {
  final Widget? label;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  ObscureTextField({required this.controller, this.validator, this.label});

  @override
  _ObscureTextFieldState createState() => _ObscureTextFieldState();
}

class _ObscureTextFieldState extends State<ObscureTextField> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: TextFormField(
        obscureText: _obscureText,
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
          label: widget.label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          suffix: SizedBox(
            height: 25,
            width: 35,
            child: IconButton(
              onPressed: _toggleObscureText,
              icon: Icon(
                _obscureText ? Icons.remove_red_eye : Icons.visibility_off,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
