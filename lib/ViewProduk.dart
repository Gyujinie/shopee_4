import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'CheckoutPage.dart';

class ViewProduk extends StatefulWidget {
  final String productId;

  ViewProduk({required this.productId});

  @override
  _ViewProdukState createState() => _ViewProdukState();
}

class _ViewProdukState extends State<ViewProduk> {
  int cartCount = 0;
  bool _isLoved = false;
  late DocumentSnapshot productData;
  String spayLaterPrice = '';

  @override
  void initState() {
    super.initState();
    fetchProductData();
  }

  Future<void> fetchProductData() async {
    var productDoc = await FirebaseFirestore.instance
        .collection('products')
        .doc(widget.productId)
        .get();
    setState(() {
      productData = productDoc;
      double price = productData['Price'].toDouble();
      spayLaterPrice = calculateSpayLaterPrice(price);
    });
  }

  // Function to calculate SPayLater installment price
  String calculateSpayLaterPrice(double price) {
    double monthlyPrice = price / 12;
    double finalPrice = monthlyPrice + (monthlyPrice * 0.03);
    return formatCurrency(finalPrice.round());
  }

  // Function to format number to currency format with dot separator
  String formatCurrency(int price) {
    return price.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Product Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.share, size: 18.0),
            onPressed: () {},
            color: Colors.white,
          ),
          Stack(
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
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle menu item selection
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'report',
                child: Text('Report'),
              ),
              PopupMenuItem<String>(
                value: 'share',
                child: Text('Share'),
              ),
            ],
          ),
        ],
      ),
      body: productData == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Stack(
                children: [
                  Container(
                    height: 550.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(productData['imageURL']),
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
                                  'Rp ${formatCurrency(productData['Price'])}',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                              ],
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
                                  'Rp $spayLaterPrice x 12 months with SPayLater',
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
                                          color: Color.fromARGB(
                                              255, 117, 236, 204),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      child: Text(
                                        'Free Returns',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 117, 236, 204),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 4.0),
                                  ],
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  productData['Name'],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CheckoutPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.0),
                                    decoration: BoxDecoration(
                                      color:
                                          Color.fromRGBO(255, 240, 242, 0.906),
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
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 4.0),
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
                                        color: _isLoved
                                            ? Colors.red
                                            : Colors.grey[400],
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
        height: 80.0,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to Chat Now page
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.chat,
                        color: Colors.deepOrange,
                        size: 20.0,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Chat Now',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 24.0),
                // Add to Cart section
                GestureDetector(
                  onTap: () {
                    setState(() {
                      cartCount += 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.deepOrange,
                        size: 20.0,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.6,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'Rp ${formatCurrency(productData['Price'])}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
