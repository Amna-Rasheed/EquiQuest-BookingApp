import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'homepage.dart';
import 'favourites.dart';
import 'profile.dart';
import 'calendar.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart'; // Import the file you just created

void main() {
  runApp(MaterialApp(home: BookingPage()));
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String? _selectedTime; // State variable to keep track of the selected time

  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(
        context); // <-- Access the DarkModeProvider

    // Now you can use darkModeProvider.isDarkMode to conditionally set colors.
    Color backgroundColor = darkModeProvider.isDarkMode
        ? Color(0xFF071E07)
        : Color.fromARGB(255, 246, 245, 241);
    Color textColor =
        darkModeProvider.isDarkMode ? Color(0xFFF6F3E7) : Color(0xFF454545);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Booking Page'),
        backgroundColor: Color(0xFF454545),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height /
                  2, // Half of the screen height
              child: Container(
                height: double.infinity,
                child: SfCalendar(
                  backgroundColor: darkModeProvider.isDarkMode
                      ? Color(0xFF071E07)
                      : Color.fromARGB(255, 247, 246, 243),
                  view: CalendarView.month,
                  showNavigationArrow: true,
                  selectionDecoration: BoxDecoration(
                    color: Color(0xFF454545).withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  todayHighlightColor: Color(0xFF454545).withOpacity(0.9),
                  onTap: (CalendarTapDetails calendarTapDetails) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Selected Date'),
                          content:
                              Text('You selected: ${calendarTapDetails.date}'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Select Suitable Time',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SizedBox(height: 16.0),
            _buildButtonRow(context, ['10:30', '11:30', '12:30']),
            SizedBox(height: 16.0),
            _buildButtonRow(context, ['14:30', '15:30', '16:30']),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
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
      )),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Color(0xFF454545),
        ),
        child: BottomNavigationBar(
          currentIndex: 2,
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

  Widget _buildButtonRow(BuildContext context, List<String> times) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: times.map((time) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedTime = time; // Update the selected time
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Selected Time'),
                    content: Text('You selected: $time'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              primary: (_selectedTime == time)
                  ? Color(0xFF454545) // Selected time color
                  : Colors.grey,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(time),
          ),
        );
      }).toList(),
    );
  }
}
