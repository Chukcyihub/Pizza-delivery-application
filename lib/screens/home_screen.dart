import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_delivery/screens/splash_screen.dart';
import 'package:pizza_delivery/widgets/first_grid_widget.dart';
import 'package:pizza_delivery/widgets/fourth_grid_widget.dart';
import 'package:pizza_delivery/widgets/second_grid_widget.dart';
import 'package:pizza_delivery/widgets/third_grid_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              ),
            );
          },
          child: const Image(
            image: AssetImage('assets/images/Pizza logo.png'),
          ),
        ),
        title: Container(
          clipBehavior: Clip.none,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.orange,
              ),
              const Text('Cairo'),
              Image.asset(
                'assets/images/flag.png',
                scale: 20,
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, bottom: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 234, 230, 223)),
              padding: const EdgeInsets.all(2.0),
              child: const Icon(Icons.favorite_outline_sharp),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                      50,
                      25,
                      50,
                      2,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(
                        150,
                        235,
                        215,
                        179,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 120,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                      30,
                      25,
                      30,
                      2,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(
                        100,
                        238,
                        204,
                        145,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 115,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                      20,
                      25,
                      20,
                      2,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        234,
                        230,
                        223,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 110,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 40,
                      left: 30,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              '🔥Eat Fresh Pizza',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              '⚡️Fast Delivery',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              '✨Near For You',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 0,
                      left: 240,
                    ),
                    clipBehavior: Clip.none,
                    child: Image.asset(
                      'assets/images/girl face.png',
                      scale: 0.92,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 40,
                      left: 200,
                    ),
                    clipBehavior: Clip.none,
                    child: Image.asset(
                      'assets/images/Tomato.png',
                      scale: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 90,
                      left: 170,
                    ),
                    clipBehavior: Clip.none,
                    child: Image.asset(
                      'assets/images/Shallot.png',
                      scale: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 70,
                      left: 220,
                    ),
                    clipBehavior: Clip.none,
                    child: Image.asset(
                      'assets/images/Basil.png',
                      scale: 1,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 46,
                width: double.infinity,
                clipBehavior: Clip.none,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 234, 230, 223),
                        hintText: 'Search for favorite Pizza',
                        hintStyle: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/Search.png',
                            scale: 5,
                          ),
                        ),
                      )),
                    ),
                    const Gap(20),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 234, 230, 223),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/Filter.png',
                          scale: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                clipBehavior: Clip.none,
                // padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text(
                                    'Pizza',
                                    style: TextStyle(
                                        fontFamily: 'Sora',
                                        color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                        ),
                        const FirstGridWidget(),
                        const ThirdGridWidget()
                      ],
                    ),
                    const Gap(10),
                    Column(
                      children: const [
                        SecondGridWidget(),
                        FourthGridWidget(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 80, right: 80),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromARGB(0, 244, 67, 54)),
          child: Stack(
            children: [
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(0, 146, 58, 52)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 5, bottom: 5),
                child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.home_filled,
                          color: Color.fromARGB(255, 244, 145, 12),
                        ),
                        const Gap(70),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/Group 2.png'))
                      ],
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(left: 100, top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Image.asset(
                  'assets/images/scanner.png',
                  scale: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
