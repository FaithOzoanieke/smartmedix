import 'package:flutter/material.dart';
import 'package:smart_medix/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "name": "Sebamed",
      "picture": "assets/products/sebamed.jpeg",
      "old_price": "600",
      "price": "550",
    },
    {
      "name": "Nystatin",
      "picture": "assets/products/nystatin.jpeg",
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
      "name": "Amatem",
      "picture": "assets/products/amatem.png",
      "old_price": "600",
      "price": "550",
    },
    {
      "name": "Polyfort",
      "picture": "assets/products/polyfort.jpeg",
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
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  //creating constructor for the variable above
  Single_prod({
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
