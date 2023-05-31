import 'package:flutter/material.dart';

class MyGateHomePage extends StatefulWidget {
  @override
  _MyGateHomePageState createState() => _MyGateHomePageState();
}

class _MyGateHomePageState extends State<MyGateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.notifications_none),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back, John',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for visitors, deliveries...',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Quick Actions',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    _buildQuickActionCard(
                      'Visitors',
                      Icons.people,
                      Colors.blue[600]!,
                      onTaped: () {},
                    ),
                    _buildQuickActionCard(
                      'Deliveries',
                      Icons.local_shipping,
                      Colors.orange[600]!,
                      onTaped: () {},
                    ),
                    _buildQuickActionCard(
                      'Service Providers',
                      Icons.build,
                      Colors.green[600]!,
                      onTaped: () {
                        showModalBottomSheet<void>(
                          // context and builder are
                          // required properties in this widget
                          context: context,
                          builder: (BuildContext context) {
                            // we set up a container inside which
                            // we create center column and display text

                            // Returning SizedBox instead of a Container
                            ///////////
                            // return SizedBox(
                            //   height: 200,
                            //   child: Center(
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: const <Widget>[
                            //         Text('GeeksforGeeks'),
                            //       ],
                            //     ),
                            //   ),
                            // );
                            return Container(
                              height: 400,
                              child: ListView(
                                padding: const EdgeInsets.all(8),
                                children: <Widget>[
                                  Card(
                                    child: Container(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Text('     Car Washer'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Container(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Text('     Maid'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Container(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Text('     Driver'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    _buildQuickActionCard(
                      'Society Payments',
                      Icons.attach_money,
                      Colors.red[600]!,
                      onTaped: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionCard(String title, IconData iconData, Color color,
      {required VoidCallback onTaped}) {
    return InkWell(
      onTap: onTaped,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
              size: 40,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
