import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/appliances_setup_page/appliances_setup_page.dart';
import 'package:flutter/material.dart';

class HomeSetupPage extends StatefulWidget {
  const HomeSetupPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeSetupPageState createState() => _HomeSetupPageState();
}

class _HomeSetupPageState extends State<HomeSetupPage> {
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
                    builder: (context) => const AppliancesSetupPage(),
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
                    builder: (context) => const HomeSetupPage(),
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
