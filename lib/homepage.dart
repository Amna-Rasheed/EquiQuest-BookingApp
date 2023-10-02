import 'package:equi_quest/favourites.dart';
import 'package:equi_quest/calendar.dart';
import 'package:equi_quest/profile.dart';
import 'package:flutter/material.dart';
import 'stable01.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart'; // Import the file you just created

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(context);
    Color backgroundColor = darkModeProvider.isDarkMode
        ? Color(0xFF071E07)
        : Color.fromARGB(255, 244, 243, 241);
    Color textColor = darkModeProvider.isDarkMode ? Colors.white : Colors.black;
    return Container(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/logo-small.png',
                    height: 45.0,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search EquiQuest',
                        hintStyle: TextStyle(
                          color: textColor.withOpacity(0.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: textColor.withOpacity(0.5), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                              color: textColor.withOpacity(0.5), width: 1),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: textColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.0),
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF454545),
                              ),
                              child: Text('Pony rides'),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF454545),
                              ),
                              child: Text('Riding lessons'),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF454545),
                              ),
                              child: Text('Trail riding'),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Scheduled Today',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFcccccc),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: Text(
                            'Nothing Scheduled Today',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Top Stables',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/premadasa.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Stable01Page()),
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFFcccccc),
                              ),
                              child: Container(
                                height: 100.0,
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Premadasa Stable',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Nugegoda',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star_border,
                                            color: Colors.yellow, size: 18.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/Ceylon riding club.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFFcccccc),
                              ),
                              child: Container(
                                height: 100.0,
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ceylon Riding Club',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Port City',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 18.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Color(0xFF454545),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favourites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.6),
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                  break;
                case 1:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FavouritesPage()),
                  );
                  break;
                case 2:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CalendarPage()),
                  );
                  break;
                case 3:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
