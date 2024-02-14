import 'package:flutter/material.dart';
import 'package:maharah_course_project/presentation/widgets/home_page_widgets';
class BottomSectionOFhome extends StatelessWidget{
BottomSectionOFhome({super.key});
@override
Widget build(BuildContext context){
  return Column(
    children: [CourseTitles(
            title: 'Most taken'
            ),
            Padding(padding:EdgeInsets.only(bottom: 25) ),
            Expanded(
              child: Stack(children: [
                  ListView.separated(
                  separatorBuilder: (context,index)=>
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  itemCount: 4,
                  itemBuilder: (context,index)=>Courcce_option(
                    imagecard: "assets/images/background.jpg",
                      name: "UI/UX desogn ")
                ),
              
              Positioned(
                bottom: 12,
                right: 12,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue
                  ),
                  child: Icon(Icons.shopping_cart,
                  color: Colors.white,
                  ),
                ),
              )
              
              ],),
            )],
  );
}

}