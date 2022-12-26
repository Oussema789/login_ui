import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../Pages/loginScreen.dart';

Widget NavigationButton(Size size,BuildContext context,String text,Color color)=> InkWell(
    onTap: () {
      Navigator.push(
        context,
        PageTransition(
          curve: Curves.linear,
          type: PageTransitionType.bottomToTop,
          child: const LoginScreen(),
        ),
      );
    },
    child: Container(
      height: size.height/12,
      width: size.width/1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.alata(
            fontWeight: FontWeight.w100,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
    ),
  );