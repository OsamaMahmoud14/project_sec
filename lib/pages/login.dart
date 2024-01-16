import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project_sec/constants/app_assets.dart';
import 'package:project_sec/pages/Register.dart';
import 'package:project_sec/pages/education/home.dart';
import 'package:project_sec/widgets/customRow.dart';
import 'package:project_sec/widgets/customTextField.dart';
import 'package:project_sec/widgets/loginButton.dart';
import '../widgets/common.dart';
import '../widgets/show_snack_bar.dart';
import 'meeting/home_page.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff44CCDB),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Image.asset(AppAssets.logo, height: 100,),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "سجل الدخول الي حسابك",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kanit(
                    color: Color(0xFF606060),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 0.50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                customTextField(
                  hintText: "البريد الالكتروني ",
                  icon: Icons.email_outlined,
                  isPassword: false,
                  onChanged: (data) {
                    email = data;
                  },
                  isobscure: false,

                ),
                SizedBox(
                  height: 22,
                ),
                customTextField(
                  hintText: " كلمه المرور ",
                  icon: Icons.lock_outlined,
                  isPassword: true,
                  onChanged: (data) {
                    password = data;
                  },
                  isobscure: true,
                ),
                SizedBox(
                  height: 20,
                ),
                loginButton(
                  name: " حساب جديد ",
                  page: SizedBox.shrink(),
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      try  {

                        await loginUser();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>home()));
                      } on FirebaseAuthException catch (ex) {
                        if (ex.code == 'user-not-found') {
                          showSnackBar(context, 'هذا الحساب غير متاح ');
                        } else if (ex.code == 'wrong-password') {
                          showSnackBar(context, 'كلمه المرور غير صحيحه');
                        }
                        else {
                          showSnackBar(context, 'حدث خطا في التسجيل');
                         }
                      } catch (ex) {
                        print(ex);
                      }
                      isLoading = false;
                      setState(() {});
                    } else {}
                  },

                ),
                Text(
                  'نسيت كلمة المرور؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF606060),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.50,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF606060),
                          ),  
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'سجل الدخول بـ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF606060),
                        fontSize: 14,
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.w300,
                        height: 0,
                        letterSpacing: 0.50,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF606060),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/1.png"),
                    Image.asset("assets/2.png"),
                    Image.asset("assets/3.png")
                  ],
                ),
                customRow(
                    text: ' ليس لديك حساب؟',
                    text2: "سجل الان",
                    page: signup())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {

      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

  }
}