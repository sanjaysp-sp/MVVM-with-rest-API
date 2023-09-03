// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// //import 'package:mvvm1/view/services/splash_services.dart';
//
// import '../view_model/services/splash_services.dart';
//
// class SplashView extends StatefulWidget {
//   const SplashView({Key? key}) : super(key: key);
//
//   @override
//   State<SplashView> createState() => _SplashViewState();
// }
//
// class _SplashViewState extends State<SplashView> {
//   SpalshServices splashServices=SpalshServices();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     splashServices.checkAuthentication(context);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('Splash screen',style: Theme.of(context).textTheme.headline4,),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../view_model/services/splash_services.dart';



class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  SplashServices splashServices=SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    splashServices.checkAuthentication(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text('Splash screen', style: Theme.of(context).textTheme.headline4,),
      ),
    );
  }
}
