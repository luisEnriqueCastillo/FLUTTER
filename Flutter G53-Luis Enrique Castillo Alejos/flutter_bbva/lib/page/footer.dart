import 'package:flutter/material.dart';

class FooterPage extends StatefulWidget {
  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  bool icon_1=true;
  bool icon_2=false;
  bool icon_3=false;
  bool icon_4=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
     children: [
       _listaBoton1(Icons.other_houses_outlined, icon_1,),
      
      _listaBoton2(Icons.favorite_outline_sharp, icon_2,),
      
       _listaBoton3(Icons.add_circle_outline, icon_3,),
      
      _listaBoton4(Icons.mail_outline, icon_4,),
      
     ],
    );
  }

Widget _listaBoton1(IconData iconos,bool valor1,){
   return Stack(
     children: [
      GestureDetector(
         child: Container(
           height: 70,
           width: 60,
           color: Colors.white,
           child: Icon(iconos,color:valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Color.fromRGBO(134, 166, 195, 1.0),size: 35.0,),
         ),
         onTap: (){
             icon_1=true;
             icon_2=false;
             icon_3=false;
             icon_4=false;
             setState(() {
               
             });
         },
       ),
       
         Positioned(
           bottom: 0.0,
          // right: 0.0,
           left: 25.0,
           child: CircleAvatar(
             radius: 6.0,
             backgroundColor: valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Colors.white,
           ),
         ),
       
     ],
   );
}


Widget _listaBoton2(IconData iconos, bool valor1,){
   return Stack(
     children: [
       GestureDetector(
         child: Container(
           height: 70,
           width: 60,
           color: Colors.white,
           child: Icon(iconos,color:valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Color.fromRGBO(134, 166, 195, 1.0),size: 35.0,),
         ),
         onTap: (){
             icon_1=false;
             icon_2=true;
             icon_3=false;
             icon_4=false;
             setState(() {
               
             });
         },
       ),
       
         Positioned(
           bottom: 0.0,
          // right: 0.0,
           left: 25.0,
           child: CircleAvatar(
             radius: 6.0,
             backgroundColor: valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Colors.white,
           ),
         ),
       
     ],
   );
}


Widget _listaBoton3(IconData iconos, bool valor1,){
   return Stack(
     children: [
       GestureDetector(
         child: Container(
           height: 70,
           width: 60,
           color: Colors.white,
           child: Icon(iconos,color:valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Color.fromRGBO(134, 166, 195, 1.0),size: 35.0,),
         ),
         onTap: (){
             icon_1=false;
             icon_2=false;
             icon_3=true;
             icon_4=false;
             setState(() {
               
             });
         },
       ),
       
         Positioned(
           bottom: 0.0,
          // right: 0.0,
           left: 25.0,
           child: CircleAvatar(
             radius: 6.0,
             backgroundColor: valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Colors.white,
           ),
         ),
       
     ],
   );
}


Widget _listaBoton4(IconData iconos, bool valor1,){
   return Stack(
     children: [
        GestureDetector(
         child: Container(
           height: 70,
           width: 60,
           color: Colors.white,
           child: Icon(iconos,color:valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Color.fromRGBO(134, 166, 195, 1.0),size: 35.0,),
         ),
         onTap: (){
             icon_1=false;
             icon_2=false;
             icon_3=false;
             icon_4=true;
             setState(() {
               
             });
         },
       ),
       
         Positioned(
           bottom: 0.0,
          // right: 0.0,
           left: 25.0,
           child: CircleAvatar(
             radius: 6.0,
             backgroundColor: valor1 ? Color.fromRGBO(0, 68, 129, 1.0) : Colors.white,
           ),
         ),
       
     ],
   );
}

}