import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../globals/providers/AuthProvider.dart';

@RoutePage(name: 'HomepageRouter')
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<AuthProvider>(context, listen: false).getuserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, child) {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/tiles-bg.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Center(
            child: Text(
          'Home Page',
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
        )),
      );
    });
  }
}
