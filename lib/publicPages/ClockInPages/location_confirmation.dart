import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage(name: 'LocationConfirmRouter')
class LocationConfirm extends StatefulWidget {
  const LocationConfirm({super.key});

  @override
  State<LocationConfirm> createState() => _LocationConfirmState();
}

class _LocationConfirmState extends State<LocationConfirm> {
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
                    )),
                Positioned(
                  bottom: 0,
                  height: size.height * .85,
                  width: size.width,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Designated Office : GlobalSpaces Trevi",
                            style: GoogleFonts.overpass(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF2465C7))),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 95),
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "You are about to ",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      color: const Color(0xFF696969))),
                              TextSpan(
                                  text: "clock in ",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF696969))),
                              TextSpan(
                                  text: "at ",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      color: const Color(0xFF696969))),
                              TextSpan(
                                  text: "GlobalSpaces Trevi",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF2465C7))),
                            ]),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/clockin_success.png'),
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                              "You are 0.1km away in your designated office",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF274D85))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text("View map here",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 10,
                                  color: const Color(0xFF696969))),
                        ),
                        Text("By clicking submit you confirm your location",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 10, color: const Color(0xFF696969))),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.router.back();
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFB3B3B3)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: Text("Close",
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.router.push(const HealthConfirm());
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF2465C7)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Text("Submit",
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                            )
                          ]
                              .map((widget) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 10),
                                    child: widget,
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
