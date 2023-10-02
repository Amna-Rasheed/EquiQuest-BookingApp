import 'package:equi_quest/homepage.dart';
import 'favourites.dart';
import 'calendar.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart';

void main() {
  runApp(MaterialApp(home: ProfilePage()));
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  File? _image;

  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(
        context); // <-- Access the DarkModeProvider

    // Now you can use darkModeProvider.isDarkMode to conditionally set colors.
    Color backgroundColor =
        darkModeProvider.isDarkMode ? Color(0xFF071E07) : Colors.white;
    Color textColor = darkModeProvider.isDarkMode ? Colors.white : Colors.black;
    return Builder(
      builder: (context) {
        return Scaffold(
          key: scaffoldKey,
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
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Color(0xFF454545),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment
                                .bottomRight, // Align the camera icon to the bottom right corner
                            children: [
                              CircleAvatar(
                                radius: 60.0,
                                backgroundImage: _image != null
                                    ? Image.file(_image!)
                                        .image // Cast ImageProvider<Object> to ImageProvider<Image>
                                    : AssetImage('assets/profilepic.jpg'),
                              ),
                              Container(
                                width: 37.0,
                                height: 37.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF454545),
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.2),
                                    width: 1.0,
                                  ),
                                ),
                                child: Center(
                                  child: IconButton(
                                    iconSize: 20.0,
                                    icon: Icon(
                                      Icons.camera_alt,
                                      color: Colors.white,
                                    ),
                                    onPressed: () async {
                                      showModalBottomSheet<void>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            child: Wrap(
                                              children: <Widget>[
                                                ListTile(
                                                  leading:
                                                      Icon(Icons.photo_library),
                                                  title: Text(
                                                      'Choose from gallery'),
                                                  onTap: () async {
                                                    final pickedFile =
                                                        await ImagePicker()
                                                            .pickImage(
                                                      source:
                                                          ImageSource.gallery,
                                                    );
                                                    if (pickedFile != null) {
                                                      setState(() {
                                                        _image = File(
                                                            pickedFile.path);
                                                      });
                                                      Navigator.pop(context);
                                                    }
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      Icon(Icons.photo_camera),
                                                  title: Text('Take a picture'),
                                                  onTap: () async {
                                                    final pickedFile =
                                                        await ImagePicker()
                                                            .pickImage(
                                                      source:
                                                          ImageSource.camera,
                                                    );
                                                    if (pickedFile != null) {
                                                      setState(() {
                                                        _image = File(
                                                            pickedFile.path);
                                                      });
                                                      Navigator.pop(context);
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'Isabel Werth',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Profile settings list wrapped in a container
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              // Handle logout action and navigate to login page
                              // Replace 'LoginScreen()' with your login page
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()),
                              );
                            },
                            leading: Icon(
                              Icons.logout,
                              color: textColor,
                            ),
                            title: Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: textColor,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: textColor,
                              size: 16.0,
                            ),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.brightness_4,
                              color: textColor,
                            ),
                            title: Text(
                              'Dark Mode',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: textColor,
                              ),
                            ),
                            trailing: Switch(
                              value: darkModeProvider.isDarkMode,
                              onChanged: (bool value) {
                                darkModeProvider.toggleDarkMode();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(
              canvasColor: Color(0xFF454545),
            ),
            child: BottomNavigationBar(
              currentIndex: 3,
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
                    // Already on the Profile Page
                    break;
                }
              },
            ),
          ),
        );
      },
    );
  }
}
