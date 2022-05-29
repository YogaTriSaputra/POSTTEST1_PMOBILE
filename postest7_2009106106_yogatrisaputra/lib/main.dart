import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:postest7_2009106106_yogatrisaputra/feed.dart';
import 'package:postest7_2009106106_yogatrisaputra/form_order.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'postest5_106_yogatrisaputra',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void inistate() {
    super.initState();
    SplashScreenStart();
  }

  SplashScreenStart() {
    return Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => landingpage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SplashScreenStart();
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/hp.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/log.png'))),
            ),
            Text("Log Store",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                )),
            Padding(padding: EdgeInsets.fromLTRB(100, 300, 105, 105)),
            Text("Created By Log Store",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ))
          ],
        ),
      ),
    );
  }
}

class landingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2009106106_YogaTriSaputra"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "                                  Log Store",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 22, 22, 22),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dock),
              title: Text("Halaman Form"),
              tileColor: Color.fromARGB(255, 0, 149, 255),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return HalamanForm();
                  }),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Main Page"),
              tileColor: Color.fromARGB(255, 0, 149, 255),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Mainpage()),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Form Order"),
              tileColor: Color.fromARGB(255, 0, 149, 255),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Form_order()),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text("Feedback"),
              tileColor: Color.fromARGB(255, 0, 149, 255),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Feed()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/hp.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/log.png'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Log Store',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
            ),
            Text(
              'Menjual Berbagai Macam Hp Gaming \n Dengan Kualitas Spesifikasi Dewa',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return HalamanForm();
                    }),
                  );
                },
                child: Text("Cek Sekarang"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanForm extends StatefulWidget {
  const HalamanForm({Key? key}) : super(key: key);

  @override
  State<HalamanForm> createState() => _HalamanFrom();
}

class _HalamanFrom extends State<HalamanForm> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  bool acc = false;
  String email = "", password = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 10, 10),
          title: Text("YogaTriSaputra"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 25,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              iconSize: 25,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat_outlined),
              iconSize: 25,
              onPressed: () {},
            ),
          ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/hp.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 1,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/log.png'))),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Log Store',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
            ),
            Text(
              'Menjual Berbagai Macam Hp Gaming \n Dengan Kualitas Spesifikasi Dewa',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  TextField(
                    controller: emailCtrl,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Masukkan Email',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: passwordCtrl,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Password',
                        labelText: "Password"),
                  ),
                  ListTile(
                    title: const Text("Ingat Akun?"),
                    leading: Checkbox(
                      value: acc,
                      onChanged: (bool? value) {
                        setState(() {
                          acc = value!;
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        email = emailCtrl.text;
                        password = passwordCtrl.text;
                      });
                    },
                    child: const Text("LOGIN"),
                  ),
                  Text('Email : $email'),
                  Text('Password : $password'),
                  Text(
                    'Akun ${acc ? "Tersimpan" : "Tidak Tersimpan"}',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainPage();
}

class _MainPage extends State<Mainpage> {
  Future<dynamic> CustomAlert(BuildContext context, String PopUp) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          actions: [
            Column(
              children: [
                Text(
                  PopUp,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage()),
                      );
                    },
                    child: Text(
                      "Lanjut",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mainpage()),
                      );
                    },
                    child: Text(
                      "Tidak",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  List<BottomNavigationBarItem> _navBarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int _index = 0;
    List<Widget> _body = [
      ListView(
        children: [
          Text(
            "HP GAMING TERBAIK TAHUN 2022",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hp1.png"),
                  ),
                ),
              ),
              Text(
                "Asus ROG Phone 5 Series - 9,3 Juta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 50, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hp2.jpg"),
                  ),
                ),
              ),
              Text(
                "Xiaomi Black Shark 4 Series - 7 Juta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 50, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hp3.jpg"),
                  ),
                ),
              ),
              Text(
                "Nubia Red Magic 6 Pro - 10 Juta\n\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  CustomAlert(context, "Lihat Detail?");
                },
                child: Text("Lihat Secara Detail"),
              ),
            ],
          ),
        ],
      ),
      Container(color: Colors.blueAccent),
      Container(color: Colors.lightGreenAccent),
    ];
    {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Main Page"),
        ),
        body: _body.elementAt(_index),
        bottomNavigationBar: BottomNavigationBar(
          items: _navBarItem,
          currentIndex: _index,
          onTap: (i) {
            setState(() {
              _index = i;
            });
          },
        ),
      );
    }
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: ListView(
        children: [
          Text(
            "HP GAMING TERBAIK TAHUN 2022",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hp1.png"),
                  ),
                ),
              ),
              Text(
                "Asus ROG Phone 5 Series - 9,3 Juta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Asus ROG Phone 5 seires adalah HP gaming terbaik No. 1 di Dunia saat ini, dimana yang paling bagus dan kami rekomendasikan 'ROG Phone 5s Pro'. Dilengkapi tombol gaming fisik yang responsif, lampu RGB yang dapat diprogram, dan kompatibilitas dengan berbagai aksesori yang berfokus pada game, menjadikan ponsel ini benar-benar merupakan paket lengkap untuk para gamer.",
                textAlign: TextAlign.justify,
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 50, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hp2.jpg"),
                  ),
                ),
              ),
              Text(
                "Xiaomi Black Shark 4 Series - 7 Juta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Black Shark 4 series merupakan salah satu pilihan HP Gaming terbaik saat ini, paling direkomendasikan 'Black Shark 4 Pro'. HP Gaming ini menawarkan harga dan spesifikasi yang baik. Seperti HP Gaming pada umumnya, Black Shark 4 memiliki serangkaian tombol gaming fisik yang unik untuk memaksimalkan kontrol dalam bermain game. Layar 144Hz juga smooth dan cerah, suara speaker stereo-nya bagus, pengisian daya sangat cepat, dan performa kamera juga dapat diandalkan. Meski stabilisasi video kurang.",
                textAlign: TextAlign.justify,
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 50, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/hp3.jpg"),
                  ),
                ),
              ),
              Text(
                "Nubia Red Magic 6 Pro - 10 Juta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Nubia Red Magic 6 Pro adalah HP Gaming dengan spesifikasi terbaik yang paling kami rekomendasikan saat ini. Dilengkapi kipas built-in dan sistem pendingin cair untuk menjaga suhu ponsel tetap dingin bahkan ketika memainkan game berat. Ada juga fitur Getar yang bisa menambah pengalaman bermain game jadi lebih seru.",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
