import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
import 'package:flutter_app/pages/home.dart';


class SettingsPages extends StatelessWidget {
static String tag = 'settings-pages';

  @override
  Widget build(BuildContext context){

    final content =  Center (
                     child: (Text('Pagina de configuração')),);
    return Layout.getContent(context, content);
  }
}