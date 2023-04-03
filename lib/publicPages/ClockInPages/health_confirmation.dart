import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ems/globals/router.gr.dart';

@RoutePage(name: 'HealthConfirm')
class HealthConfirm extends StatefulWidget {
  const HealthConfirm({super.key});

  @override
  State<HealthConfirm> createState() => _HealthConfirmState();
}

class _HealthConfirmState extends State<HealthConfirm> {
  bool isHealthCheck = true;
  bool isFine = false;
  bool isButtonDisable = true;
  final List<bool> isSelected = <bool>[false, false];

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
      child: Stack(children: [
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
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Text("How are you feeling today?",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2465C7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ToggleButtons(
                        direction: Axis.horizontal,
                        onPressed: (int index) {
                          setState(() {
                            for (int i = 0; i < isSelected.length; i++) {
                              (i == index)
                                  ? {
                                      isSelected[i] = true,
                                      isFine = false,
                                      isButtonDisable = true
                                    }
                                  : {
                                      isSelected[i] = false,
                                      isFine = true,
                                      isButtonDisable = false
                                    };
                            }
                          });
                        },
                        isSelected: isSelected,
                        fillColor: Colors.white,
                        borderWidth: 2,
                        selectedBorderColor: const Color(0xFF2465C7),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            child: Column(
                              children: [
                                const Image(
                                  image: AssetImage('assets/images/happy.png'),
                                  width: 40,
                                  height: 40,
                                ),
                                Text("I am perfectly fine",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 9,
                                      color: const Color(0xFF808080),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Column(
                              children: [
                                const Image(
                                  image: AssetImage('assets/images/sad.png'),
                                  width: 40,
                                  height: 40,
                                ),
                                Text("I feel not so good today",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 9,
                                      color: const Color(0xFF808080),
                                    )),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Visibility(
                      visible: isFine,
                      child: Row(
                        children: [
                          Checkbox(
                              value: isHealthCheck,
                              onChanged: (value) {
                                setState(() {
                                  isHealthCheck = value!;
                                });
                              }),
                          Flexible(
                            child: Text(
                                "I hereby affirm that I am in good physical condition and do not suffer from any COVID-19 symptoms which would prevent on reporting physically in my office / work station/ project site.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF696969),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Text("Close",
                              style: GoogleFonts.plusJakartaSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          (isButtonDisable)
                              ? null
                              : context.router
                                  .push(const SuccessClockInRouter());
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              (isButtonDisable)
                                  ? const Color(0xFFDADADA)
                                  : const Color(0xFF4FBF5A)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text("Clock In",
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
            )),
      ]),
    )));
  }
}
