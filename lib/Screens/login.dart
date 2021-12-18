import 'package:flutter/material.dart';
import 'package:gearin/Screens/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                  child: Image.asset(
                    'assets/images/Gear-in_letter.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Username',
                      labelStyle:
                          GoogleFonts.poppins(fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF303030),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF303030),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                    ),
                    style: GoogleFonts.poppins(fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: textController2,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Password',
                      labelStyle:
                          GoogleFonts.poppins(fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF303030),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF303030),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.vpn_key,
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: GoogleFonts.poppins(fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeWidget(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFF5F5F5),
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(130, 40)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2CA8E1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: const BorderSide(
                                      width: 1,
                                      color: Colors.transparent,
                                    )))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpWidget(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign up | Register',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF2CA8E1),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
