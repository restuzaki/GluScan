import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_sehat/app/common/widget/custom_navbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Home Page',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.navigateToScan,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.qr_code_scanner),
                  SizedBox(width: 8),
                  Text('Scan'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavbar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.onTabTapped,
      ),
    );
  }
}
