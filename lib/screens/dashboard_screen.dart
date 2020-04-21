import 'package:flutter/material.dart';
import 'package:travelapp/screens/details_screen.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
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
                'HOME',
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
        SizedBox(height: 10.0),
        Container(
          height: MediaQuery.of(context).size.height - 140,
          child: ListView(
            children: <Widget>[
              CustonCard(
                imgPath: 'assets/japan.jpg',
                country: 'Japan',
                description: 'Explore the land of rising sun',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustonCard(
                imgPath: 'assets/canada.jpg',
                country: 'Canada',
                description: 'Explore the vast forest of Canada',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustonCard extends StatelessWidget {
  final String imgPath, country, description;

  const CustonCard({Key key, this.imgPath, this.country, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
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
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    country,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          imgPath: imgPath,
                          title: country,
                        ),
                      ),
                    ),
                    child: Container(
                      width: 125,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          'Explore now',
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFD4F99),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
