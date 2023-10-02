import 'package:equi_quest/cancelled.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'favourites.dart';
import 'profile.dart';
import 'calendar.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart'; // Import the file you just created

void main() {
  runApp(MaterialApp());
}

class UpcomingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(
        context); // <-- Access the DarkModeProvider

    // Now you can use darkModeProvider.isDarkMode to conditionally set colors.
    Color backgroundColor =
        darkModeProvider.isDarkMode ? Color(0xFF071E07) : Color(0xFFF6F3E7);
    Color textColor =
        darkModeProvider.isDarkMode ? Color(0xFFF6F3E7) : Color(0xFF454545);
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
                    'My Booking Schedule',
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
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // To evenly space the buttons horizontally
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CalendarPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16.0),
                  primary: Color(0xFF454545),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 4,
                ),
                child: Text('Completed'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle upcoming button press
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Color(0xFF454545),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 4,
                ),
                child: Text('Upcoming'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CancelPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16.0),
                  primary: Color(0xFF454545),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 4, // Add box shadow
                ),
                child: Text('Canceled'),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal:
                    16.0), // Horizontal padding for the original text box
            child: Container(
              padding: EdgeInsets.all(
                  16.0), // Padding for the original text box content
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(
                    10.0), // Rounded edges for the original text box
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Premadasa Stable',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Nugegoda',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Monday, 09/10/2023',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '16:30',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          16.0), // Space between text and "Completed" button
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.0), // Horizontal padding for the InkWell
                    child: InkWell(
                      onTap: () {
                        // Handle Completed button tap
                      },
                      child: Container(
                        padding: EdgeInsets.all(
                            8.0), // Padding for the InkWell content
                        decoration: BoxDecoration(
                          color: Color(0xFF454545),
                          borderRadius: BorderRadius.circular(
                              10.0), // Rounded edges for the InkWell
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'C A N C E L  N O W',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Color(
              0xFF454545), // Set the background color of the BottomNavigationBar
        ),
        child: BottomNavigationBar(
          currentIndex: 2, // Set the initial selected tab (Home)
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
          selectedItemColor: Colors.white, // Set the selected item color
          unselectedItemColor:
              Colors.white.withOpacity(0.6), // Set the unselected item color
          onTap: (index) {
            // Handle navigation to different pages here based on the index
            switch (index) {
              case 0:
                // Navigate to Home Page (homepage.dart)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                break;
              case 1:
                // Navigate to Favourites Page
                // You can replace this with your actual implementation
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
