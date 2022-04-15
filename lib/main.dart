import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tugas2_/profilepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: SearchPage(),
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.centerRight,
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilPage()));
                  },
                ),
              ),
              Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2020/01/1.-Compass-untuk-%40darahkubiru-Pot-meets-Pop.jpg'),
                    )),
              ),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://gambar.sgp1.digitaloceanspaces.com/wp-content/uploads/2020/03/FI-converse-indonesia.jpg'),
                        )),
                    child: Center(
                      child: Text(
                        'converse',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//101/MTA-27328493/nike_sepatu_nike_zoomx_vaporfly_next_ekiden_sepatu_lari_hakone_marathon_full01_czdv10a4.jpg'),
                        )),
                    child: Center(
                      child: Text(
                        'Nike',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
