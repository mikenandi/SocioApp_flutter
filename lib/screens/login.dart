import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/app_text_field.dart';
import 'package:flutter_learn_basics/config/app_routes.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 200,
        height: double.infinity,
        color: const Color(0XFF1B316B),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const AppTextField(
                  hint: 'username',
                ),
                const SizedBox(
                  height: 16,
                ),
                const AppTextField(
                  hint: 'Password',
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password',
                        style: TextStyle(
                          // color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.background,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Or login with',
                  style: TextStyle(
                      color: AppColors.font2, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/search.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Login with Google',
                          style: TextStyle(
                            color: AppColors.background,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Login with FaceBook',
                          style: TextStyle(
                            color: AppColors.background,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Don't have account?",
                      style: TextStyle(color: AppColors.font2),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.amber,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
