import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Gap(10),
                  Image.asset("assets/images/Logo.png"),
                  const Gap(80),
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                  ),
                  const Text(
                    "Cairo",
                    style: TextStyle(fontFamily: "Sora"),
                  ),
                  const Gap(5),
                  Image.asset(
                    'assets/images/YE.png',
                    scale: 20,
                  ),
                  const Icon(
                    Icons.arrow_drop_down_outlined,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Container(
                    clipBehavior: Clip.none,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // return SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       leading: const Text(""),
    //     ),
    //     body: Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               clipBehavior: Clip.none,
    //               width: 50,
    //               height: 70,
    //               child: const Image(
    //                 image: AssetImage("assets/images/Logo.png"),
    //               ),
    //             ),
    //             Container(
    //               clipBehavior: Clip.none,
    //               width: 20,
    //               height: 20,
    //               child: const Image(
    //                 image: AssetImage(
    //                   "assets/images/pin.png",
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               clipBehavior: Clip.none,
    //               width: 50,
    //               height: 70,
    //               child: const Icon(Icons.favorite_outline),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
