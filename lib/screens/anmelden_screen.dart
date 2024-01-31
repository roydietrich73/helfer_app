import 'package:flutter/material.dart';

import 'package:helfer_app/utils/text_style.dart';

// const FigmaToCodeApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      
      home: Scaffold(
        body: ListView(children: const [
          AnmeldenLogin(),
        ]),
      ),
    );
  }


class AnmeldenLogin extends StatelessWidget {
  const AnmeldenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
            children: [
              Positioned(
                left: -106,
                top: 0,
                child: SizedBox(            
                  height: 128,
                child: Image.asset(
                      'assets/hintergrund.png',                 
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              Positioned(
                left: 0,
                top: 50,
                child: SizedBox(
                  width: 360,
                  height: 40,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(color: Color(0x00FBECDB)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 39.58,
                                    top: 42.71,
                                    child: Container(
                                      width: 31.25,
                                      height: 29.17,
                                      decoration: ShapeDecoration(
                                        color: Colors.white.withOpacity(0),
                                        shape: const OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 716,
                child: SizedBox(
                  width: 360,
                  height: 44,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360,
                        height: 44,
                        padding: const EdgeInsets.only(
                          top: 3.08,
                          left: 36.97,
                          right: 36.69,
                          bottom: 3.29,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(color: Color(0x00FBECDB)),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 100,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      bosh,
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15.18,
                        top: 16.06,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 269.94,
                                  height: 270.49,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/270x270"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(190),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 269.94,
                                  height: 270.49,
                                  decoration: const ShapeDecoration(
                                    color: Color(0x33D9D9D9),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      
              Positioned(
                left: 49,
                top: 410,
                child: Container(
                  width: 260,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4CF9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      bosh,
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: ts16,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 474,
                child: Container(
                  width: 260,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4CF9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      bosh,
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Google',
                        style: ts16,                        
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 538,
                child: Container(
                  width: 260,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4CF9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                     bosh,
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Apple',
                         style:ts16,
                      ), 
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 636,
                child: Container(
                  width: 260,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4CF9C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const[
                      bosh,
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Registrieren',
                        style: ts16,
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 117,
                top: 617,
                child: Text(
                  'Noch kein Konto?',
                  style: ts16,
                ),
              ),
            ],
          ),
        ),
              ),
      ],);
  }

  TextStyle get newTextStyle => ts16;
}
