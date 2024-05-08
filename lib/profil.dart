import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add navigation to settings screen
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add navigation to shopping cart screen
            },
          ),
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {
              // Add navigation to chat screen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              color: Colors.deepOrange,
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Erikson Sitompul',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Platinum Member',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Pesanan Saya',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildFeature('Belum Bayar', Icons.pending_actions),
                      buildFeature('Dikemas', Icons.archive),
                      buildFeature('Dikirim', Icons.local_shipping),
                      buildFeature('Penilaian', Icons.star),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fitur Lainnya',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildFeature('ShopePay', Icons.payments),
                      buildFeature('Shoppe Coins', Icons.money),
                      buildFeature('SpyLater', Icons.access_time),
                      buildFeature('MyVouchers', Icons.card_giftcard),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fitur Tambahan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: [
                      buildNewFeature('Shopee App', Icons.phone_android),
                      buildNewFeature('Sea Bank', Icons.account_balance),
                      buildNewFeature('My Insurance', Icons.local_hospital),
                      buildNewFeature('Shoppe Member', Icons.people),
                      buildNewFeature('My Likes', Icons.favorite),
                      buildNewFeature('Shoppe Prize', Icons.card_giftcard),
                      buildNewFeature('Recently Prize', Icons.card_giftcard),
                      buildNewFeature('Shoppe Mater', Icons.shopping_bag),
                      buildNewFeature('Shoppe Live', Icons.live_tv),
                      buildNewFeature('Shopee Games', Icons.videogame_asset),
                      buildNewFeature(
                          'Voucher Saya', Icons.confirmation_number),
                      buildNewFeature(
                          'Shoppe Affiliate Program', Icons.group_work),
                      buildNewFeature('Pengaturan Akun', Icons.settings),
                      buildNewFeature('Pusat Bantuan', Icons.help),
                      buildNewFeature('Chat dengan Shopee', Icons.chat),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Edit Profile Screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeature(String title, IconData iconData) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 20,
          color: Colors.deepOrange,
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildNewFeature(String title, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Header'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10);
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}
