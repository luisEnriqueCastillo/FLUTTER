import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_prueba_1/pages/player_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 20, 32, 1.0),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              //Encabezado
              Container(
                margin: EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  children: [
                    Text(
                      "Discover",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    CircleAvatar(
                      radius: 28.0,
                      backgroundImage: AssetImage("assets/discos/avatar.jpg"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              //Search
              search(),
              SizedBox(
                height: 45.0,
              ),

              historias(),

              SizedBox(
                height: 50.0,
              ),
              //SSccion 2
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured PlayList",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              //Mini Histories
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    todayHits(
                        "Study",
                        "assets/album/imagen_01.jpg",
                        Color.fromRGBO(74, 1, 242, 1.0),
                        Color.fromRGBO(248, 0, 209, 1.0)),
                    todayHits(
                        "Hip-Hop",
                        "assets/album/imagen_02.jpg",
                        Color.fromRGBO(250, 159, 22, 1.0),
                        Color.fromRGBO(254, 6, 83, 1.0)),
                  ],
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              //Seccion 2

              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today Hits",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              //seccion discos

              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlayerPage()),
                        );
                      },
                      child: Container(
                        child: discoMusical("assets/discos/imagen_01.jpg",
                            "Goodbyes", "Post Malone"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlayerPage()),
                        );
                      },
                      child: Container(
                        child: discoMusical("assets/discos/imagen_02.jpg",
                            "Cold", "Rich Brian"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlayerPage()),
                        );
                      },
                      child: Container(
                        child: discoMusical("assets/discos/imagen_03.jpg",
                            "Fack Im Lonely", "Lauv"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget discoMusical(String ima, String can, String aut) {
    return Column(
      children: [
        Container(
          height: 110.0,
          width: 116.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ima),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 55.0,
                width: 55.0,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.play_circle_fill,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(can,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5.0,
            ),
            Text(aut,
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 14.0,
                  //fontWeight: FontWeight.bold
                )),
          ],
        )
      ],
    );
  }

  Widget todayHits(String titulo, String image, Color color1, Color color2) {
    return Container(
      height: 80.0,
      width: 180.0,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondos/fondo_02.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
          /*
          gradient: LinearGradient(tileMode: TileMode.mirror, colors: [
            Colors.cyan,
            Colors.deepPurpleAccent,
            Colors.purple,
            Colors.pink
          ])*/

          boxShadow: [
            BoxShadow(
                color: color1,
                blurRadius: 10.0,
                spreadRadius: 0.25,
                offset: Offset(-0.1, 3.0))
          ]),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(tileMode: TileMode.mirror, colors: [
              color1.withOpacity(0.9),
              color2.withOpacity(0.9),
            ])),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.,

          children: [
            SizedBox(width: 18.0),
            Container(
              height: 55.0,
              width: 55.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            SizedBox(
              width: 18.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5.0,
                ),
                Text("86 songs",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget historias() {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      height: 150.0,
      width: double.infinity,
      //color: Colors.amber,
      child: ListView(
        scrollDirection: Axis.horizontal,
        //shrinkWrap: true,
        children: [
          listaDayly("Daily Mix", "assets/discos/imagen_031.jpg",
              Colors.pink.shade200),
          SizedBox(width: 20.0),
          listaDayly("Daily Mix", "assets/discos/imagen_021.jpg",
              Colors.blue.shade800),
          SizedBox(width: 20.0),
          listaDayly("Daily Mix", "assets/discos/imagen_01.jpg",
              Colors.yellow.shade200),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
        margin: EdgeInsets.only(left: 18.0, right: 18.0),
        height: 50.0,
        child: RoundedTextField(
          hintText: "Serach something here",
          icon: Icons.search,
          color: Colors.white24,
          backgroundColor: Colors.white12,
          onChanged: (value) {},
        ));
  }

  Widget listaDayly(String texto, String img, Color color01) {
    return Container(
      width: 250.0,
      height: 125.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            gradient: LinearGradient(colors: [
              color01.withOpacity(0.45),
              color01.withOpacity(0.45),
              //color01.withOpacity(0.45),
              //color03.withOpacity(0.45)
            ])),
        child: Text(
          texto,
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  const RoundedTextField(
      {Key? key,
      this.hintText,
      this.icon,
      this.onChanged,
      this.color = Colors.white,
      this.backgroundColor = Colors.blueAccent,
      this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(36),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: color,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: color,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: color),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
