// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:mvvm1/repository/auth_repo.dart';
// import 'package:mvvm1/utils/routes/routes_name.dart';
// import 'package:mvvm1/utils/utils.dart';
//
// class AuthViewModel with ChangeNotifier{
//   final _myRepo=AuthRepository();
//   bool _loading=false;
//   bool get loading=>_loading;
//
//   bool _signupLoading=false;
//   bool get signupLoading=>_signupLoading;
//
//   setloading(bool value){
//     _loading=value;
//     notifyListeners();
//   }
//   setsignupLoading(bool value){
//     _signupLoading=value;
//     notifyListeners();
//   }
//   Future<void> loginApi(dynamic data,BuildContext context)async{
//     setloading(true);
//     _myRepo.loginApi(data).then((value) {
//       setloading(false);
//       utils.flushBarErrorMessage('Login successful', context);
//       Navigator.pushNamed(context, RoutesName.home);
//       if (kDebugMode){
//         print(value.toString());
//       }
//
//     }).onError((error, stackTrace){
//       setloading(false );
//       if (kDebugMode){
//         utils.flushBarErrorMessage(error.toString(), context);
//         print(error.toString());
//
//       }
//
//
//     });
//
//   }
//   Future<void> signupApi(dynamic data,BuildContext context)async{
//     setsignupLoading(true);
//     _myRepo.signupApi(data).then((value) {
//       setsignupLoading(false);
//       utils.flushBarErrorMessage('Signin successful', context);
//       Navigator.pushNamed(context, RoutesName.home);
//       if (kDebugMode){
//         print(value.toString());
//       }
//
//     }).onError((error, stackTrace){
//       setsignupLoading(false );
//       if (kDebugMode){
//         utils.flushBarErrorMessage(error.toString(), context);
//         print(error.toString());
//
//       }
//
//
//     });
//
//   }
//
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm1/view_model/user_view_model.dart';

import 'package:provider/provider.dart';

import '../model/user_model.dart';
import '../repository/auth_repo.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';

class AuthViewModel with ChangeNotifier {

  final _myRepo = AuthRepository();

  bool _loading = false ;
  bool get loading => _loading ;

  bool _signUpLoading = false ;
  bool get signUpLoading => _signUpLoading ;


  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value){
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data , BuildContext context) async {

    setLoading(true);

    _myRepo.loginApi(data).then((value){
      setLoading(false);
      final userPreference = Provider.of<UserViewModel>(context , listen: false);
      userPreference.saveUser(
          UserModel(
              token: value['token'].toString()
          )
      );

      Utils.flushBarErrorMessage('Login Successfully', context);
      Navigator.pushNamed(context, RoutesName.home);
      if(kDebugMode){
        print(value.toString());

      }
    }).onError((error, stackTrace){
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if(kDebugMode){
        print(error.toString());
      }

    });
  }


  Future<void> signUpApi(dynamic data , BuildContext context) async {

    setSignUpLoading(true);

    _myRepo.signUpApi(data).then((value){
      setSignUpLoading(false);
      Utils.flushBarErrorMessage('SignUp Successfully', context);
      Navigator.pushNamed(context, RoutesName.home);
      if(kDebugMode){
        print(value.toString());

      }
    }).onError((error, stackTrace){
      setSignUpLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if(kDebugMode){
        print(error.toString());
      }

    });
  }

}