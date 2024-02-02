import 'package:flutter_learn_basics/navigation/navigation.dart';
import 'package:flutter_learn_basics/screens/edit_profile.dart';
import 'package:flutter_learn_basics/screens/login.dart';
import 'package:flutter_learn_basics/screens/near_by.dart';

class AppRoutes {
  static const login = '/';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearyBy = '/near_by';

  static final screens = {
    login: (context) => const Login(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfile(),
    nearyBy: (context) => const NearBy(),
  };
}
