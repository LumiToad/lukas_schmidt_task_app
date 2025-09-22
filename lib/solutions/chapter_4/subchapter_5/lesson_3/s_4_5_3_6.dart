import 'package:flutter/material.dart';

class Product {
  const Product({required this.name, required this.price});

  final String name;
  final double price;
}

class S4536 extends StatelessWidget {
  const S4536({super.key});

  final List<Product> products = const [
    Product(name: "Kekse", price: 1.69),
    Product(name: "Butter", price: 2.99),
    Product(name: "Cola", price: 1.25),
    Product(name: "Kaffee", price: 20.00),
    Product(name: "Shampoo", price: 1.30),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: List.generate(products.length, (index) {
        return ListTile(
          leading: Icon(Icons.shopping_cart),
          title: FormatedProductLabel(product: products[index]),
          );
        }),
    );
  }
}

class FormatedProductLabel extends StatelessWidget {
  const FormatedProductLabel({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${product.name} " + 
       "${product.price}".padRight(4, "0") +
       ((product.price % 2 == 0) ? "0" : "" )+
       " €"
      );
  }
}
