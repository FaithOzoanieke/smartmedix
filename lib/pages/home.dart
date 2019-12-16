import 'package:flutter/material.dart';
import 'package:smart_medix/scr/widgets/icon_card.dart';
import 'package:smart_medix/scr/widgets/images_cards.dart';
import 'package:smart_medix/pharm.dart';
import 'package:smart_medix/x_ray.dart';
import 'package:smart_medix/lab.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child:  Column(
            children: <Widget>[
              //Row(
                
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               
                //  children: <Widget>[
                  
                //    //IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: (){}, ),
                //   // IconButton(icon: Icon(Icons.person_outline, size: 30, color: Colors.black,), onPressed: (){}, )
                //  ],
               //),
              SizedBox(height: 5,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: RichText(
                    text: TextSpan(children:[
                      TextSpan(children: [
                        TextSpan(text: 'Hello, ', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.red)),
                        TextSpan(text: 'what are you \n looking for?'),
                      ],
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black)
                      ),
                    ],
                    ),
                  ),
                ),
              ),


            SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: <Widget>[
                  //new IconCard(iconData: (Icons.add_shopping_cart), onPressed: (){},),       
                  IconCard (iconData: Icons.home, text: 'Home', onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Home()));
                   },),
                  IconCard(iconData: Icons.local_pharmacy, text: 'Drug Store', onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Pharm()));
                   },),
                  IconCard(iconData: Icons.local_hospital, text: 'X-Ray', onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Xray()));
                   },),
                  IconCard(iconData: Icons.local_hospital, text: 'Laboratory', onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Lab()));
                   },),
                ],
              ),
              
               SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: <Widget>[
                  //new IconCard(iconData: (Icons.add_shopping_cart), onPressed: (){},),       
                  IconCard (iconData: Icons.local_hospital, text: 'Counselling', onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Pharm()));
                   },),
                  IconCard(iconData: Icons.directions_subway, text: 'Check Disease'),
                  IconCard(iconData: Icons.directions, text: 'Map'),
                  IconCard(iconData: Icons.local_hospital, text: 'Chat'),
                ],
              ),

              

              
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Best Experiences', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  ),
                  IconButton(icon: Icon(Icons.more_horiz, color: Colors.black,), onPressed: (){}, ),
                ],
              ),

              SizedBox(height: 10,),
              ImageCards(),
              
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.home, color: Colors.red, size: 30,), onPressed: (){}, ),
                    IconButton(icon: Icon(Icons.search, color: Colors.red, size: 30,), onPressed: (){}, ),
                    IconButton(icon: Icon(Icons.favorite_border, color: Colors.red, size: 30,), onPressed: (){}, ),
                    IconButton(icon: Icon(Icons.person_outline, color: Colors.red, size: 30,), onPressed: (){}, ),

                  ],
                ),
              )
            ],
          ),
          )
        )
      )
      
    );
  }
}