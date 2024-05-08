import 'package:flutter/material.dart';
import 'ViewProduk.dart'; // Import halaman ViewProduk.dart

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
      body: SingleChildScrollView(
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
            itemCount: 6,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle navigation to ViewProduk.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewProduk()),
                  );
                },
                child: Card(
                  elevation: 0, //
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
                          child: Image.asset(
                            'lib/images/produk1.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '[Free Mini Shopping Bag] Lilybyred Mauve Lip Set Glassy Layer Fixing Tint',
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
                                  'Rp 255.000',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 250, 210, 197)
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
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              // Navigate to ProdukPage when "New Arrivals" is selected
              break;
            case 2:
              // Navigate to Live page
              break;
            case 3:
              // Navigate to Video page
              break;
            case 4:
              // Navigate to Notification page
              break;
            case 5:
              // Navigate to Me page
              break;
            default:
              // Navigate to home page if index is unknown
              break;
          }
        },
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
