import 'package:flutter/material.dart';
import 'package:smart_medix/pharm.dart';


class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });
  
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> new Pharm()));},
          child: Text('Pharmacy')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: (){},),
          
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\N${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),),
                      ),

                      Expanded(
                        child: new Text("\N${widget.product_detail_new_price}", 
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //    ========= the first buttons =========
          Row(
            children: <Widget>[
              // ======= the size button ========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        ),
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                  ],),
                ),
              ),

                        // ======= the size button ========
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Product"),
                      content: new Text("Company description"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        ),
                      ],
                    );
                  });     
                  },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Product"),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                  ],),
                ),
              ),

                        // ======= the size button ========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Quantity"),
                      content: new Text("Choose the quantity"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),
                        ),
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty"),),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                  ],),
                ),
              ),
            ],
          ),



              //    ========= the second buttons =========
          Row(
            children: <Widget>[
              // ======= the size button ========
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy now")
                ),
              ),

                       
           new IconButton(icon:Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){},),

            new IconButton(icon:Icon(Icons.favorite_border), color: Colors.red, onPressed: (){},),
            ],
          ),

          Divider(color: Colors.red,),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Uju Remember product description goes here, Uju Remember product description goes here,Uju Remember product description goes here,Uju Remember product description goes here,Uju Remember product description goes here,Uju Remember product description goes here,"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),
              ),
            ],),

            new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),

              // REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand X"),
              ),
            ],),


//          ADD THE PRODUCT CONDITION
            new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("NEW"),
              ),
            ],
            ),


            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Similar products"),
            ),
            // SIMILAR PRODUCTS SECTIONS

            Container(
              height: 340.0,
              child: Similar_products(),
            ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Pyrantrin",
      "picture": "assets/products/pyrantrin.jpeg",
      "old_price": "550",
      "price": "500",
    },
    {
      "name": "Gestid",
      "picture": "assets/products/gestid.jpeg",
      "old_price": "600",
      "price": "550",
    },
    {
      "name": "Gaviscon",
      "picture": "assets/products/gaviscon.jpeg",
      "old_price": "600",
      "price": "550",
    },
    {
      "name": "Spardium",
      "picture": "assets/products/spardium.gif",
      "old_price": "600",
      "price": "550",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  //creating constructor for the variable above
  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                  //here i am passing the values of the product to the product details page
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ),),),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  ),

                  new Text("\N${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ],),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
