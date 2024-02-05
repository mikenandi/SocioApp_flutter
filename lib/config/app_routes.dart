import 'package:flutter_learn_basics/navigation/navigation.dart';
import 'package:flutter_learn_basics/provider/login_provider.dart';
import 'package:flutter_learn_basics/screens/edit_profile.dart';
import 'package:flutter_learn_basics/screens/login.dart';
import 'package:flutter_learn_basics/screens/near_by.dart';
import 'package:provider/provider.dart';

class AppRoutes {
  static const login = '/';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearyBy = '/near_by';

  static final screens = {
    login: (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: const Login(),
        ),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfile(),
    nearyBy: (context) => const NearBy(),
  };
}
