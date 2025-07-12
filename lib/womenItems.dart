import 'package:flutter/material.dart';
import 'package:stemtech1/childrenitems.dart';

class Womenitems extends StatefulWidget {
  const Womenitems({super.key});

  @override
  State<Womenitems> createState() => _WomenitemsState();
}

class _WomenitemsState extends State<Womenitems> {
  static List<Map<String, dynamic>> cartItems = [];

  void addToCart(String image, String price) {
    setState(() {
      cartItems.add({'image': image, 'price': price});
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
                        image: AssetImage('assets/modelwomen1.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:320\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen1.jpg', '320\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelwomen2.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1020\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen2.jpg', '1020\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelwomen3.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1820\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen3.jpg', '1820\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelwomen4.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1520\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen4.jpg', '1520\$');
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
                        image: AssetImage('assets/modelwomen5.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:120\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen5.jpg', '120\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelwomen6.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1020\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen6.jpg', '1020\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelwomen7.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1220\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen7.jpg', '1220\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelwomen8.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1720\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelwomen8.jpg', '1720\$');
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Childrenitems()),
                    );
                  },
                  child: Text(
                    'Children Section',
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
