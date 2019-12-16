import 'package:flutter/material.dart';
import 'package:smart_medix/pages/home.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:smart_medix/components/horizontal_listview.dart';
import 'package:smart_medix/components/products.dart';
import 'package:smart_medix/pages/cart.dart';

class Pharm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/drug1.jpg'),
          AssetImage('assets/drug2.jpg'),
          AssetImage('assets/drug3.jpg'),
          AssetImage('assets/drug4.jpg'),
          AssetImage('assets/drug5.jpg'),
          AssetImage('assets/drug6.jpg'),
          AssetImage('assets/drug7.jpg'),
          AssetImage('assets/drug8.jpg'),
        ],
        //autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotColor: Colors.white70,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.white30,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Pharmacy'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart, color:Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
          },)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            
            new UserAccountsDrawerHeader(accountName: Text('Ozoanieke Faith'), accountEmail: Text('faithozoaniene@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.red,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.red
            ),
            ),

          //body
          InkWell(
              onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Home()));
                   },
              child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.red,),
            ),
          ),

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person, color: Colors.red,),
            ),
          ),

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('My orders'),
              leading: Icon(Icons.shopping_basket, color: Colors.red,),
            ),
          ),

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
              title: Text('Shopping cart'),
              leading: Icon(Icons.shopping_cart, color: Colors.red,),
            ),
          ),

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.red,),
            ),
          ),

          Divider(),

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.red,),
            ),
          ),

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.red,),
            ),
          ),
          ],
        ),
      ),

      body: new Column(
          children: <Widget>[
            // image carousel begins here
            image_carousel,

            //padding widget
            new Padding(padding: const EdgeInsets.all(4.0),  
            child: Container(
              alignment: Alignment.centerLeft,
              child: new Text('Categories')),
            ),

            // horizontal list view begins here
            HorizontalList(),

            //padding widget
            new Padding(padding: const EdgeInsets.all(8.0), 
              child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Drugs')), 
            ),

            //grid view
            Flexible(child: Products()),

        ],
      ),
      
    );
  }
}