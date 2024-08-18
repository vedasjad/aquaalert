import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/home_setup_page/home_setup_page.dart';
import 'package:flutter/material.dart';

class LocationSetupPage extends StatefulWidget {
  const LocationSetupPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationSetupPageState createState() => _LocationSetupPageState();
}

class _LocationSetupPageState extends State<LocationSetupPage> {
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
                    icon:
                        const Icon(Icons.location_on, color: Color(0xFF396AFC)),
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
                            builder: (context) => const HomeSetupPage(),
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
          ),
        ),
      ),
    );
  }
}
