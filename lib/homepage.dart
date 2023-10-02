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
    final darkModeProvider = Provider.of<DarkModeProvider>(
        context); // <-- Access the DarkModeProvider

    // Now you can use darkModeProvider.isDarkMode to conditionally set colors.
    Color backgroundColor =
        darkModeProvider.isDarkMode ? Color(0xFF071E07) : Color(0xFFF6F3E7);
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
                    'assets/logo-small.png', // Replace with your logo image path
                    height: 45.0, // Adjust the height to match the search bar
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
                          borderRadius:
                              BorderRadius.circular(10), // For border radius
                          borderSide: BorderSide(
                              color: textColor.withOpacity(0.5),
                              width: 1), // Add this line for border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(50.0), // For border radius
                          borderSide: BorderSide(
                              color: textColor.withOpacity(0.5),
                              width: 1), // Add this line for border color
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle search button press
                    },
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
                              onPressed: () {
                                // Handle button tap for "Pony rides"
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xFF454545), // Set button color to #454545
                              ),
                              child: Text('Pony rides'),
                            ),
                            SizedBox(
                              width: 16.0, // Adjust spacing between buttons
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button tap for "Riding lessons"
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xFF454545), // Set button color to #454545
                              ),
                              child: Text('Riding lessons'),
                            ),
                            SizedBox(
                              width: 16.0, // Adjust spacing between buttons
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button tap for "Trail riding"
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(
                                    0xFF454545), // Set button color to #454545
                              ),
                              child: Text('Trail riding'),
                            ),
                            SizedBox(
                              width: 16.0, // Adjust spacing between buttons
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0), // Add spacing between buttons
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
                          color: Color(0xFFcccccc), // Grey background color
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded edges
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0), // Padding top and bottom
                        child: Center(
                          child: Text(
                            'Nothing Scheduled Today',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold, // Bold text
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0), // Add spacing between headings
                      Text(
                        'Top Stables',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16.0), // Add spacing below "Top Stables"

                      // Stable button
                      Row(
                        children: [
                          // Large image on the left
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/premadasa.png'), // Replace with your stable image path
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),

                          SizedBox(
                              width:
                                  16.0), // Add spacing between image and text

                          // Text on the right
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
                                backgroundColor:
                                    Color(0xFFcccccc), // Grey background color
                              ),
                              child: Container(
                                // Same width as the image
                                height: 100.0, // Same height as the image
                                padding: EdgeInsets.all(
                                    16.0), // Add internal padding
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Premadasa Stable',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .black, // Set text color to black
                                      ),
                                    ),
                                    Text(
                                      'Nugegoda',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors
                                            .black, // Set text color to black
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
                      SizedBox(height: 16.0), // Add spacing between buttons
                      Row(
                        children: [
                          // Large image on the left
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/Ceylon riding club.jpg'), // Replace with your stable image path
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          SizedBox(
                              width:
                                  16.0), // Add spacing between image and text
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                // Handle button tap (navigate to stable page)
                              },
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    Color(0xFFcccccc), // Grey background color
                              ),
                              child: Container(
                                // Same width as the image
                                height: 100.0, // Same height as the image
                                padding: EdgeInsets.all(
                                    16.0), // Add internal padding
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ceylon Riding Club',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .black, // Set text color to black
                                      ),
                                    ),
                                    Text(
                                      'Port City',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors
                                            .black, // Set text color to black
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
            canvasColor: Color(
                0xFF454545), // Set the background color of the BottomNavigationBar
          ),
          child: BottomNavigationBar(
            currentIndex: 0, // Set the initial selected tab (Home)
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
