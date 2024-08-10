import 'package:flutter/material.dart';

import '../components/login_appbar.dart';
import '../components/text_fields.dart';
import '../components/sign_i_button.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController phoneNum=TextEditingController(text: '+92');
  final TextEditingController password=TextEditingController();

  //dispose the controller to release the memory
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneNum.dispose();
    password.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title:const LogInAppBar()
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const  SizedBox(height: 50,),
            TextFieldWidget(
                controller:phoneNum ,
                hintText: 'Phone',
                icon:const Icon(Icons.phone)
            ),
            const   SizedBox(height: 20,),
            TextFieldWidget(
                controller:password ,
                hintText: 'Password',
                icon:const Icon(Icons.lock_open)
            ),
            const   SizedBox(height: 30,),
            SignInButton(userID: phoneNum,)
          ],
        ),
      ),
    );
  }
}