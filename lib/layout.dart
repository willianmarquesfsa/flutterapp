import 'package:flutter/material.dart';

class Layout {

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
                                     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Sobre")),
                                     ],
                                     
                ),
                body: content,

              );

}

}