import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(), debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 48.0, 24.0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('ইউনিয়ন ব্যাংকের ডিজিটাল সেবা',
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('UniON',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple)),
                  SizedBox(width: 4.0),
                  Text('এ আপনাকে স্বাগতম',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Image.asset(
                'images/union_logo.png',
                height: 40,
              ),
              SizedBox(
                height: 16.0,
              ),
              Center(
                child: Card(
                  elevation: 8.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 6.0),
                          child: Text('Please enter your ID & Password',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('images/user.png'),
                                  SizedBox(width: 12.0),
                                  new Flexible(
                                      child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'iBanking ID',
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.auto,
                                        contentPadding:
                                            EdgeInsets.fromLTRB(12, 0, 12, 0)),
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Image.asset('images/lock.png'),
                                  SizedBox(width: 12.0),
                                  new Flexible(
                                      child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: 'Password',
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.auto,
                                        contentPadding:
                                            EdgeInsets.fromLTRB(12, 0, 12, 0)),
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.purple,
                                          value: this.checkboxValue,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.checkboxValue = value;
                                            });
                                          },
                                        ),
                                        Text('Remember me',
                                            style: TextStyle(fontSize: 16.0)),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: 36,
                                        child: new MaterialButton(
                                          onPressed: () {},
                                          color: Colors.purple,
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                              Text('Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('iBanking',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 4,
                  ),
                  Text('সেবার জন্য আবেদন',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('UniON INST@NT Account',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 4,
                  ),
                  Text('খোলার জন্য আবেদন',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/union-logo.png',
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
