import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage(name: 'AccountRouter')
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        'Account Page',
        style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
      )),
    );
  }
}
