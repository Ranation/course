import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<signUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  GlobalKey<FormState> userNameKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
  GlobalKey<FormState> confirmPasswordKey = GlobalKey<FormState>();

  final _formKey = GlobalKey<FormState>();

  bool isPassword = true;
  bool isConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Sign up ',
                style: TextStyle(fontSize: 20),
              ),
              backgroundColor: Colors.purple,
            ),
            body:Container(
              child:Form(
                key: _formKey,
                child: 
             ListView(
              scrollDirection: Axis.vertical,
              children: [
                fields('Username', Icons.supervised_user_circle,
                    userNameController, userNameKey),
                fields('Email', Icons.email, emailController, emailKey),

                fields('Password', Icons.remove_red_eye, passwordController,
                    passwordKey),
                fields('Confirm Password', Icons.remove_red_eye,
                    confirmPasswordController, confirmPasswordKey),
                Column(
                  children: [
                    Builder(
                      builder: (BuildContext context) {
                        return FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Colors.black,
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                              return Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text('some fields required!'),
                                  duration: Duration(seconds: 5),
                                ),
                              );
                            }
                            // } else if(confirmPasswordController.value.text!=passwordController.value.text) {
                            //   return Scaffold.of(context).showSnackBar(
                            //     SnackBar(
                            //       backgroundColor: Colors.red,
                            //       content: Text('Password doesnt match confirm password!'),
                            //       duration: Duration(seconds: 5),
                            //     ),
                            //   );
                             
                            // }
                            else{
                              //  return Navigator.pushNamed(
                              //     context, 'bottomNavBar');
                              // return Navigator.pushReplacement(context,
                              //     MaterialPageRoute(builder: (_) {
                              //   return BottomNavBar();
                              // }));
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            )))));
  }

  fields(String textHint, IconData icon, TextEditingController controller,
      Key key) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: TextFormField(
            obscureText: textHint == 'Password'
                ? isPassword
                : textHint == 'Confirm Password'
                    ? isConfirmPassword
                    : false,
            keyboardType: textHint == 'Email'
                ? TextInputType.emailAddress
                : TextInputType.text,
            key: key,
            validator: (value) {
              if (value.isEmpty) {
                //print(value);
                return 'this field required';
              }
              else if(value.isNotEmpty){
                if(confirmPasswordController.value.text!=passwordController.value.text){
                   return 'Not match';
               }
              }
              // else if(confirmPasswordController.value.text!=passwordController.value.text){
              //   return 'Not match';
              // }
              return null;
              
            },
            controller: controller,
            decoration: InputDecoration(
              labelText: textHint,
              hintText: textHint,
              suffixIcon: IconButton(
                  icon: Icon(icon),
                  onPressed: () {
                    setState(() {
                      if (textHint == 'Password') {
                        isPassword = !isPassword;
                      } else if (textHint == 'Confirm Password') {
                        isConfirmPassword = !isConfirmPassword;
                      }
                    });
                  }),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5)),
            )));
      }
}