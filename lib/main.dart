import 'package:flutter/material.dart';
import 'package:myapp/Screens/screen1.dart';
import 'package:myapp/Screens/screen2.dart';
import 'package:myapp/Screens/screen3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Scream',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreens(),
    );
  }
}

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  String _searchText = ''; // Variable to hold the search text

  static List<Widget> _widgetOptions = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showLogin(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LoginPage(),
    );
  }

  // Function to handle search text changes
  void _onSearchTextChanged(String text) {
    setState(() {
      _searchText = text.toLowerCase(); // Convert input to lowercase for case-insensitive comparison
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(251, 243, 94, 143),
      drawer: Drawer(
        child: ListView(
          children: [
           UserAccountsDrawerHeader(
  accountName: Text(
    'Spandana',
    style: TextStyle(fontSize: 20, color: Colors.black),
  ),
  accountEmail: Text(
    'spandana@example.com',
    style: TextStyle(fontSize: 20, color: Colors.black),
  ),
  currentAccountPicture: CircleAvatar(
    backgroundImage: NetworkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzbtEVca1Lu54u4hn_sTkY63ueUL76OEurBA&s',
    ),
  ),
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        'https://as1.ftcdn.net/v2/jpg/01/27/11/68/1000_F_127116877_v4AjvmysgdSZe2AdOo7rhSyXQQbJVOyH.jpg', // Replace with your background image URL
      ),
      fit: BoxFit.cover,
    ),
    color: Color.fromARGB(255, 245, 117, 160),
    border: Border.all(width: 2, color: Color.fromARGB(251, 243, 94, 143)),
  ),
),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person_2_outlined, color: Color.fromARGB(251, 243, 94, 143)),
              title: Text(
                'My Profile',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(251, 243, 94, 143)),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.location_city_outlined, color: Color.fromARGB(251, 243, 94, 143)),
              title: Text(
                'Address',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(251, 243, 94, 143)),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.help, color: Color.fromARGB(251, 243, 94, 143)),
              title: Text(
                'Help',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(251, 243, 94, 143)),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings, color: Color.fromARGB(251, 243, 94, 143)),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(251, 243, 94, 143)),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.logout_rounded, color: Color.fromARGB(251, 243, 94, 143)),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 20, color: Color.fromARGB(251, 243, 94, 143)),
              ),
            ),
          ],
        ),
      ),
      key: scaffoldKey,
      appBar: CustomAppBar(
        title: 'I Scream',
        scaffoldKey: scaffoldKey,
        onNotificationTap: () {
          // Handle notification tap
        },
        onLoginTap: () => _showLogin(context), // Show login bottom sheet
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
  decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Search...',
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(),
  ),
  onChanged: _onSearchTextChanged,
),
          ),
          Expanded(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 20,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.icecream_rounded),
            label: 'IceCream',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.blender_rounded),
            label: 'Shakes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: 'Orders',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(251, 243, 94, 143),
        onTap: _onItemTapped,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final VoidCallback onNotificationTap;
  final VoidCallback onLoginTap;

  const CustomAppBar({
    required this.title,
    required this.scaffoldKey,
    required this.onNotificationTap,
    required this.onLoginTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.white60,
      actions: <Widget>[
        IconButton(
          onPressed: onNotificationTap,
          icon: Icon(
            Icons.trolley,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: onLoginTap,
          style: TextButton.styleFrom(backgroundColor: Colors.pink),
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final String text;

  const PlaceholderWidget({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;
                // For demo, print username and password
                print('Username: $username, Password: $password');
                // Close the login page
                Navigator.of(context).pop();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
