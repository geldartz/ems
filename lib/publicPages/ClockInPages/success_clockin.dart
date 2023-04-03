import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage(name: 'SuccessClockInRouter')
class SuccessClockIn extends StatefulWidget {
  const SuccessClockIn({super.key});

  @override
  State<SuccessClockIn> createState() => _SuccessClockInState();
}

class _SuccessClockInState extends State<SuccessClockIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/tiles-bg.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                height: size.height * .30,
                width: size.width,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        const Color(0xFF2465C7).withOpacity(.90),
                        const Color(0xFF2465C7).withOpacity(.17),
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60.0),
                    child: Text(
                      "Employee Management System",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.overpass(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                height: size.height * .85,
                width: size.width,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              child: Container(
                                height: size.height * 0.10,
                                width: size.width,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF2465C7),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            const Positioned(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Successful clock in",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF696969)),
                      ),
                      Text(
                        "March 14, 2023, 7:00 AM",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF696969)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            context.router.back();
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF2465C7)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100),
                            child: Text("Close",
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
