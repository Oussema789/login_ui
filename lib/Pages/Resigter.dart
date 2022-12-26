import 'package:flutter/material.dart';
import 'package:login_ui/custom%20widgets/Text_Field.dart';
import '../custom widgets/Button.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(

        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(children: [
            Container(

              padding: const EdgeInsets.only(left: 35, top: 80),
              child: const Text(
                "Create\nAccount",
                style: TextStyle(color: Colors.black, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: 35,
                    left: 35,
                    top: MediaQuery.of(context).size.height * 0.27),
                child: Column(
                    children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      
                      Expanded(child: StringTextField("First Name","First Name")),
                      Expanded(child: StringTextField("Last Name","Last Name")),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  StringTextField("Email","Enter your Email"),
                  const SizedBox(
                    height: 30,
                  ),
                  StringTextField("Password","Password"),

                  const SizedBox(
                    height: 40,
                  ),
                  NavigationButton(size, context, "Sign Up",Colors.green),
                  const SizedBox(
                    height: 40,
                  ),

                      Info("People who use our service may have uploaded your contact information to Facebook. ","Learn more."),
                      SizedBox(
                        height: size.height*0.01,
                      ),

                      RichText(
                        text: const TextSpan(
                            text: 'By clicking Sign Up, you agree to our ',
                            style: TextStyle(

                              fontSize: 12,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                'Terms, Privacy Policy ',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text:
                                'and ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                'Cookies Policy. ',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),

                              TextSpan(
                                text:
                                'You may receive SMS Notifications from us and can opt out any time.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ]
                        ),

                      ),


                    ]),
              ),
            ),
          ]),
        ),
      );
  }
}







Widget Info(String txt1, String txt2){
  return RichText(
    text: const TextSpan(
        text: 'People who use our service may have uploaded your contact information to Facebook. ',
        style: TextStyle(

          fontSize: 12,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text:
            'Learn more.',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ]
    ),

  );
}