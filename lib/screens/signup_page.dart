import 'package:flutter/material.dart';
import 'package:my_recipe_app/components/rounded_button.dart';
import 'package:my_recipe_app/constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.fromLTRB(20, 89, 20, 50),
            constraints: BoxConstraints.expand(),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Welcome to',
                      style: kFirstStyle,
                    ),
                    Text(
                      'Recipe Book',
                      style: kSecondStyle,
                    ),
                    SizedBox(
                      height: 73.5,
                    ),
                    TextFormField(
                      decoration: kInputDecoration.copyWith(hintText: 'Name'),
                      onChanged: (value) => {print(value)},
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration: kInputDecoration.copyWith(hintText: 'Email'),
                      onChanged: (value) => {print(value)},
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration:
                          kInputDecoration.copyWith(hintText: 'Password'),
                      onChanged: (value) => {print(value)},
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    GestureDetector(
                      child: Text(
                        'Already have an account?',
                        style: kForgotStyle,
                        textAlign: TextAlign.right,
                      ),
                      onTap: () {
                        print('Already have an account');
                      },
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Sign Up');
                      },
                      child: RoundedButton(
                        displayText: 'Sign Up',
                        bgColor: Colors.white,
                        textColor: Color.fromRGBO(52, 168, 83, 0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 125.0,
              right: 20.0,
              child: Container(
                height: 52.0,
                width: 52.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/logo.png"),
                  fit: BoxFit.contain,
                )),
              ))
        ],
      ),
    );
  }
}
