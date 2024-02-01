import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/presentation/login_apple.dart';
import 'package:helfer_app/features/authentification/presentation/login_google.dart';
import 'package:helfer_app/features/authentification/presentation/login_screen.dart';
import 'package:helfer_app/features/authentification/presentation/registrieren.dart';


class AnmeldenLogin extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ), 
      home: Scaffold(
        body:Stack(
                alignment: Alignment.topCenter,
              children: [
                Opacity(opacity: 0.2,  
                  child: Image.asset(
                        'assets/hintergrund.png',                 
                        fit: BoxFit.fill,
                      ),
                ),
                const SizedBox(height: 50.0,),
                ListView(
                  children:[          
                Container(
                    width: 270,
                    height: 270,
                      child:
                       Image.asset('assets/logo.png'),
                      ),
                      const SizedBox(height: 50.0,),
                      SizedBox(
                        width:  150,
                        height: 40,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromRGBO(246, 146, 4, 1.0),
                          shadowColor: Colors.grey
                           
                        ), 
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily:'Roboto flex',
                              fontSize: 16.0,
                              color:Colors.black),
                            ),
                        ), 
                      ),
                      const SizedBox(height: 24.0,),
                      SizedBox(
                        width: 150,
                        height: 40,
                      child:                  
                      ElevatedButton(
                          onPressed: () {
                             Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginGoogle()),
                             );
                          },
                            style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromRGBO(246, 146, 4, 1.0),
                          shadowColor: Colors.grey,
                        ),
                            child:  const Text('Login mit Google',
                            style:TextStyle(
                              fontFamily:'Roboto flex',
                              fontSize: 16.0,
                              color: Colors.black)),
                        ),
                      ),
                      const SizedBox(height: 24.0,),
                       SizedBox(
                        width: 150,
                        height: 40,                       
                      child: ElevatedButton(
                          onPressed: () {
                             Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginApple()),
                             );
                          },
                           style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromRGBO(246, 146, 4, 1.0),
                          shadowColor: Colors.grey,
                        ),
                            child: const Text('Login mit Apple',
                            style: TextStyle(
                              fontFamily:'Roboto flex',
                              fontSize: 16.0,
                              color: Colors.black),
                            ),
                            ),
                      ),
                      const SizedBox(height: 48.0,),
                              const Text('Noch kein Konto?', style: TextStyle(fontSize:16),),                    
                      SizedBox(
                        width: 150,
                        height:40,                    
                      child:ElevatedButton(
                          onPressed:() {
                             Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Registrieren()),
                             );
                          },
                           style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromRGBO(246, 146, 4, 1.0),
                          shadowColor: Colors.grey,
                        ),
                            child:  const Text('Registrieren',
                            style:TextStyle(
                              fontFamily:'Roboto flex',
                              fontSize: 16.0,
                              color: Colors.black),
                            ),
                            ),
                      ),
              ],),],
          ),
        ),
    );
  }
         

 
}
