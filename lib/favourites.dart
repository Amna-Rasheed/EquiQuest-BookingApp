import 'package:equi_quest/homepage.dart';
import 'calendar.dart';
import 'profile.dart';
import 'package:flutter/material.dart';
import 'stable01.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart';

void main() {
  runApp(MaterialApp());
}

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(
        context); // <-- Access the DarkModeProvider

    // Now you can use darkModeProvider.isDarkMode to conditionally set colors.
    Color backgroundColor =
        darkModeProvider.isDarkMode ? Color(0xFF071E07) : Color(0XFFFFFFFF);
    Color textColor = darkModeProvider.isDarkMode ? Colors.white : Colors.black;
    // Color backgroundColor =
    //     darkModeProvider.isDarkMode ? Color(0xFF071E07) : Color.fromARGB(255, 250, 249, 248);
    // Color textColor =
    //     darkModeProvider.isDarkMode ? Color(0xFFF6F3E7) : Color(0xFF454545);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
              bottom: 8.0,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/logo-small.png',
                  height: 45.0,
                ),
                SizedBox(width: 25.0),
                Center(
                  child: Text(
                    'My Favourite Stables',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 25.0, // Increased font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.0), // Add spacing below the header
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Add your content here
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
                                builder: (context) => Stable01Page(),
                              ),
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
                            image: AssetImage('assets/Ceylon riding club.jpg'),
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
                                builder: (context) => Stable01Page(),
                              ),
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
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ceylon riding.jpg'),
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
                                builder: (context) => Stable01Page(),
                              ),
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
                                  'Riding School',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Piliyandala',
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
                ],
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
          currentIndex: 1,
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
    );
  }
}
