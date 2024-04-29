import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Function(String) onChanged;

  const TextFieldWidget({
    super.key,
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
    return TextFormField(
      validator: (value)  {
        if(value!.isEmpty) {
            return "Please enter ${widget.hintText.toLowerCase()}!";
        }

        return null;
      },
      controller: widget.controller,
      obscureText: widget.obscureText ? _obscureText : false,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
            width: 0.5
          ),
      
        ),

        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
            width: 1
          ),
      
        ),

        errorBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(
            color: Colors.red,
            width: 0.8
          ),
        ),

        focusedErrorBorder:OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(
            color: Colors.red,
            width: 0.8
          ),
        ),
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

