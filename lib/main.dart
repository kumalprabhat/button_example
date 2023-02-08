import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _volume = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Add Clicked')));
          },
              icon: Icon(Icons.add)),
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Person Clicked')));
          }, icon: Icon(Icons.camera_alt))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Text button clicked."),
                    ));
                  },
                  child: Text('Text Button')),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: Text('Eleveted Button'),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Eleveted Button Clicked.')
                  ));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed:(){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Floating button clicked')));
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: OutlinedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Outlined Button Clicked.')
                    ));
                  }, 
                  child: Text('Outlined Button')
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                highlightColor: Colors.blue,
                child: Icon(Icons.ring_volume, size: 50.0,),
                onTap: (){
                  setState(() {
                    _volume += 2;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
