
import 'package:shopapp/utility/my_constant.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/states/authen.dart';
import 'package:shopapp/states/create_account.dart';
import 'package:shopapp/states/buyer_service.dart';
import 'package:shopapp/states/saler_service.dart';
import 'package:shopapp/states/rider_service.dart';


void main() {
  runApp( MyApp());
}

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context)=>Authen(),
  '/createAccount':(BuildContext context)=>CreateAccount(),
  '/buyerService':(BuildContext context)=>BuyerService(),
  '/salerService':(BuildContext context)=>SalerService(),
  '/riderService':(BuildContext context)=>RiderService(),
};

String? initlalRoute;


class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);
  
  get initialRoute => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      initialRoute: '/authen',
      routes: {
        '/authen': (context) => const Authen(),
        '/createAccount': (context) => const CreateAccount(),
        '/buyerService' : (context) => const BuyerService(),
        '/salerService' : (context) => const SalerService(),
        '/riderService' : (context) => const RiderService(),
      }
    );
  }
}
