import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'Daftar.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        // leading: Icon(Icons.menu),
        title: Text('Mobile Survey'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Daftar(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text('DAFTAR'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text('MASUK'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SidebarMenu(),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.grey[50],
          ),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Email',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(left: 30, right: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.blue[800],
                splashColor: Colors.grey,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Wrap(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Belum terdaftar ? '),
                      Text(
                        'Daftar sekarang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
