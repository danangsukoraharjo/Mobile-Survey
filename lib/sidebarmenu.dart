import 'package:flutter/material.dart';
import 'package:mobile_survey/home.dart';
import 'package:mobile_survey/Profil.dart';
import 'package:mobile_survey/DataSurvey.dart';
import 'package:mobile_survey/Tentang.dart';
import 'package:mobile_survey/Kontak.dart';
import 'package:mobile_survey/Panduan.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue[900],
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/banner.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Halo, Danang Suko Raharjo',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Kelurahan Bugel Kota Salatiga',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Beranda'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profil'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profil(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Data Survey'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataSurvey(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Panduan Aplikasi'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Panduan(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Tentang Aplikasi'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tentang(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Hubungi Kami'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Kontak(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_back),
                  title: Text('Keluar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
