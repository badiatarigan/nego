import 'package:flutter/material.dart';
import 'package:nego/pages/product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer Mantap",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120.000,
      "price": 99.000,
    },
    {
      "name": "Blazer Keren",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120.000,
      "price": 99.000,
    },
    {
      "name": "Dress Mantul",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120.000,
      "price": 99.000,
    },
    {
      "name": "Dress Mantap",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120.000,
      "price": 99.000,
    },
    {
      "name": "Hills Keren",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120.000,
      "price": 99.000,
    },
    {
      "name": "Hils Import",
      "picture": "images/products/hills2.jpeg",
      "old_price": 120.000,
      "price": 99.000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Singgle_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Singgle_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Singgle_product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //passing the values of the product to the product details page
                        product_detail_name: product_name,
                        product_detail_picture: product_picture,
                        product_detail_old_price: product_old_price,
                        product_detail_price: product_price,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              product_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          new Text(
                            "\R\p${product_price}",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
