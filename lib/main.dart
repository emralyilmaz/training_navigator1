import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Temel(),
    ));

class Temel extends StatefulWidget {
  @override
  _TemelState createState() => _TemelState();
}

class _TemelState extends State<Temel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlk Sayfa"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Yansayfa()));
          },
          child: Text("İkinci sayfaya geç"),
          color: Colors.green,
        ),
      ),
    );
  }
}

class Yansayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ikinci sayfa"),
      ),
      body: Center(
        child: RaisedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.backspace),
            label: Text("Geri")),
      ),
    );
  }
}
