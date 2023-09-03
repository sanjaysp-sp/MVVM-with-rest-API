// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mvvm1/utils/routes/routes_name.dart';
// import 'package:mvvm1/view/Home_screen.dart';
// import 'package:mvvm1/view/Login_view.dart';
// import 'package:mvvm1/view/Signup_view.dart';
// import 'package:mvvm1/view/splash_view.dart';
//
// class Routes{
//   static Route<dynamic> generateRoute(RouteSettings settings){
//     switch(settings.name){
//       case RoutesName.home:
//         return MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen());
//
//       case RoutesName.login:
//         return MaterialPageRoute(builder: (BuildContext context)=> const LoginView());
//
//       case RoutesName.splash:
//         return MaterialPageRoute(builder: (BuildContext context)=> const SplashView());
//
//       case RoutesName.signup:
//         return MaterialPageRoute(builder: (BuildContext context)=> const SignUpView());
//
//       default:
//         return MaterialPageRoute(builder: (_){
//           return Scaffold(
//             body: Center(
//               child: Text('No route defined'),
//             ),
//           );
//         });
//     };
//
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mvvm1/utils/routes/routes_name.dart';

import '../../view/Home_screen.dart';
import '../../view/Login_view.dart';
import '../../view/Signup_view.dart';
import '../../view/splash_view.dart';

class Routes {

  static Route<dynamic>  generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashView());

      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginView());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());

      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });

    }
  }
}