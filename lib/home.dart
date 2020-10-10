import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'PetaRecana.dart';
import 'SurveyUsulan.dart';
import 'Statistik.dart';
import 'KritikSaran.dart';
import 'Simperda.dart';
import 'Catatan.dart';
import 'Daftar.dart';
import 'Login.dart';

class Home extends StatelessWidget {
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
      body: ListView(
        children: <Widget>[
          MyBanner(),
          MyMenu(),
        ],
      ),
    );
  }
}

class MyBanner extends StatelessWidget {
  const MyBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/images/banner.jpg'),
            AssetImage('assets/images/banner2.jpg'),
            AssetImage('assets/images/banner3.jpg')
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  const MyMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
      crossAxisCount: 3,
      shrinkWrap: true,
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 30.0,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PetaRencana(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.jpg',
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'PETA RENCANA',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurveyUsulan(),
              ),
            );
          },
          child: Container(
            // width: double.infinity,
            // height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.jpg',
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'SURVEY USULAN',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Statistik(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.jpg',
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'STATISTIK',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KritikSaran(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.jpg',
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'KRITIK & SARAN',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Simperda(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.jpg',
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'SIMPERDA KOTA SALATIGA',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Catatan(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.jpg',
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'CATATAN SURVEYOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MySideMenu extends StatelessWidget {
  const MySideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("side menunya"),
    );
  }
}
