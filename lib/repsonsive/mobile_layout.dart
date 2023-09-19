import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255,0,62,62),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
              child: Text("Wedding HUB",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.home_outlined,size: 30,color: Colors.white,),
                title: Text("Home",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.info_outline,size: 30,color: Colors.white,),
                title: Text("About",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.featured_play_list_outlined,size: 30,color: Colors.white,),
                title: Text("Feature",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.card_giftcard_sharp,size: 30,color: Colors.white,),
                title: Text("Package",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            //navigation bar
            Container(
                color: Color.fromARGB(255,0,62,62),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //menubar
                      Icon(Icons.menu,size: 40,color: Colors.white,),
                      //profile
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(57, 255, 255, 255),
                        ),
                        child: Icon(Icons.person,size: 40,color: Colors.white,)),
                    ],
                  ),
                ),
              ),
            
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255,0,62,62), 
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Wedding HUB",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 152, 243, 255)),),
                      ).animate(delay: Duration(milliseconds: 400)).moveX(begin: 10).fadeIn(duration: Duration(milliseconds: 500)),
                      Container(
                        width: 200,
                        child: Text("Wedding Hub Gives You Back Time, Money, Energy, Trust, and Convenience",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ).animate(delay: Duration(milliseconds: 500)).moveX(begin: 10).fadeIn(duration: Duration(milliseconds: 500)),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(child: Image(image: AssetImage('assert/app-store.1024x1024.png'),height: 20,)),
                              SizedBox(width: 13,),
                              Text("App store",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ).animate(delay: Duration(milliseconds: 500)).moveX(begin: -10).fadeIn(duration: Duration(milliseconds: 400)),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(child: Image(image: AssetImage('assert/google-play.909x1024.png'),height: 20,)),
                              SizedBox(width: 10,),
                              Text("Play Store",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ).animate(delay: Duration(milliseconds: 600)).moveX(begin: -10).fadeIn(duration: Duration(milliseconds: 400)),
                    ],
                  ),
                ),
                Positioned(
                  right:30,
                  top: 50,
                  child: SizedBox(
                        height: 300,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(27),
                          child: const Image(image: AssetImage('assert/photo_2023-09-03_14-40-43.jpg')),
                        ),
                      ),
                ).animate(delay: Duration(milliseconds: 500)).moveX(begin: 10).fadeIn(duration: Duration(milliseconds: 500)),
                ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("WE CAN PROVIDE YOU",style: TextStyle(fontWeight: FontWeight.bold),)),
            Center(
              child: Text('Help make the easy way to your spacial days')),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  infowidget(customicons:'assert/photo_2023-09-04_13-19-29.jpg' , titlename: "Guests", discription: "This id function that allow their guests your wedding agenda set location." ).animate().fadeIn( duration: Duration(milliseconds: 500)).moveX(begin: 20),
                  infowidget(customicons:'assert/photo_2023-09-04_13-19-40.jpg' , titlename: "Supplier", discription: "This id function that allow their guests your wedding agenda set location.").animate(delay: Duration(milliseconds: 250)).fadeIn( duration: Duration(milliseconds: 500)).moveX(begin: 20),
                  infowidget(customicons:'assert/photo_2023-09-04_13-19-44.jpg' , titlename: "Groom & pride", discription: "This id function that allow their guests your wedding agenda set location.").animate(delay: Duration(milliseconds: 250)).fadeIn( duration: Duration(milliseconds: 500)).moveX(begin: 20),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Center(
              child: Text("Function",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 15, 29, 60)),)).animate(delay: Duration(milliseconds: 500)).moveX(begin: 10).fadeIn(duration: Duration(milliseconds: 500)),
            Center(
              child: Text("help make the easy way for your spacial days.").animate(delay: Duration(milliseconds: 500)).moveX(begin: 10).fadeIn(duration: Duration(milliseconds: 500))),
            //about page
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(image: AssetImage('assert/photo_2023-09-03_14-40-43.jpg'),height: 300,),
                ),
               Expanded(
                flex: 1,
                 child: Column(
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assert/agenda.png'),width: 40,height: 40,),
                        SizedBox(width: 10,),
                        Text("Agenda",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage('assert/meeting.png'),width: 40,height: 40,),
                        SizedBox(width: 10,),
                        Text("Meeting",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage('assert/navigation_7818242.png'),width: 40,height: 40,),
                        SizedBox(width: 10,),
                        Text("Navigation",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage('assert/pay_625599.png'),width: 40,height: 40,),
                        SizedBox(width: 10,),
                        Text("Pay",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage('assert/supplier_3321752.png'),width: 40,height: 40,),
                        SizedBox(width: 10,),
                        Text("Supplier",style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                 ),
               )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Frequently asked quetions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
              )
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("What is Wedding Hub?"),
              )
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("What service do Wedding Hub provides?"),
              )
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("How to get marriage using Wedding Hub?"),
              )
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("How can I become supplier of Wedding Hub?"),
              )
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(image: AssetImage('assert/photo_2023-09-06_12-05-58.jpg'),height: 300,)),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text('Wedding Hub',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                      ),
                      Text('Join the revolution and see how Wedding Hub can make your spacial days.')
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color.fromARGB(255, 148, 148, 148)
                  ]),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text('Contact Us',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.facebook_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assert/instagram_1077042.png'),width: 20,height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.tiktok),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.telegram),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ), 
        ), 
    );
  }
}


















// ignore: camel_case_types, must_be_immutable
class infowidget extends StatelessWidget {
   infowidget({super.key, required this.customicons,
              required this.titlename,
              required this.discription,});
  String customicons;
  String titlename;
  String discription;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
              width: 200,
              height: 216,
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
                      width: 70,
                      height: 67,
                    ),
                    Text(titlename,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 245, 98, 57)
                      ),
                    ),
                    SizedBox(
                      width: 189,
                      child: Text(discription,textAlign: TextAlign.center,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 30, 50, 97)),)),
                  ],
                ),
              )
            ),
    );
  }
}
