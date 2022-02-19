import 'package:flutter/material.dart';
import 'package:login_page/my_card.dart';

class FeedPage extends StatefulWidget {
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<String> imgList = [
    "https://images.pexels.com/photos/7363753/pexels-photo-7363753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ];

  List imgList2 = [
    "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/9748197/pexels-photo-9748197.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/1070945/pexels-photo-1070945.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://cont4.naekranie.pl/media/cache/amp/2014/10/this-is-the-end-tr.jpg",
  ];
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              String myTitle = (index + 1).toString();
              return MyCard(
                removeImg: () {
                  setState(() {
                    imgList.remove(imgList[index]);
                  });
                },
                imgUrl: imgList[index],
                newsTitle: myTitle,
              );
            }),
        Positioned(
          bottom: 15.0,
          right: 15.0,
          child: Container(
            height: 80.0,
            width: 80.0,
            child: FloatingActionButton(
              backgroundColor: Colors.purple,
              child: const Icon(
                Icons.add_photo_alternate,
                size: 50.0,
              ),
              onPressed: () {
                setState(() {
                  //jak zrobić, żeby zapamiętało w liście
                  if (index1 <= 3) {
                    imgList.add(imgList2[index1]);
                    index1 += 1;
                  } else {
                    imgList.add((imgList2[4]));
                  }
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
