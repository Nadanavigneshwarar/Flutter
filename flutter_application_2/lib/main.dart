import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Nadana App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Icon Button Click');
          },
        ),
        title: Text('Nadana App1'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('Nadana');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print('Nadana');
            },
            icon: Icon(Icons.more),
          )
        ],
        flexibleSpace: Icon(
          Icons.camera,
          color: Colors.red,
          size: 55.0,
          
        ),
        bottom:  PreferredSize(
         child: Container(
          color:Colors.green,height: 70.0,width:double.infinity,),
        preferredSize: Size.fromHeight(70.0),),
      ),
         bottomSheet: PreferredSize(
         child: Container(
          color:Colors.green,height: 70.0,width:double.infinity,child: Text('Nadana',style: TextStyle(color: Colors.blue),),),
        preferredSize: Size.fromHeight(70.0),),
    
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
