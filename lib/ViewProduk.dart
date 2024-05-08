import 'package:flutter/material.dart';
import 'CheckoutPage.dart'; // Import checkout_page.dart file

class ViewProduk extends StatefulWidget {
  @override
  _ViewProdukState createState() => _ViewProdukState();
}

class _ViewProdukState extends State<ViewProduk> {
  int cartCount = 0;
  int selectedVariationIndex = -1;
  bool _isLoved = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 144, 144, 144).withOpacity(0.4),
            ),
            child: IconButton(
              icon: Icon(Icons.share, size: 18.0),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 144, 144, 144).withOpacity(0.4),
            ),
            child: Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart_outlined, size: 18.0),
                  onPressed: () {},
                  color: Colors.white,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '$cartCount',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 144, 144, 144).withOpacity(0.4),
            ),
            child: IconButton(
              icon: Icon(Icons.more_vert, size: 18.0),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              height: 550.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/produk1.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 300.0),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            '4 Variations Available',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80.0, // Fixed height for the variation images
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedVariationIndex = index;
                                });
                              },
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'lib/images/produk${index + 2}.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: selectedVariationIndex == index
                                        ? Colors.red
                                        : Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 4.0),
                      child: Text(
                        'Rp240.000',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price With Voucher',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 11.0,
                            ),
                          ),
                          Text(
                            'Rp 27.078 x 12 months with SPayLater',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 11.0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 117, 236, 204),
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Text(
                                  'Free Returns',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 117, 236, 204),
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.0),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '[Free Mini Shopping Bag] lilybyred MAUVE LIP SET : Glassy Layer Fixing Tint',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          GestureDetector(
                            onTap: () {
                              if (selectedVariationIndex != -1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CheckoutPage(),
                                  ),
                                );
                              } else {
                                // Show message to select a variation
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Please select a variation'),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: screenWidth,
                              padding: EdgeInsets.symmetric(vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 240, 242, 0.906),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shopee Garansi 100% Ori',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      SizedBox(height: 4.0),
                                      Text(
                                        'Garansi uang kembali jika produk tidak ori',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20.0,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '4.6/5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(width: 4.0),
                              Container(
                                width: 1.0,
                                height: 20.0,
                                color: Colors.grey[400],
                                margin: EdgeInsets.symmetric(horizontal: 4.0),
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '97 Sold',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color:
                                      _isLoved ? Colors.red : Colors.grey[400],
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isLoved = !_isLoved;
                                    if (_isLoved) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                            'Successfully added to My Likes!'),
                                      ));
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.chat, size: 20.0, color: Colors.red),
                  onPressed: () {},
                ),
                Text(
                  'Chat Now',
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              height: 24.0,
              width: 1.0,
              color: Colors.grey,
            ),
            SizedBox(width: 8.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add_shopping_cart,
                      size: 20.0, color: Colors.red),
                  onPressed: () {
                    if (selectedVariationIndex != -1) {
                      setState(() {
                        cartCount++;
                      });
                    } else {
                      // Show message to select a variation
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please select a variation'),
                        ),
                      );
                    }
                  },
                ),
                Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(width: 8.0),
            GestureDetector(
              onTap: () {
                if (selectedVariationIndex != -1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(),
                    ),
                  );
                } else {
                  // Show message to select a variation
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please select a variation'),
                    ),
                  );
                }
              },
              child: Container(
                width: screenWidth * 0.6,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Buy with Voucher',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Rp 240.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductInfo(String imagePath) {
    return Container(
      width: 100.0,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ViewProduk(),
  ));
}
