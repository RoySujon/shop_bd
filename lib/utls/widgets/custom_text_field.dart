import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const.dart';

class CTF extends StatelessWidget {
  const CTF({
    Key? key,
    required this.controller,
    required this.hint,
    this.icon = Icons.abc,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textInputAction: TextInputAction.continueAction,
      // autocorrect: true,
      // smartDashesType: SmartDashesType.enabled,

      cursorColor: kMainColor,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        // border: InputBorder.none,
        hintText: hint.toString(),
        hintStyle: GoogleFonts.nunito(color: Colors.black45),
        // fillColor: Colors.black12,
        // filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Icon(icon, color: kMainColor),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1, color: Colors.green.shade100)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 1, color: kMainColor),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1, color: Colors.redAccent)),
      ),
    );
  }
}

class CTFP extends StatefulWidget {
  const CTFP({
    Key? key,
    required this.controller,
    required this.hint,
    this.icon = Icons.abc,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final IconData icon;

  @override
  State<CTFP> createState() => _CTFPState();
}

class _CTFPState extends State<CTFP> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.deepPurple,
      obscureText: showPass,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hint.toString(),
        hintStyle: GoogleFonts.nunito(color: Colors.black45),
        // fillColor: Colors.black12,
        // filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Icon(
            widget.icon,
            color: Colors.deepPurple.shade100,
          ),
        ),

        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: () {
              setState(() {
                showPass = !showPass;
              });
            },
            child: Icon(
                showPass == true ? Icons.visibility : Icons.visibility_off,
                color: Colors.deepPurple.shade100),
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1, color: Colors.green.shade100)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 1, color: Colors.deepPurple),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 1, color: Colors.redAccent)),
      ),
    );
  }
}
