import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'Daftar.dart';
import 'Login.dart';

class SurveyUsulan extends StatelessWidget {
  String _valtahun;
  String _valkategori;
  String _valprokeg;
  String _valkec;
  String _valkel;
  String _valknds;
  List _listtahun = ["2015", "2016", "2017", "2018", "2019", "2020"];
  List _listkategori = ["Kategori A", "kategori B", "kategori C"];
  List _listprokeg = [
    "Program/Kegiatan A",
    "Program/Kegiatan B",
    "Program/Kegiatan C"
  ];
  List _listkec = ["Kecamatan A", "Kecamatan B", "Kecamatan C"];
  List _listkel = ["Kelurahan A", "Kelurahan B", "Kelurahan C"];
  List _listknds = ["Baik", "Sedang", "Rusak"];

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
                  "FORMULIR SURVEY USULAN",
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
                    Text(
                      'Peta Lokasi',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                    SizedBox(height: 30),
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
                    DropdownButtonFormField(
                      // hint: Text("-- Pilih Kecamatan --"),
                      decoration: InputDecoration(
                        labelText: "Kecamatan",
                        border: OutlineInputBorder(),
                      ),
                      value: _valkec,
                      items: _listkec.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 15),
                    DropdownButtonFormField(
                      // hint: Text("-- Pilih Kecamatan --"),
                      decoration: InputDecoration(
                        labelText: "Kelurahan",
                        border: OutlineInputBorder(),
                      ),
                      value: _valkel,
                      items: _listkel.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 15),
                    TextField(
                      // maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Alamat',
                        // hintText: 'Tinggi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Panjang",
                        // hintText: 'Panjang',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Lebar",
                        // hintText: 'Lebar',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Tinggi",
                        // hintText: 'Tinggi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Volume",
                        // hintText: 'Tinggi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    DropdownButtonFormField(
                      // hint: Text("-- Pilih Kondisi --"),
                      decoration: InputDecoration(
                        labelText: "Kondisi",
                        border: OutlineInputBorder(),
                      ),
                      value: _valknds,
                      items: _listknds.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 15),
                    TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        labelText: 'Catatan',
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
