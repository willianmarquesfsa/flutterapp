import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'pages/about.dart';
import 'pages/home.dart';
import 'pages/settings.dart';

class Layout {

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    Settings.tag,
  ];

  static int currItem = 1;
static Scaffold getContent(BuildContext context, content) {

return Scaffold(appBar:AppBar(
                       backgroundColor: Color.fromRGBO(150, 150, 150, 1), 
                       title: Center(child: Text("Conograma"),
                       ),
                       ),
                
                bottomNavigationBar: BottomNavigationBar(

                                     currentIndex: currItem,
                                     items: <BottomNavigationBarItem>[
                                     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
                                     BottomNavigationBarItem(icon: Icon(Icons.question_answer), title: Text("Sobre")),
                                     BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Configurações")),
                                     ],
                                     onTap: (int i) {
                                                     currItem = 1;
                                                    Navigator.of(context).pushNamed(pages[i]);},
                                     
                ),
                body: content,

              );

}

}