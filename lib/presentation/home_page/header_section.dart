
// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:maharah_course_project/presentation/widgets/home_page_widgets';

import '../user_profile/user_profile.dart';

class HeaderSectionOFhome extends StatelessWidget{
  HeaderSectionOFhome({super.key});
  @override
  Widget build(BuildContext context){
    List<String> images=[
      'assets/images/html_background.jpg',
      'assets/images/css_background.png',
      'assets/images/background.jpg'
      ];
    List<String> icons =[
    'assets/images/html-5.png',
    'assets/images/css3_icon.png',
    'assets/images/javascript_icon.png'
    ];
    List<String> names =[
      'chat with the smartesi Ai now ',
      'start learning now it`s the best time',
      'join the our course to  learn the needed skills '
      ];
    return Column(children: [
      Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: Text(
                        "Abdulraheem kshinba",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(120),
                    child: InkWell(
                      onTap: () => 
                                Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => UserProfilePage(profile_image: "assets/images/profile_image.webp",)),
                        ),
                      child: Image.asset(
                        "assets/images/profile_image.webp",
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CourseTitles(
            title: 'Trending',
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: names.length,
              itemBuilder: (context, index) => SizedBox(
                child: DevCoursesCard(
                  imageCard: images[index],
                  name: names[index],
                  icon: icons[index],
                ),
              ),
            ),
          ),
    ],
    );

  }
}