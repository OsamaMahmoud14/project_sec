import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project_sec/constants/app_assets.dart';
import 'package:project_sec/widgets/common.dart';

import '../widgets/customRow.dart';
import '../widgets/customTextField.dart';
import '../widgets/loginButton.dart';
import '../widgets/show_snack_bar.dart';
import 'login.dart';

class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff44CCDB),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 16, left: 16, right: 16),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Image(
                  image: AssetImage(AppAssets.logo),
                  height: 100,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "إنشاء حساب جديد",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff606060),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                customTextField(
                  hintText: 'اسم الطفل ',
                  icon: Icons.person,
                  isPassword: false,
                  isobscure: false,
                ),
                const SizedBox(
                  height: 22,
                ),
                customTextField(
                  hintText: 'البريد الالكتروني',
                  icon: Icons.email_outlined,
                  isPassword: false,
                  onChanged: (data) {
                    email = data;
                  },
                  isobscure: false,
                ),
                const SizedBox(
                  height: 22,
                ),
                customTextField(
                  hintText: "كلمة المرور",
                  icon: Icons.lock_outlined,
                  isPassword: true,
                  onChanged: (data) {
                    password = data;
                  },
                  isobscure: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                loginButton(
                  name: " حساب جديد ",
                  page: login(),
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await registerUser();

                        showSnackBar(context, 'لقد تم تسجيل بنجاح');
                        Timer(Duration(seconds: 2), () {
                          navigate(context: context, screen: login());
                        });
                      } on FirebaseAuthException catch (ex) {
                        if (ex.code == 'weak-password') {
                          showSnackBar(context, 'كلمه المرور ضعيفه يجب ادخال كلمه مرور  تتكون من 8 حروف');
                        } else if (ex.code == 'email-already-in-use') {
                          showSnackBar(context, 'هذا الحساب موجود بالفعل');
                        }
                      } catch (ex) {
                        showSnackBar(context, 'حدث خطا في التسجيل ');
                      }

                      isLoading = false;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff606060),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "سجل عن طريق",
                      style: TextStyle(
                        color: Color(0xff606060),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff606060),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 20, start: 20),
                  child: Row(
                    children: [
                      Image.asset("assets/1.png"),
                      Image.asset("assets/2.png"),
                      Image.asset("assets/3.png"),
                    ],
                  ),
                ),
                customRow(
                    text: "لديك حساب بالفعل؟",
                    text2: "سجل الدخول",
                    page: login()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}

