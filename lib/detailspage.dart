import 'package:tab_bar_project/model/destination.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final Destination obj;

  const Details(this.obj);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime[50],
        appBar: AppBar(
          backgroundColor: Colors.brown[700],
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.airplanemode_active)),
              Tab(child: Icon(Icons.directions_bus)),
              Tab(child: Icon(Icons.directions_bike)),
              Tab(child: Icon(Icons.directions_boat)),
              Tab(child: Icon(Icons.directions_railway)),
            ],
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          title: Text(
            "Travel Options",
            style: TextStyle(
                color: Colors.orange[300],
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.obj.name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown[900]),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 180,
            width: 250,
            child: Image.network(widget.obj.image, fit: BoxFit.fill),
          ),
          SizedBox(height: 10),
          Text("What You Can Do Here",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown[900])),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.obj.description,
                style: TextStyle(fontSize: 18, color: Colors.brown[900]),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                        "Domestic and International Flight Options Available",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            backgroundColor: Colors.orange[200],
                            color: Colors.brown[900]))),
                Center(
                    child: Text("Sleeper Coaches From All Major Cities",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            backgroundColor: Colors.orange[200],
                            color: Colors.brown[900]))),
                Center(
                    child: Text(
                        "Check Your Nearest Highways Authority For Details",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            backgroundColor: Colors.orange[200],
                            color: Colors.brown[900]))),
                Center(
                    child: Text("For GOA and LAKSHWADEEP Only!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            backgroundColor: Colors.orange[200],
                            color: Colors.brown[900]))),
                Center(
                    child: Text(
                        "Contact Indian Railways For Advance and TatKal Tickets",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            backgroundColor: Colors.orange[200],
                            color: Colors.brown[900]))),
              ],
              controller: _tabController,
            ),
          ),
        ]));
  }
}

class TravelTabs extends StatefulWidget {
  const TravelTabs({Key key}) : super(key: key);
  @override
  _TravelTabsState createState() => _TravelTabsState();
}

class _TravelTabsState extends State<TravelTabs>
    with SingleTickerProviderStateMixin {
  final List<Tab> travel = <Tab>[
    Tab(icon: Icon(Icons.airplanemode_active)),
    Tab(icon: Icon(Icons.directions_bus)),
    Tab(icon: Icon(Icons.directions_bike)),
    Tab(icon: Icon(Icons.directions_boat)),
    Tab(icon: Icon(Icons.directions_railway)),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: travel.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: new Scaffold(
            appBar: AppBar(
              bottom: TabBar(controller: _tabController, tabs: travel),
            ),
            body: TabBarView(
              controller: _tabController,
              children: travel.map((Tab tab) {
                final String label = tab.text.toLowerCase();
                return Center(
                  child: Text(
                    'This is the $label tab',
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
            )));
  }
}
