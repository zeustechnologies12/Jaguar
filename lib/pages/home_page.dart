import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Import the ItemsWidget
import '../widget/categories_widget.dart';
import '../widget/home_appbar.dart';
import '../widget/itemsWidget.dart';

import 'product.dart';      // Import the Product model

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> allProducts = [
    Product(image: 'images/1.png', title: 'Product 1', description: 'Description 1', price: 55.0),
    Product(image: 'images/2.png', title: 'Product 2', description: 'Description 2', price: 65.0),
    Product(image: 'images/3.png', title: 'Product 3', description: 'Description 3', price: 75.0),
    Product(image: 'images/4.png', title: 'Product 4', description: 'Description 4', price: 85.0),
    Product(image: 'images/5.png', title: 'Product 5', description: 'Description 5', price: 95.0),
    Product(image: 'images/6.png', title: 'Product 6', description: 'Description 6', price: 105.0),
  ];

  List<Product> displayedProducts = [];

  @override
  void initState() {
    super.initState();
    displayedProducts = allProducts; // Initialize with all products
  }

  void _searchProducts(String query) {
    final results = allProducts
        .where((product) =>
        product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      displayedProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0XFFEDECF2),
      body: Column(
        children: [
          HHomeAppBar(),
          SizedBox(height: 10,),
          Container(
            //margin: const EdgeInsets.all(15),
            // padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextFormField(
              onChanged: _searchProducts,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search here...",
                suffixIcon: Icon(Icons.search, color: Color(0XFF4C53A5)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.03,
            ),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0XFF4C53A5),
              ),
            ),
          ),
          CategoriesWidget(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: screenWidth * 0.03,
            ),
            child: Text(
              "Best Selling",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0XFF4C53A5),
              ),
            ),
          ),
          Expanded(
            child: ItemsWidget(products: displayedProducts),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: const Color(0XFF4C53A5),
        items: [
          const Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),
          const Icon(Icons.list, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
