import 'package:tab_bar_project/detailspage.dart';
import 'package:tab_bar_project/model/destination.dart';
import 'package:flutter/material.dart';

class MyTravelApp extends StatefulWidget {
  @override
  _MyTravelAppState createState() => _MyTravelAppState();
}

class _MyTravelAppState extends State<MyTravelApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        elevation: 50,
        title: Text(
          "Where To Go? By SHARATH",
          style: TextStyle(
              color: Colors.orange[200],
              fontSize: 19,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://st.depositphotos.com/1637553/2286/i/950/depositphotos_22866368-stock-photo-india.jpg",
                height: 225,
                width: 600,
                fit: BoxFit.fill),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "By Category",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.lime[900],
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
            Container(
              height: 60,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.brown[700],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(categoryList[index].name,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange[200])),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Family Favourites",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.lime[900],
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
            Container(
              height: 150,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinationList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      Details(destinationList[index])),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 115,
                              width: 150,
                              child: Image.network(destinationList[index].image,
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          destinationList[index].name,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.brown[900]),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.lime[900],
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
            Container(
              height: 600,
              width: 400,
              child: GridView.builder(
                  reverse: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: destinationList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 120,
                            //width: 170,
                            child: Image.network(destinationList[index].image,
                                fit: BoxFit.fill),
                          ),
                        ),
                        Text(
                          destinationList[index].name,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.brown[900],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
