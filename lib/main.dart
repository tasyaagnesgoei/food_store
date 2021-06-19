import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management/theme.dart';

void main() => runApp(FoodCake());

class FoodCake extends StatefulWidget {
  @override
  _FoodCakeState createState() => _FoodCakeState();
}

class _FoodCakeState extends State<FoodCake> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/cover.png',
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Cake',
                      style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Jakarta, Indonesia',
                      style: GoogleFonts.poppins(
                        color: Color(0xffB0B0B0),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 96),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 1),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 1),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 1),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 1),
                        Image.asset(
                          'assets/grey_star.png',
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          '12,409',
                          style: GoogleFonts.poppins(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'reviews',
                          style: GoogleFonts.poppins(
                            color: Color(0xffB0B0B0),
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
            ),
            child: Text(
              'This Summer',
              style: GoogleFonts.poppins(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String title,
      String pricing,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imageUrl,
                    width: 55,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: foodTitle,
                      ),
                      SizedBox(height: 4),
                      Text(
                        pricing,
                        style: pricingTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(width: 91),
                  selectedIndex == index
                      ? Image.asset(
                          'assets/check.png',
                          width: 24,
                        )
                      : Image.asset(
                          'assets/circle.png',
                          width: 24,
                        ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget checkoutButton() {
      return Column(
        children: [
          Container(
            width: 380,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffFFC700),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(71),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: buttonTextStyle,
              ),
            ),
          )
        ],
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFAFAFC),
        body: Column(
          children: [
            header(),
            option(0, 'assets/pic_one.png', 'Vegan X World', '\$12,000'),
            option(1, 'assets/pic_two.png', 'Kiwii Kawaii', '\$40,000'),
            option(2, 'assets/pic_three.png', 'Kiwii Kawaii', '\$40,000'),
            SizedBox(height: 30),
            selectedIndex == -1 ? SizedBox() : checkoutButton(),
          ],
        ),
      ),
    );
  }
}
