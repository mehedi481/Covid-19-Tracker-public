import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class Bangladesh extends StatelessWidget {
  Map bangladeshData;
  Bangladesh({this.bangladeshData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0, top: 5),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  child: Text(
                    "Bangladesh",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 75,
                  width: double.infinity,
                  child: Image.network(
                    bangladeshData["countryInfo"]['flag'],
                    height: 70,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CONFIRMED : " + bangladeshData['cases'].toString(),
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800]),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "ACTIVE : " + bangladeshData['active'].toString(),
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "RECOVERED : " + bangladeshData['recovered'].toString(),
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800]),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "TODAY DEATHS : " + bangladeshData['todayDeaths'].toString(),
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900]),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "TOTAL DEATHS : " + bangladeshData['deaths'].toString(),
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
