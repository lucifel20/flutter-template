import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const String APP_TITLE = '{{description}}';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: HomeRoute(
        appTitle: APP_TITLE,
      ),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatefulWidget {
  HomeRoute({Key key, this.appTitle}) : super(key: key);

  final String appTitle;

  @override
  _HomeRoute createState() => _HomeRoute();
}

class _HomeRoute extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
        centerTitle: true,
      ), // AppBar()
      body: SafeArea(
        child: FlutterLogo(),
      ), // SafeArea()
    ); // Scaffold()
  }
}
