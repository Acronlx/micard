import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//var dark = Colors.black;
//var light = Colors.white;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, AsyncSnapshot snapshot) => MaterialApp(
          theme: snapshot.data ? ThemeData.dark() : ThemeData.light() ,
        home: HomePage(snapshot.data)
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  final bool darkThemeEnabled;

  HomePage(this.darkThemeEnabled);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Dark theme'),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: Bloc().changeTheme,
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('MI CARD'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
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
                Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.construction,
                          color: Colors.white,
                          // color: iconColor,
                        ),
                        title: Text(
                          "app development, python",
                          style: GoogleFonts.bebasNeue(
                              textStyle: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                wordSpacing: 2.0,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.05,
                              )),
                        ),
                        subtitle: const Text(
                          "Skills",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.school,
                          color: Colors.white,
                          // color: iconColor,
                        ),
                        title: Text(
                          "Ajay kumar garg engineering college",
                          style: GoogleFonts.bebasNeue(
                              textStyle: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                wordSpacing: 2.0,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.045,
                              )),
                        ),
                        subtitle: const Text(
                          "College",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.menu_book,
                          color: Colors.white,
                          // color: iconColor,
                        ),
                        title: Text(
                          "Bachelor of Technology",
                          style: GoogleFonts.bebasNeue(
                              textStyle: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                wordSpacing: 2.0,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.05,
                              )),
                        ),
                        subtitle: const Text(
                          "Course",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.library_books,
                          color: Colors.white,
                          // color: iconColor,
                        ),
                        title: Text(
                          "electrical & electronics engineering",
                          style: GoogleFonts.bebasNeue(
                              textStyle: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                wordSpacing: 2.0,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.045,
                              )),
                        ),
                        subtitle: const Text(
                          "Branch",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.call,
                          color: Colors.white,
                          // color: iconColor,
                        ),
                        title: Text(
                          "+91 75001 68044",
                          style: GoogleFonts.bebasNeue(
                            textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              wordSpacing: 2.0,
                              fontSize:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.05,
                            ),
                          ),
                        ),
                        subtitle: const Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.email,
                          color: Colors.white,
                          // color: iconColor,
                        ),
                        title: Text(
                          "divyaksh1552002@gmail.com",
                          style: GoogleFonts.bebasNeue(
                            textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              wordSpacing: 2.0,
                              fontSize:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.05,
                            ),
                          ),
                        ),
                        subtitle: const Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}


class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();

     