import 'package:equi_quest/booking.dart';
import 'package:equi_quest/homepage.dart';
import 'calendar.dart';
import 'profile.dart';
import 'favourites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart'; // Import the file you just created

void main() {
  runApp(MaterialApp());
}

class Stable01Page extends StatefulWidget {
  @override
  _Stable01PageState createState() => _Stable01PageState();
}

class _Stable01PageState extends State<Stable01Page> {
  bool isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;
    });
  }

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
        appBar: AppBar(
          title: Text('Premadasa Stable'),
          backgroundColor: Color(0xFF454545),
          actions: [
            IconButton(
              icon: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited ? Colors.red : Colors.white,
              ),
              onPressed: _toggleFavorite,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30.0), // Space between image and text
                Image.asset(
                  'assets/premadasa.png', // Replace with your image asset path
                  height: 100.0, // Adjust the height as needed
                ),
                SizedBox(height: 16.0), // Space between image and text
                Text(
                  'Premadasa Stable',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 16.0),
                RatingBar.builder(
                  initialRating: 4, // Replace with your initial rating value
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25.0, // Adjust the size of the rating stars
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(height: 16.0), // Space between rating and text box
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0), // Horizontal padding for text box
                  child: Container(
                    padding: EdgeInsets.all(25.0), // Padding for text content
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: textColor.withOpacity(0.4),
                          blurRadius: 4.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                          10.0), // Rounded edges for text box
                    ),
                    child: Text(
                      'Premadasa Riding School" is a well-established equestrian facility that offers a range of horse-related activities and services for enthusiasts of all ages and skill levels. Located in Nugegoda, the riding school provides a very welcoming and educational environment for individuals who are interested in horseback riding and horsemanship.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0), // Space between text box and button
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0), // Horizontal padding for the InkWell
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => BookingPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(
                          8.0), // Padding for the InkWell content
                      decoration: BoxDecoration(
                        color: Color(0xFF454545),
                        borderRadius: BorderRadius.circular(10.0),
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
                          'B O O K  N O W',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Color(
                0xFF454545), // Set the background color of the BottomNavigationBar
          ),
          child: BottomNavigationBar(
            currentIndex: 1, // Set the initial selected tab (Home)
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
        ));
  }
}
