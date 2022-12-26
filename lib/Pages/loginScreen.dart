
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Resigter.dart';
import 'package:page_transition/page_transition.dart';

import '../custom widgets/Text_Field.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.topRight,
          //         end: Alignment.bottomLeft,
          //         colors: [
          //           // Color(0xFF0147872),
          //           // Color(0xFFA0EACF),
          //           Colors.green,
          //           Colors.blue,
          //
          //         ],
          //       )
          //   ),
          //
          // ),
          SafeArea(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Image.asset("assets/background.png",fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height/12),
                  WelcomingText(),
                  SizedBox(height: size.height/12),
                  StringTextField("User Name","Enter Your Name"),
                  SizedBox(height: size.height/25),
                  StringTextField("Password","Enter your Password"),
                  SizedBox(height: size.height/25),
                  SignInButton(size),
                  SizedBox(height: size.height/25),
                  Row(
                    children: [

                      Expanded(
                          child: Divider(thickness: 1,color: Colors.grey,)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(

                          child: Center(
                            child: Text(
                              "Or continue with",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.w100,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: size.height/25),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaLogo("assets/facebook.png", size),
                      SizedBox(width: size.width/11),
                      SocialMediaLogo("assets/linkedIn.png", size),
                      SizedBox(width: size.width/11),
                      SocialMediaLogo("assets/google.png", size),
                    ],
                  ),
                  SizedBox(height: size.height/25),
                  RegistrePage(size, context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget SignInButton(Size size){

  return Container(
    height: size.height/12,
    width: size.width/1.2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.green.shade100,
    ),
    child: Center(
      child: Text(
        "Sign In",
        textAlign: TextAlign.center,
        style: GoogleFonts.alata(
          fontWeight: FontWeight.w100,
          color: Colors.black,
          fontSize: 22,
        ),
      ),
    ),
  );
}


Widget SocialMediaLogo(String string,Size size) {
  return Container(
    height: size.height / 18,
    width: size.height / 18,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.black.withOpacity(0.1),
    ),
    child: Image.asset(string),
  );
}





Widget WelcomingText(){
  return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                "Welcome to\nOussema's Store",
                textAlign: TextAlign.center,
                style: GoogleFonts.alata(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              child: Text(
                "Welcome back you've been missed!",
                textAlign: TextAlign.center,
                style: GoogleFonts.alata(
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      );
}

Widget RegistrePage(Size size,BuildContext context){
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyRegister()),
      );
    },
    child: Center(
        child: Text(
          "Create new account",

          textAlign: TextAlign.center,
          style: GoogleFonts.alata(
            fontWeight: FontWeight.w100,
            color: Colors.blue,
            decoration: TextDecoration.underline,
            fontSize: 15,
          ),
        ),
      ),
  );

}