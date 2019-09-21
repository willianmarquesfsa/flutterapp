import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
import 'package:flutter_app/pages/home.dart';


class Settings extends StatelessWidget {
static String tag = 'HomePage';

  @override
  Widget build(BuildContext context){

    final content =  Center (
                     child: (Text('Pagina de configuração')),);
    return Layout.getContent(context, content);
  }
}