import 'package:flutter/material.dart';

class ViewOne extends StatelessWidget {
  const ViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/water.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            alignment: Alignment.topLeft,
            child: const BackButton(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  'Save Water Save Life',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 140,
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 25,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Swat Valley',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 6,
                      child: Icon(
                        Icons.star_border_purple500_sharp,
                        color: Colors.yellow,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Rating'),
                    SizedBox(
                      height: 4,
                    ),
                    Text('(76.3 km)'),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 6,
                      child: Icon(
                        Icons.home,
                        size: 40,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Peoples'),
                    Text(' 2,309,570'),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 6,
                      child: Icon(
                        Icons.restaurant_menu,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Restaurant'),
                    Text(
                      '30',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Swat is mostly inhabited by Pushtoons who make up 90.78% of the population. '
                  'The dominant tribe is the Yusufzai tribe with minor settlements of Shinwari, Tarkani, Ghoryakhel and Sulaimankhel tribes.'
                  'The language spoken in the valley is Pashto (mainly the Yousafzai dialect.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text(
                        'Trip Booked Successfully!',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.teal,
                      action: SnackBarAction(
                        label: 'Undo',
                        textColor: Colors.yellow,
                        onPressed: () {
                          // Code to undo the change.
                        },
                      ),
                      duration: const Duration(seconds: 4),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Book My Trip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
