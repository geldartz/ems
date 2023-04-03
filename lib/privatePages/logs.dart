import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage(name: 'LogsRouter')
class LogsPage extends StatefulWidget {
  const LogsPage({super.key});

  @override
  State<LogsPage> createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/tiles-bg.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Center(
          child: Text(
        'Attendance Logs',
        style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
      )),
    );
  }
}
