import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CtextField extends StatefulWidget {
  CtextField(
      {super.key,
      this.onChange,
      this.hintText,
      required this.icon,
      this.obscureText = false});

  Icon? icon;
  String? hintText;
  Function(String)? onChange;
  bool? obscureText;

  @override
  State<CtextField> createState() => _CtextFieldState();
}

class _CtextFieldState extends State<CtextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 370,
      child: TextFormField(
        obscureText: widget.obscureText!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field Is Required';
          }
        },
        onChanged: widget.onChange,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 255, 255, 253),
          filled: true,
          prefixIcon: widget.icon,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 61, 75, 83),
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        ),
      ),
    );
  }
}
