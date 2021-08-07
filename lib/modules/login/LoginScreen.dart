import 'package:flutter/material.dart';
import 'package:reusablecomponents/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    label: 'Email',
                    controller: emailController,
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String value){
                      if(value.isEmpty){
                        return 'Email can\'t be empty';
                      }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                    isPassword: isPasswordShow,
                    type: TextInputType.visiblePassword,
                    label: 'Password',
                    prefix: Icons.lock,
                    suffix: isPasswordShow ? Icons.visibility : Icons.visibility_off,
                    controller: passwordController,
                    suffixPressed: (){
                      setState(() {
                         // ignore: unnecessary_statements
                         isPasswordShow = !isPasswordShow;
                      });
                    },
                    validate: (String value){
                      if(value.isEmpty){
                        return 'password can\'t be empty';
                      }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: (){
                      if(formKey.currentState.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    //width: double.infinity,
                    //background: Colors.green,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}