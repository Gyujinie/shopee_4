import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckoutPage(),
  ));
}

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 18.0),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 239, 239, 239),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color.fromARGB(255, 251, 246, 206),
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.local_shipping,
                    color: Color.fromARGB(255, 117, 236, 204),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Free shipping voucher applied',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.deepOrange,
                        size: 18.0,
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery Address',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Junkyu I (+62)123-878-875',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                'Jl. Treasure No. 12, Daerang dong',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                '2ga, JUNGGU, SEOUL',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                '20897',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            DashedLine(),
            SizedBox(height: 10),
            Opacity(
              opacity: 0.8,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 205, 0, 14),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        'Shopee Mall',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Lilybyred Official Shop',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    child: Image.asset(
                      'lib/images/produk1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[Free Mini Shopping Bag] Lilybyred MAUVE LIP SET : Glassy Layer Fixing Tint',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'Variation: DETANGLE WARM SET',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Rp 255.000',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.check_box_outline_blank,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Assurance Protection',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Protecting you against harm, inconvenience, or inpatient care arising from the usage or consumption of the product.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 10.0,
              ),
              child: Divider(
                height: 1.0,
                color: Color.fromARGB(255, 234, 230, 230)
                    .withOpacity(0.5), // Menambahkan transparansi
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Text(
                'Shop Vouchers',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(height: 0),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(190, 255, 238, 0.8),
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Option',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black, // Text color
                    ),
                  ),
                  SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reguler',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp 37.000',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Rp 17.000',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Guaranteed to get by 10 - 13 Mei', // Teks "Guaranteed to get by 10 - 13 Mei"
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Color.fromARGB(255, 41, 207, 171),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Get up to Rp 10.000 voucher if your order doesn\'t arrive by 13 May 2024.', // Text kosong untuk menjaga jarak dengan teks di sebelah kiri
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 0),
            Container(
              color: Color.fromRGBO(254, 255, 255, 0.8), // Background color
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Message :',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Rp 241.000',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Place Order',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class DashedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, 2),
      painter: DashedPainter(),
    );
  }
}

class DashedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.square;

    final double dashWidth = 5;
    final double dashSpace = 5;
    double startX = 0;
    bool isBlue = true;

    while (startX < size.width) {
      paint.color = isBlue ? Colors.blue : Colors.pink;
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
      isBlue = !isBlue;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
