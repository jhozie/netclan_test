import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class NetClanDrawer extends StatelessWidget {
  const NetClanDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/netclan.png'),
                  fit: BoxFit.cover),
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Icon(
                        Iconsax.user,
                      ),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Icon(
                      Iconsax.setting_2,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Joseph Nwankwo',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'josephuser020',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 150,
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(20),
                    lineHeight: 14,
                    progressColor: Colors.white,
                    percent: 0.46,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Available',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.user),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.people),
            title: const Text('My Network'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.shop),
            title: const Text('Switch to Services'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.building),
            title: const Text('Switch to Businesses'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.heart4),
            title: const Text('Dating'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.profile_2user),
            title: const Text('Matrimony'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.shopping_bag),
            title: const Text('Buy-Sell-Rent'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.brifecase_cross),
            title: const Text('Jobs'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.personalcard),
            title: const Text('Business Cards'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.hashtag),
            title: const Text('Netclan Groups'),
            onTap: () {},
          ),
          ListTile(
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 22, 45, 65),
                fontSize: 16),
            leading: const Icon(Iconsax.note),
            title: const Text('Notes'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
