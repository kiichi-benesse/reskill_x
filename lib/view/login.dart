import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String login_id = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/ロゴ.png'),
            const Text('ログインID'),
            SizedBox(
              width:250,
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  hintText: 'abc@email.com',
                ),
                onChanged: (text){
                  login_id = text;
                },
              ),
            ),
            const Text('パスワード'),
            SizedBox(
              width:250,
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  border: OutlineInputBorder(),
                  hintText: 'Your Password',
                ),
                onChanged: (text){
                  password = text;
                },
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: (){
                print('login_id');
                print(login_id);
                print('password');
                print(password);
              },
              child: const Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}
