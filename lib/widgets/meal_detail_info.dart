import 'package:flutter/material.dart';

class MealDetailInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: width - 60,
        color: const Color(0xffF4F4),
        child: Padding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Chick’n Shack",
                style: TextStyle(
                  fontFamily: 'Futura_Bold',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "AED 42",
                style: TextStyle(
                  fontFamily: 'Futura_Medium_bt',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const Text(
                "Antibiotic-free, crispy chicken breast with lettuce, pickles, and buttermilk herb mayo on a non-GMO Martin’s Potato Roll.",
                style: TextStyle(
                  fontFamily: 'Futura_Book',
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          padding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
