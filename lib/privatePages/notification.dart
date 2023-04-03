import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage(name: 'NotificationRouter')
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        'Notification Page',
        style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
      )),
    );
  }
}
