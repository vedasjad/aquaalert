import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // Placeholder for logo
            Image.asset('assets/images/a.jpg', height: 100, width: 100),
            const SizedBox(height: 20),
            Image.asset('assets/images/aqua-alert.jpg',
                height: 100, width: 300),
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  width: 238,
                  child: Text(
                    'Track your water usage effortlessly, receive real-time alerts, and take control of your water management.',
                    style: TextStyle(
                      color: Color(0xFF161616),
                      fontSize: 15,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.75,
                      letterSpacing: -0.14,
                    ),
                  ),
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 48),
                      backgroundColor: const Color(0xFF396AFC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Container(
                      width: 327,
                      height: 48,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFF396AFC)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool agreeToPrivacy = false;
  bool agreeToDataProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xFF161616),
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Hello there, welcome!',
                            style: TextStyle(
                              color: Color(0xFF161616),
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/a(1).jpg',
                        height: 75, width: 75),
                  ],
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Color(0xFFA8A8A8),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF396AFC)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      // Refresh the widget to change label color
                    });
                  },
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                    prefixText: '+91 ',
                    labelStyle: TextStyle(
                      color: Color(0xFFA8A8A8),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF396AFC)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  onTap: () {
                    setState(() {
                      // Refresh the widget to change label color
                    });
                  },
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'OTP',
                    labelStyle: TextStyle(
                      color: Color(0xFFA8A8A8),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF396AFC)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onTap: () {
                    setState(() {
                      // Refresh the widget to change label color
                    });
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(
                      value: agreeToPrivacy,
                      onChanged: (bool? value) {
                        setState(() {
                          agreeToPrivacy = value!;
                        });
                      },
                      activeColor: const Color(0xFF396AFC),
                    ),
                    const Expanded(
                      child: Text('I agree to Privacy Policy and Terms of Use'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: agreeToDataProcessing,
                      onChanged: (bool? value) {
                        setState(() {
                          agreeToDataProcessing = value!;
                        });
                      },
                      activeColor: const Color(0xFF396AFC),
                    ),
                    const Expanded(
                      child: Text(
                        'I agree to the processing of my personal data for app functions.',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: agreeToPrivacy && agreeToDataProcessing
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LocationSetupScreen()),
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(327, 48),
                    backgroundColor: const Color(0xFF396AFC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Sign me up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.16,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              color: Color(0xFF161616),
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.12,
                            ),
                          ),
                          TextSpan(
                            text: 'Log in',
                            style: TextStyle(
                              color: Color(0xFF396AFC),
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              letterSpacing: -0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back navigation
          },
        ),
      ),
      body: const Center(child: Text('Login Screen')),
    );
  }
}

class LocationSetupScreen extends StatefulWidget {
  const LocationSetupScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationSetupScreenState createState() => _LocationSetupScreenState();
}

class _LocationSetupScreenState extends State<LocationSetupScreen> {
  final _formKey = GlobalKey<FormState>();

  String houseFlatNo = '';
  String areaLocality = '';
  String city = '';
  String state = '';
  String pincode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back navigation
          },
        ),
        backgroundColor: Colors.white, // Set background color to white
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 327.50,
                    child: Text(
                      'Set your location',
                      style: TextStyle(
                        color: Color(0xFF161616),
                        fontSize: 20,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                        letterSpacing: -0.20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 327.50,
                    child: Text(
                      'Let’s get your location set up to keep you connected and informed.',
                      style: TextStyle(
                        color: Color(0xFF161616),
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: 0.14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement location fetching logic here
                    },
                    icon: const Icon(Icons.location_on, color: Color(0xFF396AFC)),
                    label: const Text(
                      'Use my current location',
                      style: TextStyle(
                        color: Color(0xFF396AFC),
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.14,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'House/Flat no',
                      labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF396AFC)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                      ),
                    ),
                    onChanged: (value) => houseFlatNo = value,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Area/Locality/Landmark',
                      labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF396AFC)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                      ),
                    ),
                    onChanged: (value) => areaLocality = value,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'City',
                      labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF396AFC)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                      ),
                    ),
                    onChanged: (value) => city = value,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'State',
                            labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF396AFC)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                            ),
                          ),
                          onChanged: (value) => state = value,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Pincode',
                            labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF396AFC)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA8A8A8)),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) => pincode = value,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeDetailsScreen(),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF396AFC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Container(
                      width: 327,
                      height: 48,
                      alignment: Alignment.center,
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeDetailsScreen(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF161616),
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeDetailsScreen extends StatefulWidget {
  const HomeDetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeDetailsScreenState createState() => _HomeDetailsScreenState();
}

class _HomeDetailsScreenState extends State<HomeDetailsScreen> {
  int numberOfPeople = 1;
  int numberOfBathrooms = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back navigation
          },
        ),
        backgroundColor: Colors.white, // Set background color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 327.50,
              child: Text(
                'Tell us about your home',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 20,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 1.75,
                  letterSpacing: -0.20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
              width: 327.50,
              child: Text(
                'Help us understand your home to optimize your water usage.',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.75,
                  letterSpacing: -0.14,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Row for the question
            const SizedBox(
              width: 327.50,
              child: Text(
                'How many people live in your home?',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: 0.32,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Row for the - icon, input, and + icon
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove,
                      size: 24,
                      color: Color(
                          0xFF161616)), // Increased size and color for - icon
                  onPressed: () {
                    setState(() {
                      if (numberOfPeople > 1) numberOfPeople--;
                    });
                  },
                ),
                const SizedBox(
                    width: 20), // Add spacing between - icon and input field
                SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    controller:
                        TextEditingController(text: numberOfPeople.toString()),
                    onChanged: (value) {
                      setState(() {
                        numberOfPeople = int.tryParse(value) ?? numberOfPeople;
                      });
                    },
                  ),
                ),
                const SizedBox(
                    width: 20), // Add spacing between input field and + icon
                IconButton(
                  icon: const Icon(Icons.add,
                      size: 24,
                      color: Color(
                          0xFF396AFC)), // Increased size and color for + icon
                  onPressed: () {
                    setState(() {
                      numberOfPeople++;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Row for the question
            const SizedBox(
              width: 327.50,
              child: Text(
                'How many bathrooms do you have?',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: 0.32,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Row for the - icon, input, and + icon
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove,
                      size: 24,
                      color: Color(
                          0xFF161616)), // Increased size and color for - icon
                  onPressed: () {
                    setState(() {
                      if (numberOfBathrooms > 0) numberOfBathrooms--;
                    });
                  },
                ),
                const SizedBox(
                    width: 20), // Add spacing between - icon and input field
                SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    controller: TextEditingController(
                        text: numberOfBathrooms.toString()),
                    onChanged: (value) {
                      setState(() {
                        numberOfBathrooms =
                            int.tryParse(value) ?? numberOfBathrooms;
                      });
                    },
                  ),
                ),
                const SizedBox(
                    width: 20), // Add spacing between input field and + icon
                IconButton(
                  icon: const Icon(Icons.add,
                      size: 24,
                      color: Color(
                          0xFF396AFC)), // Increased size and color for + icon
                  onPressed: () {
                    setState(() {
                      numberOfBathrooms++;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to the AppliancesSelectedScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppliancesSelectedScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF396AFC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Container(
                width: 327,
                height: 48,
                alignment: Alignment.center,
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailsScreen(),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF161616),
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppliancesSelectedScreen extends StatefulWidget {
  @override
  _AppliancesSelectedScreenState createState() =>
      _AppliancesSelectedScreenState();
}

class _AppliancesSelectedScreenState extends State<AppliancesSelectedScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Set<String> _selectedIndoorAppliances = Set<String>();
  final Set<String> _selectedOutdoorAppliances = Set<String>();

  final List<Map<String, dynamic>> appliances = [
    {'name': 'Faucet', 'icon': Icons.water_damage},
    {'name': 'Washing machine', 'icon': Icons.local_laundry_service},
    {'name': 'Bathtub', 'icon': Icons.bathtub},
    {'name': 'Shower', 'icon': Icons.shower},
    {'name': 'Dishwasher', 'icon': Icons.kitchen},
    {'name': 'RO System', 'icon': Icons.water},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Back navigation
          },
        ),
        backgroundColor: Colors.white, // Set background color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 327.50,
              child: Text(
                'Your home appliances',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 20,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 1.75,
                  letterSpacing: -0.20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
              width: 327.50,
              child: Text(
                'Select the appliances you use to track water usage accurately.',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.75,
                  letterSpacing: -0.14,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Indoor'),
                Tab(text: 'Outdoor'),
              ],
              labelColor: const Color(0xFF396AFC),
              unselectedLabelColor: Colors.black,
              indicatorColor: const Color(0xFF396AFC),
            ),
            const SizedBox(height: 20), // Space between TabBar and grid
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildApplianceGrid(_selectedIndoorAppliances),
                  _buildApplianceGrid(_selectedOutdoorAppliances),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SplashScreen(), // Replace with your SplashScreen widget
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF396AFC), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Container(
                width: 327,
                height: 48,
                alignment: Alignment.center,
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailsScreen(),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF161616),
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildApplianceGrid(Set<String> selectedAppliances) {
    return GridView.builder(
      itemCount: appliances.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final appliance = appliances[index];
        final isSelected = selectedAppliances.contains(appliance['name']);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                selectedAppliances.remove(appliance['name']);
              } else {
                // Ensure that selecting an appliance in one tab
                // does not select it in the other tab
                if (_tabController.index == 0) {
                  _selectedOutdoorAppliances.remove(appliance['name']);
                } else {
                  _selectedIndoorAppliances.remove(appliance['name']);
                }
                selectedAppliances.add(appliance['name']);
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? Colors.blueAccent : Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isSelected ? const Color(0xFF396AFC) : Colors.grey,
                width: 2,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  appliance['icon'],
                  size: 40,
                  color: isSelected ? Colors.white : Colors.black,
                ),
                const SizedBox(height: 10),
                Text(
                  appliance['name'],
                  style: TextStyle(
                    fontSize: 16,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
