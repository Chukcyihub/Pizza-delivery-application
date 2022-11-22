import 'package:flutter/material.dart';
import 'package:pizza_delivery/helper/picture_helper.dart';
import 'package:pizza_delivery/helper/text_helper.dart';
import 'package:pizza_delivery/screens/order_screen.dart';
import 'package:pizza_delivery/widgets/custom_button_widget.dart';

class FourthGridWidget extends StatefulWidget {
  const FourthGridWidget({super.key});

  @override
  State<FourthGridWidget> createState() => _FourthGridWidgetState();
}

class _FourthGridWidgetState extends State<FourthGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      clipBehavior: Clip.none,
      child: Stack(
        children: [
          Container(),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            height: 200,
            width: 174,
            decoration: const BoxDecoration(
                color: Color.fromARGB(234, 233, 230, 223),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigText(bigText: 'Mexican Green Waves'),
                  Expanded(
                    child: Row(
                      children: const [
                        SmallText(smallText: '⚡️\n\n'),
                        SmallText(
                            smallText:
                                'Pepperoni pizza, Margarita \nPizza Margherita Italian \ncuisine Tomato'),
                      ],
                    ),
                  ),
                  const BigText(bigText: '💲23'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 174,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              child: Container(
                  clipBehavior: Clip.none,
                  child: const PizzaImage(nameImage: 'pizza1.png')),
            ),
          ),
          CustomButtonWidget(
              buttonheight: 40,
              marginT: 205,
              marginL: 40,
              marginR: 40,
              buttonText: 'Order Now',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderScreen(),
                  ),
                );
              },
              borderRadius: 30)
        ],
      ),
    );
  }
}
