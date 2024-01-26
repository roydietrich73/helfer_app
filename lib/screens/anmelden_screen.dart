import 'package:flutter/material.dart';


//// const FigmaToCodeApp({super.key});

 /*///@override
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
//}*/

class AnmeldenLogin extends StatelessWidget {
  const AnmeldenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: -106,
                top: 0,
                child: SizedBox(
                  width: 619,
                  height: 800,
                child: Image.asset(
                      'assets/images/titelbild.png',                 
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
                            const SizedBox(
                              width: 25,
                              height: 25,
                              child: Stack(children: []),
                            ),
                            const SizedBox(
                              width: 26,
                              height: 20,
                              child: Stack(children: []),
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
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15.18,
                        top: 16.06,
                        child: SizedBox(
                          width: 269.94,
                          height: 270.49,
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
                      ),
                      Positioned(
                        left: 124.80,
                        top: 300,
                        child: SizedBox(
                          width: 22.07,
                          height: 40.08,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.90),
                            child: const Text(
                              'H',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 95.14,
                        top: 291.53,
                        child: SizedBox(
                          width: 16.39,
                          height: 40.05,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.71),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74.15,
                        top: 281.09,
                        child: SizedBox(
                          width: 7.13,
                          height: 40.02,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.59),
                            child: const Text(
                              'l',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 62.92,
                        top: 273.81,
                        child: SizedBox(
                          width: 9.27,
                          height: 40,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.49),
                            child: const Text(
                              'f',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 49.88,
                        top: 263.52,
                        child: SizedBox(
                          width: 16.42,
                          height: 39.97,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.35),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32.94,
                        top: 245.60,
                        child: SizedBox(
                          width: 17.15,
                          height: 39.94,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.19),
                            child: const Text(
                              'n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.71,
                        top: 224.37,
                        child: SizedBox(
                          width: 17.88,
                          height: 39.90,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-2.02),
                            child: const Text(
                              'd',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8.10,
                        top: 200.41,
                        child: SizedBox(
                          width: 16.46,
                          height: 39.88,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-1.85),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2.36,
                        top: 177.57,
                        child: SizedBox(
                          width: 7.16,
                          height: 39.86,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-1.72),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.10,
                        top: 162.79,
                        child: SizedBox(
                          width: 22.19,
                          height: 39.86,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-1.58),
                            child: const Text(
                              'H',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1.04,
                        top: 131.80,
                        child: SizedBox(
                          width: 16.46,
                          height: 39.87,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-1.39),
                            child: const Text(
                              'ä',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6.13,
                        top: 107.61,
                        child: SizedBox(
                          width: 17.17,
                          height: 39.88,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-1.22),
                            child: const Text(
                              'n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15.47,
                        top: 83.79,
                        child: SizedBox(
                          width: 17.87,
                          height: 39.91,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-1.05),
                            child: const Text(
                              'd',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29.09,
                        top: 61.42,
                        child: SizedBox(
                          width: 16.43,
                          height: 39.95,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-0.88),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 44.55,
                        top: 43.73,
                        child: SizedBox(
                          width: 7.14,
                          height: 39.98,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-0.76),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 55.67,
                        top: 33.04,
                        child: SizedBox(
                          width: 26.38,
                          height: 40.02,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-0.59),
                            child: const Text(
                              'm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 86.03,
                        top: 14.38,
                        child: SizedBox(
                          width: 16.38,
                          height: 40.06,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-0.39),
                            child: const Text(
                              'a',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 108.90,
                        top: 5.79,
                        child: SizedBox(
                          width: 15.66,
                          height: 40.08,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-0.23),
                            child: const Text(
                              'c',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 132.22,
                        top: 1.05,
                        child: SizedBox(
                          width: 17.08,
                          height: 40.09,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-0.06),
                            child: const Text(
                              'h',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 157.50,
                        top: 0.21,
                        child: SizedBox(
                          width: 16.37,
                          height: 40.09,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.11),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 181.86,
                        top: 3.46,
                        child: SizedBox(
                          width: 17.09,
                          height: 40.07,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.27),
                            child: const Text(
                              'n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 204.97,
                        top: 10.73,
                        child: SizedBox(
                          width: 7.12,
                          height: 40.05,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.40),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 218.15,
                        top: 16.47,
                        child: SizedBox(
                          width: 17.82,
                          height: 40.03,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.53),
                            child: const Text(
                              'd',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240.24,
                        top: 30.41,
                        child: SizedBox(
                          width: 16.41,
                          height: 39.99,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.70),
                            child: const Text(
                              'a',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 258.47,
                        top: 46.74,
                        child: SizedBox(
                          width: 15.71,
                          height: 39.96,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.86),
                            child: const Text(
                              's',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 272.69,
                        top: 64.45,
                        child: SizedBox(
                          width: 7.15,
                          height: 39.93,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(0.99),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 280.43,
                        top: 76.41,
                        child: SizedBox(
                          width: 16.45,
                          height: 39.90,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.11),
                            child: const Text(
                              'L',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 290.75,
                        top: 98.76,
                        child: SizedBox(
                          width: 16.46,
                          height: 39.88,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.27),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 297.39,
                        top: 122.65,
                        child: SizedBox(
                          width: 17.89,
                          height: 39.86,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.44),
                            child: const Text(
                              'b',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 148.75,
                        child: SizedBox(
                          width: 16.46,
                          height: 39.86,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.61),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 298.37,
                        top: 173.42,
                        child: SizedBox(
                          width: 17.18,
                          height: 39.87,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.78),
                            child: const Text(
                              'n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 292.66,
                        top: 197.08,
                        child: SizedBox(
                          width: 7.15,
                          height: 39.88,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.90),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 288.10,
                        top: 209.45,
                        child: SizedBox(
                          width: 7.15,
                          height: 39.90,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.99),
                            child: const Text(
                              'l',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282.15,
                        top: 222.41,
                        child: SizedBox(
                          width: 16.44,
                          height: 39.92,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.12),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269.34,
                        top: 242.13,
                        child: SizedBox(
                          width: 7.14,
                          height: 39.95,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.24),
                            child: const Text(
                              'i',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260.42,
                        top: 253.12,
                        child: SizedBox(
                          width: 15.70,
                          height: 39.98,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.36),
                            child: const Text(
                              'c',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 243.01,
                        top: 269.43,
                        child: SizedBox(
                          width: 17.11,
                          height: 40.01,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.53),
                            child: const Text(
                              'h',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 222.49,
                        top: 282.97,
                        child: SizedBox(
                          width: 9.98,
                          height: 40.04,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.67),
                            child: const Text(
                              't',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 206.89,
                        top: 290.65,
                        child: SizedBox(
                          width: 16.38,
                          height: 40.06,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.81),
                            child: const Text(
                              'e',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 184.16,
                        top: 297.83,
                        child: SizedBox(
                          width: 10.68,
                          height: 40.08,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(2.95),
                            child: const Text(
                              'r',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 4.80,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
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
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Google',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
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
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Apple',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
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
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 10,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Registrieren',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 117,
                top: 617,
                child: Text(
                  'Noch kein Konto?',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
