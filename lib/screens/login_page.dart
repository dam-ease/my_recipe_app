import 'package:flutter/material.dart';
import 'package:my_recipe_app/components/rounded_button.dart';
import 'package:my_recipe_app/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        'Forgot Password?',
                        style: kForgotStyle,
                        textAlign: TextAlign.right,
                      ),
                      onTap: () {
                        print('User has forgotten password');
                      },
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Login in');
                      },
                      child: RoundedButton(
                        displayText: 'Login',
                        bgColor: Colors.white,
                        textColor: Color.fromRGBO(52, 168, 83, 0.8),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('or',
                        style: kForgotStyle, textAlign: TextAlign.center),
                    SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Create an account');
                      },
                      child: RoundedButton(
                        displayText: 'Create an account',
                        bgColor: Color.fromRGBO(52, 168, 83, 0.8),
                        textColor: Colors.white,
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
