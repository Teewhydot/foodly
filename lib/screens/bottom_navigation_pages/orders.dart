import 'package:flutter/material.dart';
import 'package:foodly/reusables/constants.dart';
import 'package:foodly/reusables/widgets/reusable_button.dart';
import 'package:foodly/screens/cards_screens/add_card_details.dart';
import 'package:page_transition/page_transition.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          'Your Orders',
          style: kTitleTextStyle,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kBlackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 337,
            ),
            addVerticalSpacing(10),
            const OrderDetailsRow(
              lead: Text('Subtotal'),
              tail: Text('\$45'),
            ),
            addVerticalSpacing(20),
            const OrderDetailsRow(
              lead: Text('Delivery'),
              tail: Text('\$0'),
            ),
            addVerticalSpacing(20),
            const OrderDetailsRow(
              lead: Text('Total'),
              tail: Text('\$45'),
            ),
            addVerticalSpacing(30),
            const OrderDetails(
                lead: Text(
                  'Add more items',
                  style: kGreenText,
                ),
                tail: Icon(Icons.arrow_forward_ios)),
            addVerticalSpacing(10),
            const OrderDetails(
                lead: Text(
                  'Promo code',
                  style: kBlackText,
                ),
                tail: Icon(Icons.arrow_forward_ios)),
            addVerticalSpacing(10),
            ReusableButton(const Text('Buy'), () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const AddCardDetails(),
                      type: PageTransitionType.rightToLeft));
            }, kGreenColor),
          ],
        ),
      ),
    );
  }
}

class OrderDetailsRow extends StatelessWidget {
  final Widget lead;
  final Widget tail;

  const OrderDetailsRow({super.key, required this.lead, required this.tail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        lead,
        tail,
      ],
    );
  }
}

class OrderDetails extends StatelessWidget {
  final Widget lead;
  final Widget tail;

  const OrderDetails({super.key, required this.lead, required this.tail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        lead,
        tail,
      ],
    );
  }
}
