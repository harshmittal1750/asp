import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  String stringResponse;

  Future fetchData() async {
    http.Response response;
    response = await http.get('https://thegrowingdeveloper.org/apiview?id=4');
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
      });
    }
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch data from internet'),
        backgroundColor: Colors.blue[900],
      ),
      body: Text(
        stringResponse.toString(),
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
