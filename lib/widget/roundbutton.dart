import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.02, -1.00),
                end: Alignment(0.02, 1),
                colors: [Color(0xF7B744ED), Color.fromARGB(0, 0, 9, 102)],
              ),
              borderRadius: BorderRadius.circular(10)),
          child: loading
              ? CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
        ));
  }
}
