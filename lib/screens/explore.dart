import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:netclan_test/screens/refine.dart';
import 'package:netclan_test/utils/businesses_card.dart';
import 'package:netclan_test/utils/drawer.dart';

import '../utils/personal_card.dart';
import '../utils/services_card.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Search Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Favorites Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              color: Colors.white,
              icon: const Icon(
                Iconsax.menu_1,
                size: 30,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy Joseph Nwankwo!!',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Iconsax.location,
                    color: Colors.white,
                    size: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Location, Netclan',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 22, 45, 65),
          toolbarHeight: 80,
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RefineScreen(),
                    ));
                  },
                  icon: const Icon(
                    Iconsax.task_square,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Refine',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            )
          ],
        ),
        drawer: const NetClanDrawer(),
        body: Column(
          children: [
            const Divider(
              thickness: 2,
              height: 2,
              color: Color.fromARGB(255, 21, 133, 185),
            ),
            Container(
              height: 50,
              color: const Color.fromARGB(255, 8, 65, 92),
              child: const TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white,
                  tabs: [
                    Text(
                      'Personal',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Services',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Businesses',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: 35, right: 40, bottom: 10),
                      child: SearchField(),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return const PersonalCard();
                        },
                      ),
                    ),
                  ],
                ), // Services Tab
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: 35, right: 40, bottom: 10),
                      child: SearchField(),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return const ServicesCard();
                        },
                      ),
                    ),
                  ],
                ),
                // Businesses Tab

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: 35, right: 40, bottom: 10),
                      child: SearchField(),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return const BusinessesCard();
                        },
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 65,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.eye,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.people4),
                label: 'Connect',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.message),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.note,
                ),
                label: 'Contacts',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.hashtag4,
                ),
                label: 'Groups',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color.fromARGB(255, 8, 65, 92),
            unselectedItemColor: const Color.fromARGB(255, 8, 65, 92),
            selectedLabelStyle:
                const TextStyle(color: Color.fromARGB(255, 8, 65, 92)),
            showUnselectedLabels: true,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: SizedBox(
            height: 37,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 12),
                  prefixIcon: const Icon(
                    Iconsax.search_normal_1,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Icon(
          color: Color.fromARGB(255, 8, 65, 92),
          Iconsax.setting_4,
          size: 35,
        )
      ],
    );
  }
}
