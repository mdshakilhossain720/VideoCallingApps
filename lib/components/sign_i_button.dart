import 'package:flutter/material.dart';

import '../constrains/button_style.dart';
import '../constrains/current_user.dart';
import '../screen/home_page.dart';



class SignInButton extends StatelessWidget {
  final TextEditingController userID;
  const SignInButton({super.key,required this.userID});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: (){
          currentUser.id=userID.text.trim();
          currentUser.name='user_${userID.text}';
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>const HomePage()));
        },
        style: buttonStyle,
        child:const  Text('Sign In',style: buttonTextStyle),
      ),
    );
  }
}