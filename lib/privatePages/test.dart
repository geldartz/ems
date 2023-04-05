import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/contants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage(name: 'TestRouter')
class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Center(
            child: Text('Test Page', style: GoogleFonts.poppins(fontSize: 20, color: textblack)),
          ),
        ),
      ),
    );
  }
}
