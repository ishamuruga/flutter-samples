import 'package:flutter/material.dart';
import 'package:flutter_application_amz_clone/common/widgets/custom_button.dart';
import 'package:flutter_application_amz_clone/common/widgets/custom_textfield.dart';
import 'package:flutter_application_amz_clone/constants/global_variabes.dart';
import 'package:flutter_application_amz_clone/features/auth/config/auth_constants.dart';
import 'package:flutter_application_amz_clone/features/auth/services/auth_api_service.dart';

// enum Auth {
//   signin,
//   signup,
// }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  AuthNamedConstants _auth = AuthNamedConstants.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  AuthService authService = AuthService();
  //Auth _auth = Auth.signup;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      name: _nameController.text,
    );
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Shopping Cart',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            ListTile(
              tileColor: _auth == AuthNamedConstants.signup
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundCOlor,
              title: Text(
                'Create Account..',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: AuthNamedConstants.signup,
                groupValue: _auth,
                onChanged: (AuthNamedConstants? value) {
                  setState(() {
                    _auth = value!;
                  });
                },
              ),
            ),
            if (_auth == AuthNamedConstants.signup)
              Form(
                key: _signUpFormKey,
                child: Container(
                  padding: EdgeInsets.all(5),
                  color: GlobalVariables.backgroundColor,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _nameController,
                        hintText: 'Name',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'Sign Up',
                        pressed: () {
                          if (_signUpFormKey.currentState!.validate()) {
                            print("form is correct");

                            signUpUser();
                          }
                          //signUpUser();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ListTile(
              tileColor: _auth == AuthNamedConstants.signin
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundCOlor,
              title: Text(
                'Sign-In Account..',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: AuthNamedConstants.signin,
                groupValue: _auth,
                onChanged: (AuthNamedConstants? value) {
                  setState(() {
                    _auth = value!;
                  });
                },
              ),
            ),
            if (_auth == AuthNamedConstants.signin)
              Form(
                key: _signInFormKey,
                child: Container(
                  padding: EdgeInsets.all(5),
                  color: GlobalVariables.backgroundColor,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'Sign In',
                        pressed: () {
                          if (_signInFormKey.currentState!.validate()) {
                            signInUser();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
