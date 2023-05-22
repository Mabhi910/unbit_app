import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unbit_app/bottomScreen.dart';
import 'package:unbit_app/dashboard_screen.dart';
import 'package:unbit_app/widgets/custom_button.dart';
import 'package:unbit_app/widgets/custom_text.dart';
import 'package:unbit_app/widgets/custom_textField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
var gameLoginImage = "assets/login.svg";
var callIcon = "assets/Call.svg";
var lockIcon = "assets/Lock.svg";
  @override
  Widget build(BuildContext context) {
   var h = MediaQuery.of(context).size.height;
   var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        height: h,
        width: w,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 140,left: 155,right: 155),
                  child: SvgPicture.asset(gameLoginImage)),
              SizedBox(height: h*0.1,),
              Container(
                width: w,
                height: h,
                decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const CustomText(text: "Login",fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black,),
                      const SizedBox(height: 20,),
                    CustomTextField(
                      height: 50,
                      obsecureText: false,
                      maxLines: 1,
                      minLines: 1,
                      hintText: "Mobile Number",
                      keyboardType: TextInputType.number,
                      prefixIcon: Container(
                          margin: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                          child: SvgPicture.asset(callIcon,)),
                    ),
                    const SizedBox(height: 20,),
                    CustomTextField(
                      height: 50,
                      obsecureText: true,
                      maxLines: 1,
                      minLines: 1,
                      hintText: "Password",
                      prefixIcon: Container(
                          margin: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                          child: SvgPicture.asset(lockIcon,height: 16,width: 16,)),
                    ),
                      const SizedBox(height: 10,),
                      const Align(
                          alignment: FractionalOffset.topRight,
                          child: CustomText(text: "Forgot password?",fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFFF8B22),)),
                      const SizedBox(height: 20,),
                      CustomButton(text: "Login",
                          onTap: () {
                        print("Login Pressed");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return const BottomNav();
                                }));
                          },
                          color: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFC004),Color(0xFFFF742F)]
                          ),
                      ),
                      const SizedBox(height: 30,),
                      const CustomButton(text: "Login with OTP",
                          color:LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF0052BE),Color(0xFF0B7DC4)]
                          ),
                      ),

                      const SizedBox(height: 20,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: "Don’t have an account?",fontWeight: FontWeight.w500,fontSize: 12,),
                          CustomText(text: " Sign up now",fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xFFFF8B22),),
                        ],
                      )

                  ],),
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
