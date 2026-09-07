import 'package:flutter/material.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/stats_grid.dart';
import '../widgets/activity_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3FA),

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.white,

        title: const Text(
          'Responsive Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4A148C),
                Color(0xFF7B1FA2),
                Color(0xFFAB47BC),
              ],
            ),
          ),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(20),

        children: [
          DashboardHeader(),

          SizedBox(height: 25),

          StatsGrid(),

          SizedBox(height: 30),

          ActivityList(),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}