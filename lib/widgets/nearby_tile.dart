import 'package:flutter/material.dart';
import 'package:state_management/pages/home_page.dart';
import 'package:state_management/theme.dart';

class NearbyTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Container(
          height: 83,
          width: 327,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(width: 85),
              Text(
                '1,4mil',
                style: distanceStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
