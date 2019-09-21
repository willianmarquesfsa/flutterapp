import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'pages/about.dart';
import 'pages/home.dart';
import 'pages/settings.dart';

class Layout {

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPages.tag,
  ];

  static int currItem = 1;
static Scaffold getContent(BuildContext context, content) {

return Scaffold(appBar:AppBar(
                       actions: <Widget>[GestureDetector(onTap: () {
                                                                showDialog(
                                                                context: context,
                                                                barrierDismissible: false,
                                                                builder: (BuildContext ctx) {
                                                                  return AlertDialog(title: Text("Nome da sua lista"),
                                                                 actions: <Widget>[RaisedButton(child: Text('ok'),
                                                                                   onPressed:() {
                                                                                   Navigator.of(ctx).pop();
                                                                 },
                                                                 )
                                                                 
                                                                 ],
                                                                 );
                       
                                                                },
                                                                
                                                                );
                                                                },
                                                                ),
                                         Padding(padding: EdgeInsets.only(right: 30)), 
                                         ],
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
                                                     currItem = i;
                                                    Navigator.of(context).pushNamed(pages[i]);
                                                    },
                                     
                ),
                body: content,

              );






}


static Color primary([double opacity = 1 ]) => Color.fromRGBO(62, 63, 89, opacity);
static Color secundary([double opacity = 1 ]) => Color.fromRGBO(111, 168, 191, opacity);
static Color ligth([double opacity = 1 ]) => Color.fromRGBO(242, 234, 228, opacity);
static Color dark([double opacity = 1 ]) => Color.fromRGBO(51, 51, 51, opacity);
static Color danger([double opacity = 1 ]) => Color.fromRGBO(217, 74, 74, opacity);
static Color success([double opacity = 1 ]) => Color.fromRGBO(6, 166, 59, opacity);
static Color info([double opacity = 1 ]) => Color.fromRGBO(0, 122, 166, opacity);
static Color warning([double opacity = 1 ]) => Color.fromRGBO(166, 134, 0, opacity);

}

