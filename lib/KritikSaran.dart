import 'package:flutter/material.dart';
import 'package:mobile_survey/sidebarmenu.dart';
import 'Daftar.dart';
import 'Login.dart';

class KritikSaran extends StatelessWidget {
  const KritikSaran({Key key}) : super(key: key);

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
                  "KRITIK & SARAN",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Kritik dan saran anda sangat membantu dalam mengembangkan layanan kami',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Kritik dan saran',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        // labelText: 'Catatan',
                        hintText:
                            'Silahkan masukan kritik dan saran anda disini',
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
