import 'package:flutter/material.dart';

import 'desktop_layout.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 60,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
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
                                        ),
                                  ],
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
          ],
        ), 
        ), 
    );
  }
}