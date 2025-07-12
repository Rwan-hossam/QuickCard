import 'package:flutter/material.dart';
import 'package:stemtech1/womenItems.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<Map<String, dynamic>> cartItems = [];

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
          child: Text('Men Section', style: TextStyle(fontSize: 20)),
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
                        image: AssetImage('assets/model2.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:120\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/model2.jpg', '120\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelman1.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1020\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelman1.jpg', '1020\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelmen2.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1220\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelmen2.jpg', '1220\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelmen3.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1520\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelmen3.jpg', '1520\$');
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
                        image: AssetImage('assets/modelman9.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1920\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelman9.jpg', '1920\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelmen5.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1120\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelmen5.jpg', '1120\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelmen6.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1220\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelmen6.jpg', '1220\$');
                            },
                            child: Text(
                              'Add To Your Card',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/modelmen7.jpg'),
                        height: 180,
                        width: 100,
                      ),
                      Text("price:1420\$"),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          TextButton(
                            onPressed: () {
                              addToCart('assets/modelmen7.jpg', '1420\$');
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
                      MaterialPageRoute(builder: (context) => Womenitems()),
                    );
                  },
                  child: Text(
                    'Women Section',
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
