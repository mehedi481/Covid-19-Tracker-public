import 'package:flutter/material.dart';

class Worldwide extends StatelessWidget {
  final Map worldData;

  Worldwide({this.worldData});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      children: [
        StatusPannel(
          pannelColor: Colors.red[100],
          textColor: Colors.red[800],
          title: "CONFIRMED",
          count: worldData["cases"].toString(),
        ),
        StatusPannel(
          pannelColor: Colors.blue[100],
          textColor: Colors.blue[800],
          title: "ACTIVE",
          count: worldData["active"].toString(),
        ),
        StatusPannel(
          pannelColor: Colors.green[100],
          textColor: Colors.green[800],
          title: "RECOVERED",
          count: worldData["recovered"].toString(),
        ),
        StatusPannel(
          pannelColor: Colors.grey[400],
          textColor: Colors.grey[800],
          title: "DEATHS",
          count: worldData["deaths"].toString(),
        ),
      ],
    );
  }
}

class StatusPannel extends StatelessWidget {
  final Color pannelColor;
  final Color textColor;
  final String title;
  final String count;
  const StatusPannel(
      {this.count, this.pannelColor, this.textColor, this.title});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 80,
      width: width / 2,
      decoration: BoxDecoration(
        color: pannelColor,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
