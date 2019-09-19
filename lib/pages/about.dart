import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
//import 'package:flutter_app/pages/home.dart';


class MyWidget extends StatelessWidget {
static String tag = 'HomePage';

  @override
  Widget build(BuildContext context){

    final content =  Center (
                     child: (Text('teste')),);
    return Layout.getContent(context, content);
  }
}