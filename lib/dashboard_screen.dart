import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unbit_app/widgets/custom_button.dart';
import 'package:unbit_app/widgets/custom_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
    var topBar = "assets/topbar.svg";
    var notification = "assets/Notification.svg";
    var card1 = "assets/card1.png";
    var card2 = "assets/card2.png";
    var cardGroup = "assets/cardgroup.png";
    var topBanner = "assets/topBanner.png";
    @override
    Widget build(BuildContext context) {
      var h = MediaQuery.of(context).size.height;
      var w = MediaQuery.of(context).size.width;
      return Scaffold(
        body:SizedBox(
          height: h,
          width: w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: h*0.12,
                  color: Colors.black,
                  child: Padding(
                    padding:  EdgeInsets.only(left:w*0.05 ,right: w*0.05,top: h*0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(topBar),
                        SvgPicture.asset(notification)
                      ],
                    ),
                  ),
                ),
              SizedBox(
                width: w,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                text: "Hello, Dipak 👋",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Image.asset(topBanner),
                        SizedBox(height: 20,),
                    Container(
                      height: h*0.65,
                      width: w,
                      child: ListView.builder(
                        shrinkWrap: true,

                          itemCount: 2,
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index) {
                            return  Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                height: 237,
                                width: w,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child:  Image.asset(index == 0 ?card1:card2,fit:BoxFit.cover ,)
                                      ),
                                      CustomText(text: index == 0?"Play Ludo and Earn Money":"Play Cricket Fantasy League",color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18,),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(cardGroup),
                                          Container(
                                              width: 134,
                                              child: CustomButton(text: "Play Now",
                                                color: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [Color(0xFFFFC004),Color(0xFFFF742F)]
                                                ),

                                              ))
                                        ],)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),

                      ],
                    ),
                  )
              )
            ],
            ),
          ),
        ),
      );
    }
  }
