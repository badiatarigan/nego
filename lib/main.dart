import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//import pribadi
import 'package:nego/components/horizontal_listview.dart';
import 'package:nego/components/products.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.indigo,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.indigo,
        title: Text('NEGO'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
                accountName: Text('Badia Tarigan'),
                accountEmail: Text('mail@badiatarigan.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white,),
                  )
                ),
              decoration: new BoxDecoration(
                color: Colors.indigo
              ),
            ),

            //Body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Beranda'),
                leading: Icon(Icons.home, color: Colors.indigo),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Akun Anda'),
                leading: Icon(Icons.person, color: Colors.indigo),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Pesanan Anda'),
                leading: Icon(Icons.shopping_basket, color: Colors.indigo),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Kategori'),
                leading: Icon(Icons.dashboard, color: Colors.indigo),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorit'),
                leading: Icon(Icons.favorite, color: Colors.indigo),
              ),
            ),

            //Devider
            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Pengaturan'),
                leading: Icon(Icons.settings, color: Colors.indigo),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Tentang Nego'),
                leading: Icon(Icons.help, color: Colors.indigo),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image carousel
          image_carousel,
          //padding kategori
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text ('Cari Berdasarkan Kategori'),),
          //horizontal list view
          Horizontalist(),
          //padding recent product
          new Padding(padding: const EdgeInsets.all(16.0),
            child: new Text ('Paling Baru Nih..'),),
          //grid View
          Container(
            height: 320.0,
              child: Products(),
          )
        ],
      ),
    );
  }
}
