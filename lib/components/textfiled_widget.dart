import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Function(String) onChanged;

  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    required this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText ? _obscureText : false,
      style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
      onChanged: (value) => widget.onChanged(value),
    );
  }
}

