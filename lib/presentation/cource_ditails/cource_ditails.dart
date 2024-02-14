

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:maharah_course_project/presentation/cource_ditails/bottom_section.dart';
import 'package:maharah_course_project/presentation/cource_ditails/header_section.dart';

class CourceDetails extends StatelessWidget{
  CourceDetails({super.key,required this.cource_image,required this.cource_icon,required this.cource_name});
  final String cource_name;
  final String cource_icon;
  final String cource_image;
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
        actions: [
          Icon(Icons.shopping_cart),
          Padding(padding:  EdgeInsets.only(right: 30))
        ],
        
        title: 
          Center(
          child:Text("Cource details",
                  style: TextStyle(fontSize: 20),
              ),
              
      )),
      body:Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          
          children: [
          HeaderSectionOfcourcesdetails(courceimge: cource_image,courceicon: cource_icon,courcename: cource_name,),
          Expanded(child: BottomSectionOFcourcedetails())
        ],),
      )
      );
  }
}