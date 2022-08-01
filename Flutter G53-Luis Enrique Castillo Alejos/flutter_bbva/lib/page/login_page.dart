import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: appBar1(),

      body: Container(
        color:Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 35.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
             // InformacionPersonal
              cuerpoImage(),
              //Password
              passWord(context),
              //operaciones
              operaciones(),
            ],
          ),
        ),
      ),
    );
  }


  Widget operaciones() {
    return Container(
       width: double.infinity,
      padding: EdgeInsets.only(top:50.0,bottom: 35.0 ),
      child: Column(
        children: [
          Container(
             //color: Colors.amber,
             width: double.infinity,
             padding: EdgeInsets.only(bottom: 35.0 ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  //color: Colors.red,
                  padding:  EdgeInsets.all(1.5),
                  height: 40.16,
                  width: 40.16,
                  child:Icon(Icons.verified_user_outlined,size: 42.16,color: Color.fromRGBO(24, 115, 185, 1.0),),
                
                ),
                SizedBox(width: 18.0,),

                Text("Token móvil",style: TextStyle(
                    fontFamily: 'Euclid',
                    color: Color.fromRGBO(0, 68, 129, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                    ), 
                 ),
                
              ],
            ),

          ),


          /* ------------------------------------------------ */
          Container(
           //color: Colors.amber,
             width: double.infinity,
             padding: EdgeInsets.only(bottom: 35.0 ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  //color: Colors.red,
                  padding:  EdgeInsets.all(1.5),
                  
                  child: Icon(Icons.qr_code_scanner,size: 42.16,color: Color.fromRGBO(24, 115, 185, 1.0),),
                ),
                SizedBox(width: 18.0,),

                Text("Operación\n QR + CoDi",style: TextStyle(
                    fontFamily: 'Euclid',
                    color: Color.fromRGBO(0, 68, 129, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0
                    ), 
                 ),
                
              ],
            ),

          ),

          
          /* ------------------------------------------------ */
          Container(
            //color: Colors.amber,
             width: double.infinity,
             padding: EdgeInsets.only(bottom: 35.0 ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  //color: Colors.red,
                  padding:  EdgeInsets.all(1.5),
                  height: 40.16,
                  width: 40.16,
                  child:Icon(Icons.phone_in_talk_outlined,size: 42.16,color: Color.fromRGBO(24, 115, 185, 1.0),),
                
                ),
                SizedBox(width: 18.0,),

                Text("Línea BBVA",style: TextStyle(
                    fontFamily: 'Euclid',
                    color: Color.fromRGBO(0, 68, 129, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                    ), 
                 ),
                
              ],
            ),

          )





        ],
      ),
    );
  }

  Widget passWord(BuildContext context){
    return Container(
      //color: Colors.amber,
      width: double.infinity,
      padding: EdgeInsets.only(top:50.0,bottom: 35.0 ),
      child: Column(
        
        children: [

          TextField(
            style: TextStyle(fontFamily:'EuclidA',color: Color.fromRGBO(0, 68, 129, 1.0),fontSize: 18.0 ),
            keyboardType: TextInputType.text,
            obscureText: true,
            //textAlign: TextAlign.center,
            
            decoration: InputDecoration(
              
              //suffix: Image.asset("assets/images/welcome/icon_open_menu.png",),
              suffixIcon: Icon(Icons.visibility_off,color: Color.fromRGBO(0, 68, 129, 1.0),),

              labelText: "Contraseña ",

              labelStyle: TextStyle(
                          color:  Color.fromRGBO(0, 68, 129, 1.0),
                          fontFamily:'EuclidA',
                          fontSize: 15.5,
                           ),
                focusedBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 68, 129, 1.0),
                          width: 2.5),   
                        ),       
                         
                enabledBorder:UnderlineInputBorder(
                  borderSide:BorderSide(
                          color: Color.fromRGBO(0, 68, 129, 1.0),
                          width: 2.5), )  ,           
            ),
          ),

          SizedBox(height: 30.0,),

          GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, 'home'),
            child: Text("Olvidé mi contraseña",
                style: TextStyle(fontFamily:'EuclidA',color: Color.fromRGBO(0, 68, 129, 1.0),fontSize: 15.0 ),),
          ),

        ],
      ),
    );
  }

  Widget cuerpoImage(){
    return Column(
      children: [
        Container(
          //color: Colors.amber,
          width: double.infinity,
          padding: EdgeInsets.only(top:50.0,bottom: 35.0 ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/welcome/perfil.jpg'),
                radius: 50.0,
              ),

              SizedBox(width: 22.0),

              GestureDetector(
                child: Container(
                   height: 40.0,
                   width: 40.0,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(0, 68, 129, 1.0),
                     borderRadius: BorderRadius.circular(40.0)
                   ),
                   child: Icon(Icons.sync_alt,color: Colors.white,),
                ),

                onTap: (){},
              )

             
            ],
          ),
        ),


      Container(
        width: double.infinity,
        //height: 100.0,
        //color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hola, Luis Enrique",style: TextStyle(
              fontFamily: 'Euclid',
              color: Color.fromRGBO(0, 68, 129, 1.0),
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ), ),
            //SizedBox(height: 3.0,),
            Text("¿Que tal tu día hoy?",style: TextStyle(
              fontFamily: 'EuclidA',
              color: Color.fromRGBO(136,159, 180, 1.0),
              fontSize: 18.0
            ),)
          ],
        ),
      )

      ],
    );
  }

  Widget iconMenu(){
    return Container(
      color: Colors.white,
      child: Image(
              image:AssetImage("assets/images/welcome/icon_open_menu.png") ,
              ),
    );
  }

  Widget appBar1(){
    return AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              leadingWidth: 58.0,
              leading: iconMenu(),
              title: Image.asset("assets/images/welcome/bbva_appbar.png"),
              titleSpacing: 100.0,
              elevation: 0.0,
              );

  }

  
}