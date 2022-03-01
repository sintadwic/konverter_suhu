import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();
    double _inputUser = 0;
    double _kelvin = 0;
    double _reamor = 0;

  konversi() {
    setState(() {
          _inputUser = double.parse(etInput.text);
          _reamor = 4 / 5 * _inputUser;
          _kelvin = _inputUser + 273;
        });
      }
    
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text("Konverter Suhu"),
            ),
            body:Container(
              margin: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
              decoration: InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
              keyboardType: TextInputType.number,
              controller: etInput,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Suhu Dalam Kelvin", style: TextStyle(fontSize: 15)),
                      Text("$_kelvin", style: TextStyle(fontSize: 30)),
                    ],
                    ),
                  Column(
                    children: [
                      Text("Suhu Dalam Reamor",style: TextStyle(fontSize: 15)),
                      Text("$_reamor",style: TextStyle(fontSize: 30)),
                    ],
                    ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: konversi,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text("Konversi Suhu"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}