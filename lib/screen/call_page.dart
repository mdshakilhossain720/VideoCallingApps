import 'package:flutter/material.dart';

import '../constrains/current_user.dart';
import '../constrains/routes.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {

  @override
  Widget build(BuildContext context) {

    //write it here
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, String>{}) as Map<String, String>;
    final callID = arguments[PageParam.callID] ?? '';

    return  SafeArea(
        child: ZegoUIKitPrebuiltCall(
            appID:271651144,
            //i used my own app sign key here
            appSign:'005c7a7c7fa38b679bd6089607a34c20a42eb09e082d0fa314c1e2c154301f4a',
            callID:callID ,
            userID: currentUser.id,
            userName: currentUser.name,
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ));
  }
}