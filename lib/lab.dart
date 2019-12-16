import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smart_medix/pages/home.dart';

class Lab extends StatefulWidget {
  @override
  _LabState createState() => _LabState();
}

class _LabState extends State<Lab> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         body: Container(
           //padding: EdgeInsets.symmetric(),
           width: double.infinity,
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               colors: [
                 Colors.red[900],
                 Colors.red[700],
                 Colors.red[400],
               ]
             ),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               SizedBox(height: 5,),
               Padding(
                 padding: EdgeInsets.all(20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                     SizedBox(height: 5,),
                      Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 20),),
                   ],
                 ),
               ),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(50),),
                   ),
                   child: Padding(
                     padding: EdgeInsets.all(30),
                     child: Column(
                        children: <Widget>[
                          SizedBox(height: 30,),
                          Container(
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(225, 95, 27, 3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email or phone number",
                                      hintStyle: TextStyle(color:Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color:Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20,),
                          Text("Forgot Password", style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 20,),
                          Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[900],
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("Continue with social media", style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 30,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue,
                                ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(MaterialCommunityIcons.facebook, color: Colors.white,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, ),),
                                    ],
                                  ),
                              ),
                              ),
                              SizedBox(width: 30,),



                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(MaterialCommunityIcons.github_face, color: Colors.white,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("GitHub", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, ),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                              onTap: (){print("uju");},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: "Don't have an account?   ",style: TextStyle(color: Colors.grey),),
                                    TextSpan(text: "Register", style: TextStyle(color: Colors.red)),

                                  ]
                                ),)
                              ))
                        ],

                     ),
                   ),

                 ),
               )
             ],
           ),

         ),
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