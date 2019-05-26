import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_theme_helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeHelper>(
      builder: (BuildContext context) => ThemeHelper(ThemeData.dark()),
      child: MyMaterialApp(),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeHelper = Provider.of<ThemeHelper>(context);

    return MaterialApp(
      theme: themeHelper.getTheme(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeHelper = Provider.of<ThemeHelper>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () => themeHelper.setTheme(ThemeData.light()),
            child: Text('Light Theme'),
          ),
          FlatButton(
            onPressed: () => themeHelper.setTheme(ThemeData.dark()),
            child: Text('Dark Theme'),
          ),
        ],
      ),
    );
  }
}
