import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'package:mobile_survey/DetailSurvey.dart';
import 'Daftar.dart';
import 'Login.dart';

class DataSurvey extends StatelessWidget {
  String _valtahun;
  String _valkategori;
  String _valprokeg;
  List _listtahun = ["2015", "2016", "2017", "2018", "2019", "2020"];
  List _listkategori = ["Kategori A", "kategori B", "kategori C"];
  List _listprokeg = [
    "Program/Kegiatan A",
    "Program/Kegiatan B",
    "Program/Kegiatan C"
  ];
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
                  "DATA SURVEY",
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
                    DropdownButtonFormField(
                      // hint: Text("-- Pilih Tahun Usulan --"),
                      decoration: InputDecoration(
                        labelText: 'Tahun Usulan',
                        border: OutlineInputBorder(),
                      ),
                      value: _valtahun,
                      items: _listtahun.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 15),
                    DropdownButtonFormField(
                      // hint: Text("-- Pilih Kategori --"),
                      decoration: InputDecoration(
                        labelText: 'Kategori',
                        border: OutlineInputBorder(),
                      ),
                      value: _valkategori,
                      items: _listkategori.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 15),
                    DropdownButtonFormField(
                      // hint: Text("-- Pilih Program/Kegiatan --"),
                      decoration: InputDecoration(
                        labelText: 'Program/Kegiatan',
                        border: OutlineInputBorder(),
                      ),
                      value: _valprokeg,
                      items: _listprokeg.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label: Text(
                              'Program/Kegiatan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Option',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(Text('Pemeliharaan jalan dan jembatan')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return DetailSurvey();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Pembangunan jalan lingkungan')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Perbaikan jalan kabupaten')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Pemeliharaan jalan dan jembatan')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Pembangunan jalan lingkungan')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Perbaikan jalan kabupaten')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Pemeliharaan jalan dan jembatan')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Pembangunan jalan lingkungan')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('Perbaikan jalan kabupaten')),
                              DataCell(
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text('Detail'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
