import 'package:dsi_app/view/word_pair_view.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DSIApp());
}

///Classe principal que representa o App.
class DSIApp extends StatelessWidget {
  ///Constrói o App e suas configurações.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSI App (BSI UFRPE)',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      initialRoute: HomePage.routeName,
      routes: _buildRoutes(context),
    );
  }

  ///Método utilizado para configurar as rotas.
  Map<String, WidgetBuilder> _buildRoutes(BuildContext context) {
    return {
      WordPairUpdatePage.routeName: (context) => WordPairUpdatePage(),
    };
  }
}
