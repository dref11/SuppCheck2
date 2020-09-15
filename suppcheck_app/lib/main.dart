import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuppCheck',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SuppCheck'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget createMainPageButtons(String title) {
    return ButtonTheme(
      child: RaisedButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FirstRoute()))
        },
        child: Text(title),
        color: Color.fromARGB(255, 66, 108, 73),
        textColor: Colors.white,
        highlightColor: Colors.grey,
        elevation: 5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height - 50),
              color: Color.fromARGB(255, 66, 108, 73),
              child: Image.asset('assets/images/SuppCheck (1).gif'),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    createMainPageButtons('Login'),
                    createMainPageButtons('Sign up'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: 'E-mail',
                    fillColor: Colors.green,
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide())),
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              )
            ])));
  }
}
