import 'package:flutter/material.dart';
import 'package:society/other/deshboard/members_list.dart';

import 'package:society/pages/visitorParking.dart';

import '../../cards_frequent/cab.dart';
import '../../cards_frequent/delivery.dart';
import '../../cards_frequent/guests.dart';
import '../../cards_frequent/workers.dart';

class SocietyAdmin extends StatelessWidget {
  const SocietyAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                const Text(
                  'Members List',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SocietyMembersLists()),
                    );
                  },
                  child: const card_container(
                    text: 'Conform Members',
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Conform Members',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SocietyMembersLists()),
                    );
                  },
                  child: const card_container(
                    text: 'Members List',
                  ),
                ),
                const Text(
                  'Add Society Members',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                const card_container(
                  icon: Icons.add,
                  text: '  Add Socity Members',
                  color: Colors.red,
                ),
                const SizedBox(height: 8.0),

                const _ElementsCard(
                  title: 'Members in society',
                  subtitle: 'May 15th, 2023 at 3:00pm',
                  icon: Icons.event,
                ),

                // Recent Announcements

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent Announcements',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const _ElementsCard(
                      title: 'Annual General Meeting',
                      subtitle: 'May 15th, 2023 at 3:00pm',
                      icon: Icons.event,
                    ),
                    const SizedBox(height: 8.0),
                    const _ElementsCard(
                      title: 'New Parking Policy',
                      subtitle: 'Effective June 1st, 2023',
                      icon: Icons.local_parking,
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('View All Announcements'),
                        ),
                        const Spacer(),
                        MyElevatedButton(
                          onPressed: () {},
                          borderRadius: BorderRadius.circular(7),
                          child: const Text(' +   Add'),
                        ),
                      ],
                    ),
                  ],
                ),

                // Upcoming Events
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Upcoming Events',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const _ElementsCard(
                      title: 'Summer Picnic',
                      subtitle: 'July 10th, 2023 at 12:00pm',
                      icon: Icons.emoji_food_beverage,
                    ),
                    const SizedBox(height: 8.0),
                    const _ElementsCard(
                      title: 'Fitness Bootcamp',
                      subtitle: 'Every Saturday at 7:00am',
                      icon: Icons.fitness_center,
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('View All Events'),
                        ),
                        const Spacer(),
                        MyElevatedButton(
                          onPressed: () {},
                          borderRadius: BorderRadius.circular(7),
                          child: const Text(' +   Add Events'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class card_container extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Color? color;
  const card_container({
    super.key,
    this.icon,
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 100,
      width: double.infinity,
      child: Center(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            text!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      )),
    );
  }
}

class FloatingForm extends StatelessWidget {
  final List<FloatingOption> options;

  const FloatingForm({Key? key, required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Choose the Visitor for pre-approval:',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 12,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: options,
          ),
        ],
      ),
    );
  }
}

class FloatingOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const FloatingOption(
      {Key? key, required this.icon, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.cyan.shade400,
              size: 30,
            ),
            const SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(fontSize: 14, color: Colors.blueGrey[900]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _MetricCard({
    Key? key,
    required this.title,
    required this.count,
    required this.icon,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        padding: const EdgeInsets.all(12.0),
        width: 170.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 50.0,
              color: color,
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '$count',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ElementsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _ElementsCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 48.0,
            color: Colors.blue,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: Colors.blue[800],
      ),
      body: const Center(
        child: Text('This is Page 1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Colors.blue[800],
      ),
      body: const Center(
        child: Text('This is Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        backgroundColor: Colors.blue[800],
      ),
      body: const Center(
        child: Text('This is Page 3'),
      ),
    );
  }
}

String maidStatus = 'In';

void _showMaidStatusDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Select Maid Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('In'),
              textColor: Colors.green,
              onTap: () {
                maidStatus = 'In';
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: const Text('Out'),
              textColor: Colors.red,
              onTap: () {
                maidStatus = 'Out';
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 40.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
