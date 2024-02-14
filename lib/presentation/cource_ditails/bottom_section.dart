// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
class BottomSectionOFcourcedetails extends StatelessWidget {
  const BottomSectionOFcourcedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 20)),
                    Divider(),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    Text("Product Description",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        ),
                    SizedBox(height: 20),
                    Text("assets/images/background.jpg",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                      Spacer(),
                      Container(
                        height:50 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                          
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Add to cart      ",
                            style:  TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            ),
                            Icon(Icons.add,
                            color: Colors.white,
                            )
                            
                          ],
                        ),
                      )
                        ],
          
          ),
    );
  }
}