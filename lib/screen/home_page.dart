import 'package:flutter/material.dart';

import '../components/home_appbar.dart';
import '../components/text_fields.dart';
import '../constrains/button_style.dart';
import '../constrains/current_user.dart';
import '../constrains/routes.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final callID = TextEditingController();

  //dispose the controller after use to release the memory
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    callID.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: const HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Your Phone Number: ${currentUser.id}'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enter Phone Number',
            style: TextStyle(fontSize: 18, color: Colors.grey[700]),
          ),
          const SizedBox(
            height: 10,
          ),
          joinCallContainer()
        ],
      ),
    );
  }

  Widget joinCallContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFieldWidget(
                controller: callID,
                hintText: 'join call by id',
                //no icon
                icon: const SizedBox()),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    if (callID.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Center(child: Text('Please input unique ID')),
                        duration: Duration(seconds: 1),
                      ));
                    } else {
                      Navigator.pushNamed(context, PageRouteNames.call,
                          arguments: <String, String>{
                            PageParam.callID: callID.text.trim(),
                          });
                    }
                  },
                  style: buttonStyle,
                  child: const Text('Call Now', style: buttonTextStyle)),
            )
          ],
        ),
      ),
    );
  }
}