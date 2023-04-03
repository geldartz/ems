import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

@RoutePage(name: 'ClockInRouter')
class CheckIn extends StatefulWidget {
  const CheckIn({super.key});

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 55),
              child: Container(
                width: size.width,
                color: Colors.white.withOpacity(0.7),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Hello Cindy!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2465C7)),
                  ),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(child: Lottie.asset('assets/images/ClockIn.json')),
                Positioned(
                  top: 115,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF4FBF5A),
                    ),
                    onPressed: () {
                      context.router.push(const LocationConfirmRouter());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "CLOCK IN",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.pragatiNarrow(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: size.width,
                color: Colors.white,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      "7:00 AM",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2465C7)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Thursday | March 14, 2023",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14, color: const Color(0xFF2465C7)),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              width: size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context.router.push(const LocationConfirmRouter());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text("Latest Log",
                          style: GoogleFonts.overpass(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF274D85))),
                    ),
                  ),
                  Text("Clock Out",
                      style: GoogleFonts.overpass(
                          fontSize: 16, color: const Color(0xFF274D85))),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const WidgetSpan(
                            child: Icon(Icons.access_time_filled),
                          ),
                          TextSpan(
                            style: GoogleFonts.overpass(
                                fontSize: 18, color: const Color(0xFF274D85)),
                            text: '03/13/2021-',
                          ),
                          TextSpan(
                            style: GoogleFonts.overpass(
                                fontSize: 18, color: const Color(0xFF696969)),
                            text: '9:00 PM ',
                          ),
                          TextSpan(
                            style: GoogleFonts.overpass(
                                fontSize: 14, color: const Color(0xFF696969)),
                            text: ' Within Vicinity',
                          )
                        ],
                      ),
                    ),
                  ),
                ]
                    .map((widget) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: widget,
                        ))
                    .toList(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
