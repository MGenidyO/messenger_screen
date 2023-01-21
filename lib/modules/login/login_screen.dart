import 'package:flutter/material.dart';
import 'package:messenger_screen/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passwordVisability = true;
  var passwordValue = TextEditingController();
  var emailValue = TextEditingController();
  var formKey = GlobalKey<FormState>();

  void _passwordVisable() {
    setState(() {
      this.passwordVisability = !this.passwordVisability;
      print(this.passwordVisability);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: emailValue,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        labelText: 'Email Address',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value != null) {
                        if (value.isEmpty) {
                          return 'Email is Required';
                        }
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordValue,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          icon: this.passwordVisability
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye),
                          onPressed: _passwordVisable,
                        ),
                        labelText: 'Password',
                        border: const OutlineInputBorder(),
                      ),
                      obscureText: this.passwordVisability,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultButton(
                        text: 'Login',
                        onPressed: () {
                          if (formKey.currentState != null) {
                            if (formKey.currentState!.validate()) {}
                          }
                        }),
                    SizedBox(
                      height: 5,
                    ),
                    DefaultButton(
                        text: 'Second Login',
                        onPressed: () {},
                        color: Colors.black),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                        ),
                        TextButton(
                            onPressed: () {}, child: Text('Register Now'))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
