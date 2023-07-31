import 'package:flutter/material.dart';
import '../../login_page/login_page.dart';
import '../../in_app_pages/drawer_pages/about_us_page.dart';
import '../../in_app_pages/drawer_pages/contact_us_page.dart';
import '../../in_app_pages/drawer_pages/exchange_page.dart';
import '../../in_app_pages/drawer_pages/payment_page.dart';
import '../../in_app_pages/drawer_pages/profile_page.dart';
import '../../in_app_pages/drawer_pages/transactions_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 225, 245, 255),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 45),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 190, 233, 255),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(2, 2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]),
              child: Text(
                'SCK BANK',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue.shade900),
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Hoşgeldin',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              Text(
                'SAMET CAN KÖSE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          SearchBar(hintText: 'Bir arama yapın'),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Profil',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.add_card,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Kart Ekle',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              /*
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddCardPage()),
              );*/
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.transform_rounded,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Transfer İşlemleri',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransactionsPage()),
              );
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.payments_outlined,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Ödemeler',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              );
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.currency_exchange,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Döviz',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExchangePage()),
              );
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.call,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'İletişim',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUsPage()),
              );
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.info,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Hakkında',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsPage()),
              );
            },
          ),
          const Divider(color: Color.fromARGB(255, 136, 134, 134)),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              'Çıkış Yap',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
