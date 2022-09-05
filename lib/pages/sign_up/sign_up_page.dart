import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  static const route = '/sign_up';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('sign in'),
      // ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Instagram',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lobsterTwo(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {
                    if (value.length > 6) {
                      FocusScope.of(context).requestFocus(focusNode2);
                    }
                  },
                  focusNode: focusNode1,
                  controller: controller,
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Name',
                      border: OutlineInputBorder()),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Email',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  focusNode: focusNode2,
                  decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Password',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: CupertinoButton.filled(
                      borderRadius: BorderRadius.circular(3),
                      child: const Text('Sign up'),
                      onPressed: () {}),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Login'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
