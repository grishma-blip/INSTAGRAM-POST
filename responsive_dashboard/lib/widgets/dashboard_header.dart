import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF512DA8),
            Color(0xFF7E57C2),
          ],
        ),

        borderRadius: BorderRadius.circular(20),
      ),

      child: const Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,

            child: Icon(
              Icons.person,
              size: 35,
              color: Color(0xFF673AB7),
            ),
          ),

          SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Here is your dashboard overview',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}