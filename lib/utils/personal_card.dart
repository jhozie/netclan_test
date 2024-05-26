import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                  ),
                  height: 175,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 50, right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Mary Jane',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 105,
                              ),
                              Text(
                                '+ INVITE', // to be replaced with TextButton
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF4F4F4F),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Lagos | Software Developer',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF4F4F4F),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Within 700-800 m',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF4F4F4F),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100,
                                child: LinearPercentIndicator(
                                  barRadius: const Radius.circular(20),
                                  progressColor:
                                      const Color.fromARGB(255, 8, 65, 92),
                                  percent: 0.46,
                                ),
                              ),
                              const Text(
                                'Profile Score - 46%',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF4F4F4F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Iconsax.coffee,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Coffee',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF4F4F4F),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Iconsax.briefcase,
                              size: 15,
                              color: Color.fromARGB(255, 156, 98, 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Business',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 156, 98, 10),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Iconsax.profile_2user,
                              size: 15,
                              color: Color.fromARGB(255, 138, 85, 6),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Friendship',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 138, 85, 6),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Hi Community! I am open to new connections 😊',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 95,
                right: 280,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 200, 208, 212),
                  ),
                  height: 90,
                  width: 100,
                  child: const Center(
                    child: Text(
                      'JN',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
