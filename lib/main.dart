import 'package:flutter/material.dart';
import 'pages/home.dart';


void main() => runApp(ComprasApp());

class ComprasApp extends StatelessWidget{

final routes = <String, WidgetBuilder> {
  HomePage.tag: (context) => HomePage()
};
//teste
@override
Widget build(BuildContext context) {

return MaterialApp(
       title: "ComprasApp",
       theme: ThemeData(
              primaryColorDark: Colors.blueGrey,
              accentColor: Colors.grey[200],
              textTheme: TextTheme(
                         headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                         title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.blueGrey),
                         body1: TextStyle(fontSize: 14,)

                        
          )
  ),
        home: HomePage(),
        routes: routes,
);

}

}

