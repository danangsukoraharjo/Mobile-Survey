import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'Daftar.dart';
import 'Login.dart';

class DetailSurvey extends StatelessWidget {
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
          SizedBox(
            height: 30,
          ),
          Text(
            "PEMBANGUNAN JALAN DAN JEMBATAN",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 250,
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/images/banner.jpg'),
                AssetImage('assets/images/banner2.jpg'),
                AssetImage('assets/images/banner3.jpg')
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(0.5),
                2: FlexColumnWidth(6),
              },
              // border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Kategori'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Jalan dan Jembatan'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Instansi'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Kelurahan Bugel Kota Salatiga'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Rencana Kerja Tahun'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('2021'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Lokasi/Alamat'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('-'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Kelurahan'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Bugel'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Kecamatan'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Tingkir'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Kota'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Salatiga'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Koordinat'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('-'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Volume'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('-'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Kondisi'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('-'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Target Capaian'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('10 km'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Pagu Indikatif'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Rp 2.500.000.000,-'),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Row(
                      children: [
                        Text('Catatan'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(':'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(''),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
