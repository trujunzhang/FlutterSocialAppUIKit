import 'dart:math';

import 'package:flutter/material.dart';
import 'package:social_app_ui/util/data.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/cm${random.nextInt(10)}.jpeg",
                ),
                radius: 50,
              ),
              SizedBox(height: 10),
              Text(
                "Ling Waldner",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Status should be here",
                style: TextStyle(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: buildStatisticInfo(),
              ),
              SizedBox(height: 20),
              buildPhotos(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatisticInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              random.nextInt(10000).toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Restaurants",
              style: TextStyle(),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              random.nextInt(10000).toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Reviews",
              style: TextStyle(),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              random.nextInt(10000).toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Photos",
              style: TextStyle(),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildPhotos() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      primary: false,
      padding: EdgeInsets.all(5),
      itemCount: 15,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 200 / 200,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(5.0),
          child: Image.asset(
            "assets/cm${random.nextInt(10)}.jpeg",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
