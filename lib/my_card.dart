import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {Key? key,
      required this.newsTitle,
      required this.imgUrl,
      required this.removeImg})
      : super(key: key);
  final String newsTitle;
  final String imgUrl;
  final VoidCallback removeImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onLongPress: () {
          removeImg();
        },
        child: Card(
          color: Colors.blue,
          elevation: 6.0,
          child: Container(
            height: 150,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    bottom: 5.0,
                    left: 5.0,
                    child: Material(
                      elevation: 5,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Post No. $newsTitle",
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
