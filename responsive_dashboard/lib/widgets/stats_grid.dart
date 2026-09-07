import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    int crossAxisCount;

    if (width > 1000) {
      crossAxisCount = 4;
    } else if (width > 700) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

    return GridView.count(
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,

      physics: const NeverScrollableScrollPhysics(),

      crossAxisSpacing: 20,
      mainAxisSpacing: 20,

      childAspectRatio: 2.2,

      children: const [
        StatCard(
          icon: Icons.people,
          value: '1,250',
          title: 'Students',
          color: Color(0xFF5E35B1),
        ),

        StatCard(
          icon: Icons.folder,
          value: '48',
          title: 'Projects',
          color: Color(0xFFFF7043),
        ),

        StatCard(
          icon: Icons.task_alt,
          value: '76',
          title: 'Tasks',
          color: Color(0xFF26A69A),
        ),

        StatCard(
          icon: Icons.message,
          value: '24',
          title: 'Messages',
          color: Color(0xFFEC407A),
        ),
      ],
    );
  }
}


class StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String title;
  final Color color;

  const StatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(14),

            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              color: color,
              size: 30,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  value,

                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D2D3A),
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  title,

                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
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