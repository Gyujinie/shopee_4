import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'ViewProduk.dart';
import 'home_page.dart';
import 'profil.dart';

class ProdukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'NEW ',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'ARRIVALS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black87,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Colors.black87,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final produkList = snapshot.data?.docs ?? [];

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: produkList.length,
                itemBuilder: (context, index) {
                  var produk = produkList[index].data() as Map<String, dynamic>;
                  var productId = produkList[index].id;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ViewProduk(productId: productId),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6.0),
                                topRight: Radius.circular(6.0),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: produk['imageURL'] ?? '',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                placeholder: (context, url) => Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) {
                                  print('Error loading image: $error');
                                  return Icon(Icons.error);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  produk['Name'] ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 2,
                                    horizontal: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.deepOrange,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Text(
                                    'NEW From Followed Shop',
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 7,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      NumberFormat.currency(
                                        locale: 'id_ID',
                                        symbol: 'Rp ',
                                        decimalDigits: 0,
                                      ).format(produk['Price'] ?? 0),
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 250, 210, 197)
                                                .withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        '-28%',
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 1,
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
              break;
            case 1:
              // Stay on the current page when "New Arrivals" is selected
              break;
            case 2:
              break;
            case 3:
              break;
            case 4:
              break;
            case 5:
              // Navigate to Profile page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
              break;
            default:
              break;
          }
        },
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
