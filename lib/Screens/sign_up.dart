import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late String dropDownValue;
  late TextEditingController textController5;
  late TextEditingController textController1;
  late TextEditingController textController2;
  late bool passwordVisibility1;
  late TextEditingController textController3;
  late bool passwordVisibility2;
  late TextEditingController textController4;
  late final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility1 = false;
    textController3 = TextEditingController();
    passwordVisibility2 = false;
    textController4 = TextEditingController();
    textController5 = TextEditingController();
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
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Image.asset(
                    'assets/images/Gear-in_letter.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 40, 30, 0),
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Username',
                      labelStyle: GoogleFonts.poppins(),
                      hintText: 'Enter Username',
                      hintStyle: GoogleFonts.poppins(),
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
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: textController2,
                    obscureText: !passwordVisibility1,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Password',
                      labelStyle: GoogleFonts.poppins(),
                      hintText: 'Enter Password',
                      hintStyle: GoogleFonts.poppins(),
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
                          () => passwordVisibility1 = !passwordVisibility1,
                        ),
                        child: Icon(
                          passwordVisibility1
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: textController3,
                    obscureText: !passwordVisibility2,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Confirm Password',
                      labelStyle: GoogleFonts.poppins(),
                      hintText: 'Enter Confirm Password',
                      hintStyle: GoogleFonts.poppins(),
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
                          () => passwordVisibility2 = !passwordVisibility2,
                        ),
                        child: Icon(
                          passwordVisibility2
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: textController4,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Email',
                      labelStyle: GoogleFonts.poppins(),
                      hintText: 'Enter Email',
                      hintStyle: GoogleFonts.poppins(),
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
                        Icons.email,
                      ),
                    ),
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: textController5,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Mobile Number',
                      labelStyle: GoogleFonts.poppins(),
                      hintText: '9XXXXXXX',
                      hintStyle: GoogleFonts.poppins(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF303030),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF303030),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: const Icon(
                        Icons.phone_sharp,
                      ),
                    ),
                    style: GoogleFonts.poppins(),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginWidget(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFF5F5F5),
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(130, 40)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF2CA8E1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                              color: Colors.transparent, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Container(
                    width: 230,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                          child: Text(
                            'Already have an account?',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginWidget(),
                              ),
                            );
                          },
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF2CA8E1),
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
      ),
    );
  }
}
