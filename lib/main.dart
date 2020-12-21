import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/signUp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUp(),
    );
  }
}


// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool isPassword=true;

//     @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
        
//         appBar: AppBar(
//           title: Text('Sign up ', style: TextStyle(fontSize:25),),
//           backgroundColor: Colors.purple,
//         ),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             fields('Username', Icons.supervised_user_circle),
//             fields('Email', Icons.email),
//             fields('Password', Icons.remove_red_eye),
//             fields('Confirm Password', Icons.remove_red_eye),
//           ],
//         )
//       )
//     );
//   }

//   fields(String textHint, IconData icon){
  

// return Container(
//       margin: EdgeInsets.all(10.0),
//       child: TextField(obscureText: textHint == 'Password'||textHint == 'Confirm Password' ? isPassword : isPassword,
//       keyboardType: textHint=='Email'? TextInputType.emailAddress:TextInputType.text,
//         decoration: InputDecoration(
//         hintText: textHint,
//         suffixIcon: IconButton(icon: Icon(icon),onPressed: (){
//             setState(() {
//               isPassword= !isPassword;
//             });
//       },),
//       border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//                 borderSide: BorderSide(color: Colors.grey, width: 0.5)),
      
//       ))
//     );
//   }
// }

// class MyApp extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
        
//         appBar: AppBar(
//           title: Text('Sign up ', style: TextStyle(fontSize:25),),
//           backgroundColor: Colors.purple,
//         ),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             fields('Username', Icons.supervised_user_circle),
//             fields('Email', Icons.email),
//             fields('Password', Icons.remove_red_eye),
//             fields('Confirm Password', Icons.remove_red_eye),
//           ],
//         )
//       )
//     );
//   }

//   fields(String textHint, IconData icon){
  
//   bool isPassword=true;

// return Container(
//       margin: EdgeInsets.all(10.0),
//       child: TextField(obscureText: textHint == 'Password'||textHint == 'Confirm Password' ? isPassword : false,
//       keyboardType: textHint=='Email'? TextInputType.emailAddress:TextInputType.text,
//         decoration: InputDecoration(
//         hintText: textHint,
//         suffixIcon: IconButton(icon: Icon(icon),onPressed: (){
            
//       },),
//       border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//                 borderSide: BorderSide(color: Colors.grey, width: 0.5)),
      
//       ))
//     );
//   }
// }