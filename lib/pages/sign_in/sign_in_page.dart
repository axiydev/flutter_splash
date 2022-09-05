import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash/pages/sign_up/sign_up_page.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  static const route = '/sign_in';
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('sign in'),
      // ),
      body: SizedBox(
        width: double.infinity,
        child: AnimationLimiter(
          child: ListView(
            shrinkWrap: true,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.7),
            children: [
              getAnimationScale(
                position: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Instagram',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobsterTwo(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              getAnimationScale(
                position: 1,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Email',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              getAnimationScale(
                position: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintText: 'Password',
                        border: const OutlineInputBorder()),
                  ),
                ),
              ),
              getAnimationScale(
                position: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: CupertinoButton.filled(
                        borderRadius: BorderRadius.circular(3),
                        child: const Text('login'),
                        onPressed: () {}),
                  ),
                ),
              ),
              getAnimationScale(
                position: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(SignUpPage.route);
                          },
                          child: const Text('Sign up'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAnimation({required int position, required Widget child}) {
    return AnimationConfiguration.staggeredList(
        position: position,
        duration: const Duration(milliseconds: 450),
        child: SlideAnimation(verticalOffset: 100, child: child));
  }

  Widget getAnimationScale({required int position, required Widget child}) {
    return AnimationConfiguration.staggeredList(
        position: position,
        duration: const Duration(milliseconds: 450),
        child: ScaleAnimation(
          curve: Curves.easeIn,
          child: child,
        ));
  }
}
