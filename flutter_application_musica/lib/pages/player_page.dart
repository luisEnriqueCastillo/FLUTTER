import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_application_prueba_1/models/album_model.dart';
import 'package:flutter_application_prueba_1/pages/menu_page.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 20, 32, 1.0),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuPage()),
                      );
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                    color: Colors.white,
                  ),
                  Text("Music Player",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30.0,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            _swiper(),
            SizedBox(height: 20.0),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(text: "Cold"),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Rich Brian")
                    ])),
            SizedBox(
              height: 30.0,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        height: 1.8,
                        textBaseline: TextBaseline.alphabetic,
                        color: Colors.white,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: "How long have you b",
                          style: TextStyle(color: Colors.blue)),
                      TextSpan(
                          text:
                              "een smiling?\nIt's seems like it's been to long\nSome days I don't feel like triying\nSo what the fack are you on ?\n"),
                      TextSpan(
                          text: "I think too much, we dring too much",
                          style: TextStyle(color: Colors.white38))
                    ])),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1:47",
                  style: TextStyle(color: Colors.white38),
                ),
                Container(width: 300.0, child: slider()),
                Text(
                  "4:47",
                  style: TextStyle(color: Colors.white38),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            _reproductor(),
          ],
        ),
      )),
    );
  }

  Widget _reproductor() {
    return Container(
      //alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shuffle,
                color: Colors.white,
                size: 25.0,
              )),
          SizedBox(
            width: 15.0,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.fast_rewind_sharp,
                color: Colors.white,
                size: 40.0,
              )),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.play_circle_fill_sharp,
            color: Colors.blue,
            size: 60.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.fast_forward_sharp,
                color: Colors.white,
                size: 40.0,
              )),
          SizedBox(
            width: 15.0,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.queue_music_sharp,
                color: Colors.white,
                size: 35.0,
              )),
        ],
      ),
    );
  }

  Widget _swiper() {
    //final _i;
    List<String> imagenes = [
      "assets/discos/imagen_01.jpg",
      "assets/discos/imagen_02.jpg",
      "assets/discos/imagen_03.jpg"
    ];
    return Container(
      height: 300.0,
      //color: Colors.red,
      child: Column(
        children: [
          Container(
            //color: Colors.green,
            height: 290.0,
            child: Swiper(
              curve: Curves.ease,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage(imagenes[index]),
                          fit: BoxFit.cover)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 85.0,
                        width: 85.0,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.play_circle_fill,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: album.length,
              viewportFraction: 0.6,
              scale: 0.7,
            ),
          ),
        ],
      ),
    );
  }

  Widget slider() {
    return Slider.adaptive(
      value: 50,
      max: 100.0,
      min: 0.0,
      activeColor: Colors.blue,
      onChanged: (value) {},
    );
  }
}
