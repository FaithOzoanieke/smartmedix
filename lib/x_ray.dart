import 'package:flutter/material.dart';
import 'package:smart_medix/pages/home.dart';

class Xray extends StatefulWidget {
  @override
  _XrayState createState() => _XrayState();
}

class _XrayState extends State<Xray> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Smart Medical Center'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: (){},)
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
              onTap: (){},
              child: ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard, color: Colors.red,),
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

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('Laboratory'),
              leading: Icon(Icons.help, color: Colors.red,),
            ),
          ),

          InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('X-Ray'),
              leading: Icon(Icons.help, color: Colors.red,),
            ),
          ),

          ],
        ),
      ),
      
    );
  }
}