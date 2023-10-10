import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  final Color textColor = const Color(0xFF1F2553);
  final Color backgroundColor = const Color(0xFFFAFAFF);
  final Color widgetColor = const Color.fromARGB(255, 219, 221, 238);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Forza Blaugrana',
                style: TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8.0),
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/avatar.jpg',
                    fit: BoxFit.cover,
                    scale: 0.5,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: widgetColor,
                      ),
                      child: Text('Latest News',
                          style: TextStyle(
                              fontSize: 15,
                              color: textColor,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: widgetColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Lastest Match',
                          style: TextStyle(
                              fontSize: 15,
                              color: textColor,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getBuildRowImage('assets/images/player1.jpg'),
                    getBuildRowImage('assets/images/player2.jpg'),
                    getBuildRowImage('assets/images/player3.jpg'),
                    getBuildRowImage('assets/images/player4.jpeg'),
                    getBuildRowImage('assets/images/player5.jpg')
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Text('5 Top Players',
                    style: TextStyle(
                        fontSize: 25,
                        color: textColor,
                        fontWeight: FontWeight.bold)),
              ),
              getBuildTopPlayer(
                  image: 'assets/images/player1.jpg',
                  number: '1',
                  name: 'Lionel Messi',
                  team: 'Inter Miami'),
              getBuildTopPlayer(
                  image: 'assets/images/player2.jpg',
                  number: '2',
                  name: 'Erling Haaland',
                  team: 'Manchester City'),
              getBuildTopPlayer(
                  image: 'assets/images/player3.jpg',
                  number: '3',
                  name: 'Kylian Mbappe',
                  team: 'Paris Saint Germain'),
              getBuildTopPlayer(
                  image: 'assets/images/player4.jpeg',
                  number: '4',
                  name: 'Pedri',
                  team: 'Barcelona'),
              getBuildTopPlayer(
                  image: 'assets/images/player5.jpg',
                  number: '5',
                  name: 'Cristiano Ronaldo',
                  team: 'Al Nasr'),
            ],
          ),
        ));
  }

  Widget getBuildRowImage(String image) => _buildRowImage(image);

  Widget _buildRowImage(String image) {
    return Container(
      width: 65,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }

  Widget getBuildTopPlayer({
    required String image,
    required String number,
    required String name,
    required String team,
  }) =>
      _buildTopPlayers(image, number, name, team);

  Widget _buildTopPlayers(
      String image, String number, String name, String team) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widgetColor,
      ),
      margin: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      height: 100,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(number,
              style: TextStyle(
                  fontSize: 25, color: textColor, fontWeight: FontWeight.bold)),
          const SizedBox(width: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, fit: BoxFit.cover, width: 65, height: 85),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold)),
              Text(team,
                  style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
