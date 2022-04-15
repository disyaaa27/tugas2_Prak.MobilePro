import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tugas2_/login.dart';
import 'package:tugas2_/profilepage.dart';
import 'package:tugas2_/warna.dart';

class ProfilPage extends StatefulWidget {
  @override
  State<ProfilPage> createState() => _MyAppState();
}

class _MyAppState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    Widget kontener() {
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 19,
          right: 12,
        ),
        margin: EdgeInsets.only(top: 15, bottom: 5, right: 18, left: 18),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 122, 202),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('NPM', style: satu),
                SizedBox(
                  width: 195,
                ),
                Text('065119138', style: dua),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.copy,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
            //SizedBox(height: 3,),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Status Keatifan', style: satu),
                SizedBox(
                  width: 195,
                ),
                Text('Aktif', style: dua)
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Program Studi', style: satu),
                SizedBox(
                  width: 140,
                ),
                Text(
                  'Ilmu Komputer',
                  style: dua,
                )
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Jenjang pendidikan',
                  style: satu,
                ),
                SizedBox(
                  width: 186,
                ),
                Text(
                  'S1',
                  style: dua,
                )
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      );
    }

    Widget teks(String tulis, String baca) {
      return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox(width: 20,),
            Text(
              tulis,
              style: tiga,
            ),
            Text(
              baca,
              style: empat,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                //SizedBox(width: 5),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),

                IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/dimas.jpg',
                  width: 135,
                  height: 135,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Dimas Nurdiansyah',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  'dimas.065119138@unpak.ac.id',
                ),
                Text(
                  '0859******30',
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            kontener(),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                teks('Nama Lengkap', 'Dimas Nurdiansyah'),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                teks('Panggilan', 'Dimas'),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Alamat',
                        style: tiga,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Jl. Gintung Rt.11/Rw.02 Kel. Tanjung Barat Kec. Jagakarsa Jakarta Selatan',
                        style: empat,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                //SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      teks('Kartu Mahasiswa', ''),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.badge,
                            size: 18,
                          )),
                    ],
                  ),
                ),
                // Divider(
                //   height: 1,
                //   thickness: 1,
                //   indent: 25,
                //   endIndent: 25,
                //   color: Colors.black,
                // ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
