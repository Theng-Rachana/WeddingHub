// import 'dart:js';

import 'package:flutter/material.dart';
 import 'package:flutter_animate/flutter_animate.dart';
class DesktopPage extends StatefulWidget {
  DesktopPage({super.key});
  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
  var screenwidth = MediaQuery.of(context);
  bool isScreenWide = MediaQuery.of(context).size.width >= 1100;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 1920,
        height: 5756,
        
        child: ListView(
          children: [Column(
            children: [
              
              // Text(currentwidth.toString()),

              //navigation bar
              SizedBox(
                height: 60,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Title(
                            color:const Color.fromRGBO(30, 50, 97, 1), 
                            child: const Text("Wedding HUB",style: TextStyle(
                            fontSize: 32, 
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,color: Color.fromRGBO(30, 50, 97, 1)),)),
                            const Padding(
                              padding: EdgeInsets.only(left:5.0),
                              child:ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                child: Image(image: AssetImage('assert/photo_2023-08-31_15-20-28.jpg',)),
                                ) ,
                              ) ,
                          ],
                        ),
                      ),
                       SizedBox(
                          child: Row(children: [
                            Menubar(menu: "Home"),
                            Menubar(menu: "About"),
                            Menubar(menu: "Feature"),
                            Menubar(menu: "Package"),
                            Menubar(menu: "Account"),
                          ]),
                      ),
                      Flexible(
                        child: SizedBox(
                            child: Menubar(menu: "Contect"),
                        ),
                      ),
                    ],
                  ),
        
                ),
              ),
              
              //header
              Padding(
                padding:const EdgeInsets.only(top: 72,left: 65,right: 65),
                child: Container(
                  decoration: BoxDecoration(
                    color: isScreenWide? const Color.fromARGB(113, 178, 235, 242):const Color.fromARGB(0, 0, 0, 0),
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Row(
                    mainAxisAlignment: isScreenWide? MainAxisAlignment.spaceAround:MainAxisAlignment.center,
                    // direction: isScreenWide? Axis.horizontal:Axis.vertical,
                    children: [
                      SizedBox(
                      width: screenwidth.size.width *0.5,
                      child: Padding(
                        padding:  EdgeInsets.only(left: isScreenWide? 43: 0,top: 54),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                          SizedBox(
                            width: screenwidth.size.width *0.5,
                            child: Text("Wedding HUB",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 96,color: Colors.cyan),)),
                           Padding(
                            padding: EdgeInsets.only(top: 28),
                            child: Container(
                              width: screenwidth.size.width * 0.4,
                              child:Text("Wedding Hub Gives You Back Time, Money, Energy, Trust, and Convenience",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),)),
                          ),
  
                            //button
                          SizedBox(
                            width: isScreenWide? 500:250,
                            child: Padding(
                              padding:  EdgeInsets.only(top: isScreenWide? 70:50,bottom: 107),
                              child: Flex(
                                direction: isScreenWide? Axis.horizontal : Axis.vertical,
                                children: [
                                  InkWell(
                                    onTap: (){
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 228,
                                        height: 77,
                                        decoration: BoxDecoration(
                                          borderRadius:BorderRadius.circular(45),
                                          color:const Color.fromARGB(255, 160, 196, 230),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 20,right: 32),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.apple,size: 40,),
                                              Text("App Store",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                            ],
                                          ),
                                        )),
                                    ),
                                  ),
                                InkWell(
                                  onTap: (){
                                  },
                                  child: Container(
                                    width: 228,
                                    height: 77,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(45),
                                      color:const Color.fromARGB(255, 160, 196, 230),
                                    ),
                                    child:const Padding(
                                      padding: EdgeInsets.only(left: 20,right: 32),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.android_sharp,size: 40,),
                                          Text("Play Store",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                        ],
                                      ),
                                    )),
                                ),
                              ],),
                            ),
                          )
                        ],),
                      ),
                    ),
                    SizedBox(
                      height: isScreenWide? 500 : 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(isScreenWide? 45:35),
                        child: const Image(image: AssetImage('assert/photo_2023-09-03_14-40-43.jpg')),
                      ),
                    ),
                  ]),
                ),
              ),
            const Padding(
              padding: EdgeInsets.only(top: 251),
              child: Text("WE CAN PROVIDE YOU",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 30, 50, 97)),),
            ),
            const Text("Help make the easy way for your spacial day",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),),

              //body-1
              Padding(
                padding: const EdgeInsets.only(top: 57,bottom: 233),
                child: 
                SizedBox(
                  width: 1223,
                  child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        infowidget(customicons:'assert/photo_2023-09-04_13-19-29.jpg' , titlename: "Guests", discription: "This id function that allow their guests your wedding agenda set location." ,wit: isScreenWide? screenwidth.size.width * 0.25:screenwidth.size.width * 0.3,).animate(delay: Duration(seconds: 2)).fadeIn(duration: Duration(seconds: 1)).moveX(begin: -100),
                        infowidget(customicons:'assert/photo_2023-09-04_13-19-40.jpg' , titlename: "Supplier", discription: "This id function that allow their guests your wedding agenda set location.",wit: isScreenWide? screenwidth.size.width * 0.25:screenwidth.size.width * 0.3,).animate(delay: Duration(seconds: 1)).fadeIn(duration: Duration(seconds: 1)).moveX(begin: -100),
                        infowidget(customicons:'assert/photo_2023-09-04_13-19-44.jpg' , titlename: "Groom & pride", discription: "This id function that allow their guests your wedding agenda set location.",wit: isScreenWide? screenwidth.size.width * 0.25:screenwidth.size.width * 0.3,).animate().fadeIn(duration: Duration(seconds: 1)).moveX(begin: -100),
                      ],
                    ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 251),
                child: Text("Function",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 30, 50, 97)),),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 57),
                child: Text("Help make the easy way for your spacial day",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),),
              ),


              //body-2
              Container(
                // width: 1440,
                height: 1558,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(67, 178, 235, 242),
                      Colors.white
                    ]
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: 380,
                        child: Column(
                          children: [
                            Contain3leftside(img: "assert/agenda.png", tx: "Agenda", discript: "This id function that allow their guests your wedding agenda set location."),
                            Contain3leftside(img: "assert/pay_625599.png", tx: "Payment", discript: "This id function that allow their guests your wedding agenda set location."),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding:EdgeInsets.only(top: 337,left: isScreenWide? 156: 70,right: isScreenWide?156:70,bottom: 172),
                      child: SizedBox(
                        height: 973,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius:BorderRadius.all(Radius.circular(40)),
                              child: Image(image: AssetImage("assert/photo_2023-09-03_14-40-43.jpg"),width: 257,)),
                            SizedBox(
                              width: 380,
                              child: Column(
                                children: [
                                  Image(image: AssetImage("assert/supplier_3321752.png"),width: 75,height: 75,),
                                  Padding(
                                    padding: EdgeInsets.only(top: 18,bottom: 26),
                                    child: Text("Supplier",style: TextStyle(fontSize: 15,color: Color.fromARGB(255,245, 97, 57,)),),
                                  ),
                                  Text("This id function that allow their guests your wedding agenda set location.",style: TextStyle(fontSize: 20,color: Color.fromARGB(255,30, 50, 97)),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Flexible(
                      child: SizedBox(
                        child: Column(
                          children: [
                            Contain3leftside(img: "assert/navigation_7818242.png", tx: "Navigation", discript: "This id function that allow their guests your wedding agenda set location."),
                            Contain3leftside(img: "assert/meeting.png", tx: "Meeting", discript: "This id function that allow their guests your wedding agenda set location."),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //body-3
              Padding(
                padding:  const EdgeInsets.only(top: 112,left: 121,right: 171),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 55),
                              child: Text("Frequantly asked question",textAlign: TextAlign.start,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255,245, 97, 57)),),
                            ),
                            Questionwidget(text: "What is Wedding hub?"),
                            Questionwidget(text: "What service Wedding hub provide?"),
                            Questionwidget(text: "How to get marriege using Wedding hub?"),
                            Questionwidget(text: "How can I become a supplier in Wedding hub?"),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 1200? true:false,
                        child: Image(image: AssetImage("assert/photo_2023-09-05_15-32-07.jpg"),width: 400,height: 416,),),
                    ],
                  ),
                ),
              ),
            
            //block-4
            Padding(
              padding: EdgeInsets.only(top: 330),
              child: Container(
                height: 1536,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(67, 178, 235, 242),
                      Colors.white
                    ],
                    ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 126,left: screenwidth.size.width * 0.12,right: screenwidth.size.width * 0.1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child:   Image(image: AssetImage("assert/photo_2023-09-06_12-05-58.jpg"),width: 250,)),
                    ),
                    Padding(
                      padding:   EdgeInsets.only(top: 666),
                      child:  SizedBox(
                        width: 367,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Padding(
                              padding: EdgeInsets.only(bottom: 51),
                              child: Flexible(
                                child: SizedBox(
                                  width: 219,
                                  child: Text("Wedding Hub",style: TextStyle(fontSize: 48,fontWeight: FontWeight.w600,color: Color.fromARGB(255,30, 50, 97)),)),
                              ),
                            ),
                             Flexible(
                               child: SizedBox(
                                width: 367,
                                child: Text("Join the revolution and see how Wedding hub can make your spacial day",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),)),
                             ),
                            Padding(
                              padding:  EdgeInsets.only(top: 252),
                              child: Container(
                                height: 352,
                                
                              ),
                            ),
                          
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const Footer(),
            ],            
          ),]
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Menubar extends StatelessWidget {
  Menubar({super.key,required this.menu});
  String menu;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: InkWell(onTap: () {
        	
      },
      child: Text(menu,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class infowidget extends StatelessWidget {
   infowidget({super.key, required this.customicons,
              required this.titlename,
              required this.discription,
              required this.wit});
  String customicons;
  String titlename;
  String discription;
  double wit;
  
  @override
  Widget build(BuildContext context) {
    return Container(
            width: wit,
            height: 416,
            decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow:[
                BoxShadow(
                  color: Color.fromARGB(255, 134, 134, 134),
                  blurRadius: 5,
                  offset: Offset(4, 6)
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 46,bottom: 46),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(customicons),
                    width: 100,
                    height: 97,
                  ),
                  Text(titlename,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 245, 98, 57)
                    ),
                  ),
                  SizedBox(
                    width: 189,
                    child: Text(discription,textAlign: TextAlign.center,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 30, 50, 97)),)),
                ],
              ),
            )
          );
  }
}

// ignore: must_be_immutable
class Contain3leftside  extends StatelessWidget {
  Contain3leftside ({super.key,required this.img,required this.tx,required this.discript,});
  String img;
  String tx;
  String discript;
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context);
    var isScreenWide = MediaQuery.of(context).size.width >= 1100;
    return  Padding(
      padding: EdgeInsets.only(top: isScreenWide? 133 : 40 ),
      child: SizedBox(
        width: screenwidth.size.width * 0.5,
        height: 400,
        child: Column(
          children: [
            Image(image: AssetImage(img),width: 75,height: 75,),
            Padding(
              padding:const EdgeInsets.only(top: 18,bottom: 26),
              child: Text(tx,style:const TextStyle(fontSize: 15,color: Color.fromARGB(255,245, 97, 57,)),),
            ),
            Text(discript,style:const TextStyle(fontSize: 20,color: Color.fromARGB(255,30, 50, 97)),)
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Questionwidget extends StatelessWidget {
  Questionwidget({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: (){
    
        },
        child: Row(
                children: [
                  Text(text,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
                  const Icon(Icons.arrow_drop_down_circle_outlined),
                ],
              ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 567,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(67, 178, 235, 242),
                      Colors.white
                    ],
                  ),
        border: Border(top: BorderSide(width: 1,color: Colors.black))
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 114,left: 86),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: 192,
                child: Text("Wedding hub",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255,30, 50, 97)),)) ,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color.fromARGB(255,30, 50, 97)),),
                    Padding(
                      padding: EdgeInsets.only(top: 44),
                      child: Text("How it work use for newcouple",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    ),
                  ],
                )) ,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Team",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color.fromARGB(255,30, 50, 97)),),
                    Padding(
                      padding: EdgeInsets.only(top: 44),
                      child: Text("How it work use for newcouple front back sale",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    ),
                  ],
                )) ,
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                width: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Text("Team",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color.fromARGB(255,30, 50, 97)),),
                    Padding(
                      padding: EdgeInsets.only(top: 39),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 40,
                            child: Icon(Icons.facebook)),
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: SizedBox(
                              width: 20,
                              child: Image(image: AssetImage("assert/instagram_1077042.png")),),
                          ),
                          SizedBox(
                            width: 40,
                            child: Icon(Icons.telegram)),
                          SizedBox(
                            width: 40,
                            child: Icon(Icons.tiktok)),
                        ],
                      ),
                    ),
                  ],
                )) ,
            ),
          ],
        ),
      ),
    );
  }
}