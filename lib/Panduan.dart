import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'Daftar.dart';
import 'Login.dart';

class Panduan extends StatelessWidget {
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
      body: Container(
        child: Center(
          child: Text(
            'Halaman Panduan Aplikasi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
