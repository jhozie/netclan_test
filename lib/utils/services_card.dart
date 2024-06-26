import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
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
                  height: 185,
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
                                  'Ajay Bidyarthy',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 70,
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
                            'Within 500 - 600 m',
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
                                  percent: 0.70,
                                ),
                              ),
                              const Text(
                                'Profile Score - 70%',
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
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 22, 45, 65),
                                ),
                                child: const Icon(
                                  Iconsax.call,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 22, 45, 65),
                                ),
                                child: const Icon(
                                  Iconsax.profile_add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Chief Executive Officer | 10 yrs of Experience',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Hi Community! I am available at your service!',
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
                bottom: 105,
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
                      'AB',
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
