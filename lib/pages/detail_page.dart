import 'package:flutter/material.dart';
import 'package:state_management/pages/home_page.dart';
import 'package:state_management/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 24,
          right: 24,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tasya Agnes',
                        style: welcomeTextStyle,
                      ),
                      Text(
                        'Food Blogger',
                        style: subWelcomeTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(width: 126),
                  Image.asset(
                    'assets/female_icon.png',
                    width: 60,
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 28, bottom: 20, top: 20),
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search restaurant...',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Categories',
                style: categoriesTextStyle,
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 110,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/popular_icon.png',
                            width: 38,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Populer',
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      width: 110,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/rottie_icon.png',
                            width: 38,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Rottie',
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      width: 110,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/steak_icon.png',
                            width: 38,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Steaks',
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      width: 110,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/popular_icon.png',
                            width: 38,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Popular',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nearby Restaurant',
                    style: categoriesTextStyle,
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            height: 83,
                            width: 400,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nearby_one.png',
                                  width: 100,
                                  height: 83,
                                ),
                                SizedBox(width: 16),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rumah Nenek',
                                        style: categoriesTextStyle,
                                      ),
                                      Text(
                                        '\$\$\$\$\$',
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 80),
                                Text(
                                  '1,4mil',
                                  style: distanceStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            height: 83,
                            width: 400,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nearby_two.png',
                                  width: 100,
                                  height: 83,
                                ),
                                SizedBox(width: 16),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Black Polar',
                                        style: categoriesTextStyle,
                                      ),
                                      Text(
                                        '\$\$\$\$\$',
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 85),
                                Text(
                                  '3,4mil',
                                  style: distanceStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            height: 83,
                            width: 400,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nearby_three.png',
                                  width: 100,
                                  height: 83,
                                ),
                                SizedBox(width: 16),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Office Club',
                                        style: categoriesTextStyle,
                                      ),
                                      Text(
                                        '\$\$\$\$\$',
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 85),
                                Text(
                                  '3,4mil',
                                  style: distanceStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            height: 83,
                            width: 400,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nearby_four.png',
                                  width: 100,
                                  height: 83,
                                ),
                                SizedBox(width: 16),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Biker Rooms',
                                        style: categoriesTextStyle,
                                      ),
                                      Text(
                                        '\$\$\$\$\$',
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 85),
                                Text(
                                  '1,4mil',
                                  style: distanceStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
