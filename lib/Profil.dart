import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'Daftar.dart';
import 'Login.dart';

class Profil extends StatelessWidget {
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: ListView(
            children: <Widget>[
              Container(
                child: Text(
                  "PROFIL",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      // maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Nama Pengguna',
                        // hintText: 'Tinggi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Instansi",
                        // hintText: 'Panjang',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        // hintText: 'Lebar',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "No. Telepon",
                        // hintText: 'Tinggi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Simpan'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
