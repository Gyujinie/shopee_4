import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopee4/Produk.dart';
import 'package:shopee4/profil.dart'; // Import file profil.dart

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        'lib/images/qr.jpeg',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/images/spay.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            'lib/images/koin.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            'lib/images/transfer.jpeg',
                            width: 70,
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Hapus IconItem dari sini
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 12),
                    SlideItem(
                      image: 'lib/images/barokah.png',
                      label: 'Shopee Barokah',
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    SizedBox(width: 8),
                    SlideItem(
                      image: 'lib/images/food.jpg',
                      label: 'Shopee Food',
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    SizedBox(width: 8),
                    SlideItem(
                      image: 'lib/images/lokal.png',
                      label: 'Shopee Pilih Lokal',
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    SizedBox(width: 8),
                    SlideItem(
                      image: 'lib/images/spaylater.jpg',
                      label: 'Spaylater',
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    SizedBox(width: 9),
                    SlideItem(
                      image: 'lib/images/video.jpg',
                      label: 'Shopee Video',
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Shopee Live',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Image.asset(
                              'lib/images/shopeelive.jpg',
                              width: double.infinity,
                              height: 100,
                              fit: BoxFit.scaleDown,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Text(
                                'FLASH SALE',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'lib/images/flashsale1.jpeg',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        height: 250, // Set the height to 250
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 250,
                            enlargeCenterPage: false,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                          items: [
                            'lib/images/slide1.jpeg',
                            'lib/images/slide2.jpeg',
                            'lib/images/slide3.jpeg',
                          ].map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductItem(
                              image: 'lib/images/produk1.jpeg',
                              name:
                                  '[Free Mini Shopping Bag] lilybyred MAUVE LIP SET : Glassy Layer Fixing Tint',
                              price: 'Rp 100.000',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 20,
              color: Colors.grey.shade600,
            ),
            activeIcon: Icon(
              Icons.home_outlined,
              size: 20,
              color: Colors.deepOrange,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article_outlined,
              size: 20,
              color: Colors.grey.shade600,
            ),
            activeIcon: Icon(
              Icons.article_outlined,
              size: 20,
              color: Colors.deepOrange,
            ),
            label: 'New Arrivals',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.live_tv_outlined,
              size: 20,
              color: Colors.grey.shade600,
            ),
            activeIcon: Icon(
              Icons.live_tv_outlined,
              size: 20,
              color: Colors.deepOrange,
            ),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_outlined,
              size: 20,
              color: Colors.grey.shade600,
            ),
            activeIcon: Icon(
              Icons.video_collection_outlined,
              size: 20,
              color: Colors.deepOrange,
            ),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: 20,
              color: Colors.grey.shade600,
            ),
            activeIcon: Icon(
              Icons.notifications_outlined,
              size: 20,
              color: Colors.deepOrange,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 20,
              color: Colors.grey.shade600,
            ),
            activeIcon: Icon(
              Icons.person_outline,
              size: 20,
              color: Colors.deepOrange,
            ),
            label: 'Me',
          ),
        ],
        onTap: (index) {
          // Handle navigation to different tabs
          switch (index) {
            case 0:
              // Navigate to home page
              break;
            case 1:
              // Navigate to ProdukPage when "New Arrivals" is selected
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProdukPage()),
              );
              break;
            case 5:
              // Navigate to ProfileScreen when "Me" is selected
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
              break;
            // Handle navigation to other tabs...
          }
        },
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}

class Header extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late Color _backgroundColorSearch;
  late Color _colorIcon;

  @override
  void initState() {
    _backgroundColorSearch = Colors.white;
    _colorIcon = Colors.deepOrange;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepOrange,
      title: Row(
        children: [
          Expanded(
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                color: _backgroundColorSearch,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 4,
                  ),
                  isDense: true,
                  hintText: "Shopee",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrange,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.deepOrange,
                  ),
                  suffixIcon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.grey.shade600,
                  ),
                  filled: true,
                  fillColor: _backgroundColorSearch,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle shopping cart button pressed
            },
          ),
          IconButton(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle message button pressed
            },
          ),
        ],
      ),
    );
  }
}

class SlideItem extends StatelessWidget {
  final String image;
  final String label;
  final double imageWidth;
  final double imageHeight;

  const SlideItem({
    Key? key,
    required this.image,
    required this.label,
    this.imageWidth = 100,
    this.imageHeight = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductItem({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            image,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
