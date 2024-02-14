
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HeaderSectionOfcourcesdetails extends StatelessWidget{
      HeaderSectionOfcourcesdetails({super.key, required this.courceimge,required this.courceicon,required this.courcename});
      final String courcename;
      final String courceicon;
      final String courceimge;
      @override
      Widget build(BuildContext context){
        return Column(
          children: [
            Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    Container( 
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage(courceimge),
                          fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(height: 30),
                  
                  Row(
                    children: [
                            Container(
                              width: 240,
                              child: Text(courcename,
                                    style: TextStyle(
                                      fontSize: 25,
                                      
                                    ),
                                    ),
                                    
                            ),
                          
                          Spacer(),
                          Container( 
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage(courceicon),
                          fit: BoxFit.cover
                          )
                      ),
                    ) ,
                          
        
                    ],
                  ),
                  Row(children: [
                    Text("WA0043"),
                    Spacer(),
                    Text("100.0 LYD",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                    
                  ],),
          ],
        ) )
      ]);
      }
}