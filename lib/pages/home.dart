import 'package:flutter/widgets.dart';
import 'package:flutter_app/layout.dart';

class HomePage extends StatelessWidget{

 static String tag = 'home-page';
  @override
   Widget build(BuildContext context){
     final content = Center(
                     child: Text("Opa willian teste"),
                     );
     return Layout.getContent(context, content);
   }
}