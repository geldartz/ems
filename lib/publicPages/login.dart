import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/providers/AuthProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'components/floating_input.dart';

@RoutePage(name: 'LoginRouter')
class LoginPage extends StatefulWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const LoginPage({super.key, this.onLoginResult});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<AuthProvider>(builder: (context, provider, child) {
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
                    height: size.height * .50,
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF2465C7).withOpacity(.90),
                          const Color(0xFF2465C7).withOpacity(.17),
                        ],
                      )),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      width: size.width,
                      child: Text(
                        "Employee Management System",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.overpass(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.white),
                      )),
                  Positioned(
                    bottom: 0,
                    height: size.height * .55,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              'Welcome',
                              style: GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.w600, color: const Color(0xFF2465C7)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                            child: Text(
                              'Login to continue',
                              style: GoogleFonts.poppins(fontSize: 13, color: const Color(0xFF888888)),
                            ),
                          ),
                          FloatingInput(
                            isPassword: false,
                            label: "Email",
                            icon: Icons.email_outlined,
                            textController: emailController,
                          ),
                          FloatingInput(
                            isPassword: true,
                            icon: Icons.visibility,
                            label: "Password",
                            textController: passwordController,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                            child: ElevatedButton(
                              onPressed: () async {
                                var data = {"email": emailController.text, "password": passwordController.text};

                                provider.login(context, data, widget.onLoginResult);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2465C7),
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(provider.isOnLoading ? "Logging in..." : "Login",
                                      style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'By logging in, you agree to our Privacy Policy and Terms of Use.',
                            style: GoogleFonts.poppins(fontSize: 10, color: const Color(0xFF888888)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      width: size.width,
                      height: 300,
                      child: const Image(
                        image: AssetImage('assets/images/ems.png'),
                        fit: BoxFit.cover,
                      )),
                ]))),
      );
    });
  }
}
