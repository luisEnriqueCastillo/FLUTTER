import 'package:flutter/material.dart';
import 'package:flutter_bbva/page/footer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  _appbarCabecera(),

      body: Stack(
        children: [
          /*COLOR AZUL */
          Positioned(
            child: Container(
              color:  Color.fromRGBO(229, 240, 246, 1.0),
             
            ),
          ),

          Container(
            width: double.infinity,
            height: 125.0,
            color: Color.fromRGBO(0, 68, 129, 1.0),
          ),
                  /*TUS TARJETAS */
            Positioned(
              left: 15.0,
              right: 15.0,
              top:20.0,
             child: Container(
              //height: 200,
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 25.0),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color:  Colors.white,
                boxShadow: [
                    BoxShadow(
                     color: Colors.black26,
                     blurRadius: 8.0,
                     spreadRadius: 0.5,
                     offset: Offset(0.0, 2.0)
                   )
                ],
              ),

              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Text("TUS CUENTAS",style: TextStyle(
                            fontFamily: 'Euclid',
                            color: Color.fromRGBO(0, 68, 129, 1.0),
                            //fontWeight: FontWeight.bold,
                            fontSize: 15.0
                          ), ),
                        Spacer(),
                        Icon(Icons.more_horiz,size: 35.0,color: Color.fromRGBO(180, 200, 217, 1.0),),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      _cuentas("001ah7297","*37265","20,00"),
                      Divider(),
                      _cuentas("001ah7297","*36264","158,000"),
                      ],                    
                  )
                 ,
                
                ],
              ),
              
             ),
           ),
           
           Positioned(
             top:MediaQuery.of(context).size.height *.276 ,
             left: 0.0,
             right: 0.0,
             //bottom: 400.0,

             child: Container(
               //padding: EdgeInsets.symmetric(horizontal: 20.0),
               width: double.infinity,
               height: 139.0,
               
               decoration: BoxDecoration(
                 color: Colors.white,
                /* boxShadow: [
                   BoxShadow(
                     color: Colors.grey.shade300,
                     blurRadius: 15.0,
                     spreadRadius: 1.0,
                     offset: Offset(2.0, 2.0)
                   )
                 ],*/
               ),
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   SizedBox(width: 20.0,),
                    _circulos(Icons.add,Color.fromRGBO(247, 137, 58, 1.0) , "Oportunidades"),
                    _circulos(Icons.swap_horiz,Color.fromRGBO(76, 171, 206, 1.0) , "Transferir"),
                    _circulos(Icons.attach_money_outlined,Color.fromRGBO(73, 209, 124, 1.0) , "Retiro sin tarjeta"),
                    _circuloPersonalizado(Color.fromRGBO(115, 95, 218, 1.0) , "Pagar Servicio"),
                   
                 ],)
             ),
           ),

            Positioned(
             top:MediaQuery.of(context).size.height *.449 ,
             left: 0.0,
             right: 0.0,
             //bottom: 400.0,  
             child: Container(
               width: double.infinity,
               height: 310.0,
               color: Colors.white,
               child:Column(
                 //mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     margin: EdgeInsets.only(top: 28.0,right: 25.0,left: 45.0,bottom: 3.0),
                     child:
                        Text("Tus tarjetas",style: TextStyle(
                            fontFamily: 'Euclid',
                            color: Color.fromRGBO(0, 68, 129, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                          ), ),
                   ),
                   
                  Container(
                    height: 230.0,
                    //color: Colors.amber,
                    width: double.infinity,
                    
                    child: ListView(
                       scrollDirection: Axis.horizontal,
                      children: [
                          _tarjetaAzul(),
                          _tarjetaBlanca(),
                          _tarjetaAzul(),
                          _tarjetaBlanca(),
                        ],

                    ),
                  ),
                 ],
               ),
             ),
           ),

            Align(
             alignment: Alignment.bottomLeft,
             child: Container(
               width: double.infinity,
               height: 80.0,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0) ),
               ),
               child: FooterPage(),
             ),
           )
        
        
        ],
      ),

      
    );
  }






  Widget _appbarCabecera(){
  return AppBar(
        centerTitle: true,
        leading: _iconMenu(),
        backgroundColor: Color.fromRGBO(0, 68, 129, 1.0),
        elevation: 0.0,
        title:  Text("Hola, Luis Enrique",style: TextStyle(
              fontFamily: 'Euclid',
              color: Colors.white,
              //color: Color.fromRGBO(0, 68, 129, 1.0),
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ), ),

        actions: [
          _avatar(),
          SizedBox(width: 40.0,)
          //_avatar02()
        ],
      );
}

  Widget _iconMenu(){
    return Container(
      //color: Colors.white,
      child: Image(
              image:AssetImage("assets/images/home/icono_blanco.png") ,
              ),
    );
  }

  Widget _avatar(){
    return CircleAvatar(
                radius: 18.5,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 16.5,
                  //backgroundColor: Colors.amber,
                  backgroundImage: AssetImage("assets/images/welcome/perfil.jpg"),
                  
                ),

                //maxRadius: 25.0,
                //minRadius: 14.0,


              );
  }

  Widget _cuentas(String serial,String number,String monto) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("$serial",style: TextStyle(
                          fontFamily: 'EuclidA',
                          color: Color.fromRGBO(24, 115, 185, 1.0), 
                          fontSize: 15.0
                        ), ),
                Text("$number",style: TextStyle(
                          fontFamily: 'EuclidA',
                          color: Color.fromRGBO(180, 200, 217, 1.0),
                          fontSize: 14.0
                        ), ),
               ],
             ),
            SizedBox(width: 120.0,),
             Text("\$$monto",style: TextStyle(
                          fontFamily: 'EuclidA',
                          color: Color.fromRGBO(0, 68, 129, 1.0), 
                          fontSize: 21.0
                        ), ),
            SizedBox(width: 20.0,),
            Spacer(),
            Container(
              //color: Colors.amber,
              child: Icon(Icons.chevron_right,size: 25.0,color: Color.fromRGBO(180, 200, 217, 1.0))
              ),
              



        ],
      ),
    );
  }

  Widget _circulos(IconData icono, Color colores,String texto){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 25.0),
      child: Column(
        children: [
          Container(
            width: 62.0,
            height: 62.0,
            decoration: BoxDecoration(
              color: colores,
              shape: BoxShape.circle,
            ),
            child: Icon(icono,color: Colors.white,size: 30.0,),
          ),
          SizedBox(height: 8.0,),
          Text("$texto",style: TextStyle(color: Color.fromRGBO(75, 99, 122, 1.0),fontFamily: "EuclidA",fontSize: 12.0),),
        ],

        
      ),
    );
  }

  Widget _circuloPersonalizado(Color colores,String texto){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 25.0),
      child: Column(
        children: [
          Container(
            width: 62.0,
            height: 62.0,
            decoration: BoxDecoration(
              color: colores,
              shape: BoxShape.circle,
            ),
            child: Image(image: AssetImage("assets/images/home/icno_rueda.png")),
            ),
          
          SizedBox(height: 8.0,),
          Text("$texto",style: TextStyle(color: Color.fromRGBO(75, 99, 122, 1.0),fontFamily: "EuclidA",fontSize: 12.0),),
        ],

        
      ),
    );
  }

  Widget _tarjetaBlanca(){
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
      child: Column(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              //margin: ,
              padding: EdgeInsets.symmetric(vertical: 22.0,horizontal: 25.0),    
              width: 220.0,//+4 230
              height: 150.0,
      
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8.0,
                  spreadRadius: 0.5,
                  offset: Offset(1.0, 4.0)

                )]
              ),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //padding: EdgeInsets.symmetric(vertical: 15.0),
                      child:Image(
                        image: AssetImage("assets/images/home/bbva_azul.png") 
                        ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                      child:Image(
                        image: AssetImage("assets/images/home/chip_1.png") 
                        ),
                  ),
                  Spacer(),
                  
                  Container(
                      //padding: EdgeInsets.symmetric(vertical: 15.0),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("*62396",style: TextStyle(color: Color.fromRGBO(0, 68, 129, 1.0),fontSize: 15.0,fontFamily: "EuclidA", fontWeight: FontWeight.bold,),),
                          Spacer(),
                          Image(
                             image: AssetImage("assets/images/home/visa_blue.png") 
                          ),
                        ],
                      )
                  ),
          
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tarjetaAzul() {
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.only(top: 25,left: 20.0,right: 20.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 22.0,horizontal: 25.0),    
            width: 250.0,//+4 230
            height: 150.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 68, 129, 1.0),
              borderRadius: BorderRadius.circular(14.0)
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //padding: EdgeInsets.symmetric(vertical: 15.0),
                    child:Image(
                      image: AssetImage("assets/images/home/bbva_blanco.png") 
                      ),
                ),
                SizedBox(height: 15.0,),
                Container(
                    child:Image(
                      image: AssetImage("assets/images/home/chip_1.png") 
                      ),
                ),
                Spacer(),
                
                Container(
                    //padding: EdgeInsets.symmetric(vertical: 15.0),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("*62396",style: TextStyle(color: Colors.white,fontSize: 15.0,fontFamily: "EuclidA", fontWeight: FontWeight.bold,),),
                        Spacer(),
                        Image(
                           image: AssetImage("assets/images/home/visa_blanco.png") 
                        ),
                      ],
                    )
                ),

              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Container(
            width: 250.0,
            //color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.credit_card, color: Color.fromRGBO(0, 68, 129, 1.0),),
                      SizedBox(width: 8.0,),
                      Text("Tarjeta digital",
                        style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(0, 68, 129, 1.0),
                              fontFamily: "EuclidA"
                            ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Row(
                    //mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Desactivar",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(0, 68, 129, 1.0),
                              fontFamily: "EuclidA"
                            ),
                            ),
                      SizedBox(width: 5.0,),
                      Icon(Icons.toggle_off,color: Color.fromRGBO(112, 123, 155, 1.0),),
                      //Image(image: AssetImage("assets/images/home/switch.png"))
             
                    ],
                  ),
                ),
                
                 ],
            ),
          ),

          Spacer(),
        ],
      ),
    );
  }
 
 }



