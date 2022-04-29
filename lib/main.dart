import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

var dark = Colors.black;
var light = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/div2.jpeg'),
                  ),
                  Text(
                    'Divyaksh',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Card(
                color: Colors.black,
                elevation: 10.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  title: Text(
                    'App Development , Python',
                    style: GoogleFonts.pacifico(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 30.0,

                      )
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 10.0,
                color: Colors.black,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  title: Text('Ajay Kumar Garg Engineering College',
                      style: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20.0,

                        )
                      ),

                      //-------------------------------------------------------------//
                      // Container(
                      //   width: 80.0,
                      //   height: 80.0,
                      //   child: Image.asset(
                      //     "images/divyaksh.jpeg",
                      //     width: 80.0,
                      //     height: 80.0,
                      //   ),
                      //   decoration: const BoxDecoration(
                      //     //shape: BoxShape.circle,
                      //     borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      //   ),
                      // ),
                      //-------------------------------------------------------------------------//

                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
