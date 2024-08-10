

import 'package:flutter/cupertino.dart';

import '../screen/call_page.dart';
import '../screen/home_page.dart';
import '../screen/login_page.dart';


class PageRouteNames{
  static const login='/login';
  static const home='/home_page';
  static const call='/call';
}

class PageParam{
  static String localUserID='local_user_id';
  static String callID='call_id';
}

//routes for our project

Map<String,WidgetBuilder> routes={
  PageRouteNames.login:(context)=>const LogInPage(),
  PageRouteNames.home:(context)=>const HomePage(),
  PageRouteNames.call:(context)=>const CallPage()
};