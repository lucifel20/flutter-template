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
        title: APP_TITLE,
      ),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatefulWidget {
  HomeRoute({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeRoute createState() => _HomeRoute();
}

class _HomeRoute extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ), // AppBar()
      body: SafeArea(
        child: FlutterLogo(),
      ), // SafeArea()
    ); // Scaffold()
  }
}
