import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/home_setup_page/home_setup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../app/routes/app_routes.dart';

class AppliancesSetupPage extends StatefulWidget {
  const AppliancesSetupPage({super.key});

  @override
  State<AppliancesSetupPage> createState() => _AppliancesSetupPageState();
}

class _AppliancesSetupPageState extends State<AppliancesSetupPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Set<String> _selectedIndoorAppliances = <String>{};
  final Set<String> _selectedOutdoorAppliances = <String>{};

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
                Get.offAllNamed(AppRoutes.stage);
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
