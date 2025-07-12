import 'package:flutter/material.dart';

class Childrenitems extends StatefulWidget {
  const Childrenitems({super.key});

  @override
  State<Childrenitems> createState() => _ChildrenitemsState();
}

class _ChildrenitemsState extends State<Childrenitems> {
  static List<Map<String, dynamic>> cartItems = [];

  void addToCart(String imagePath, String price) {
    setState(() {
      cartItems.add({'image': imagePath, 'price': price});
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('The item has been added to the cart'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('WOmen Section', style: TextStyle(fontSize: 20)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: Text('shopping cart'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:
                            cartItems
                                .map(
                                  (item) => ListTile(
                                    leading: Image.asset(
                                      item['image'],
                                      width: 50,
                                      height: 50,
                                    ),
                                    title: Text(item['price']),
                                  ),
                                )
                                .toList(),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('back'),
                        ),
                      ],
                    ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/modelchild1.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1220\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild1.jpg', '1220\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelchild2.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1020\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild2.jpg', '1020\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelchild3.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1420\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild3.jpg', '1420\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelchild4.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:520\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild4.jpg', '520\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/modelchild5.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:120\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild5.jpg', '120\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelchild6.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1620\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild6.jpg', '1620\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelchild7.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1320\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild7.jpg', '1320\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelchild8.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1520\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelchild8.jpg', '1520\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1050, bottom: 30),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Your Card',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
