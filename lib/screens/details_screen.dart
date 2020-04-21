import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final imgPath, title;

  const DetailsScreen({Key key, this.imgPath, this.title}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF000000).withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: const Color(0xFFFD4F99),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.filter_list,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Text(
                  widget.title.toString().toUpperCase(),
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: const Color(0xFF353535),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.bookmark_border,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Trending Attractions',
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: const Color(0xFFFFFFFF),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 15.0,
                        ),
                        child: Container(
                          width: 325.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/kyoto.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 10.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 60.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Kyoto tour',
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  Text(
                                    'Three day tour around Kyoto',
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: const Color(0xFFFFFFFF),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: const Color(0xFFFD4F99),
                                    size: 14.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Weekly Highlights',
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        RoundedCustomCard(
                          imgPath: 'assets/japan.jpg',
                          placeName: 'Takashi castle',
                          price: '\$200 - \$400',
                        ),
                        RoundedCustomCard(
                          imgPath: 'assets/kyoto.jpg',
                          placeName: 'Heaven\'s gate',
                          price: '\$50 - \$150',
                        ),
                        RoundedCustomCard(
                          imgPath: 'assets/canada.jpg',
                          placeName: 'Miay gate',
                          price: '\$300 - \$350',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RoundedCustomCard extends StatelessWidget {
  final String imgPath, placeName, price;

  const RoundedCustomCard({Key key, this.imgPath, this.placeName, this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 175.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Positioned(
            top: 15.0,
            right: 15.0,
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xFFFFFFFF),
              ),
              child: Center(
                child: Icon(
                  Icons.bookmark_border,
                  color: const Color(0xFFFD4F99),
                  size: 14.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 125.0,
            left: 15.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  placeName,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFFFFFFF),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
