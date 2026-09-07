import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text(
          'Recent Activities',

          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF311B92),
          ),
        ),

        const SizedBox(height: 15),

        const ActivityTile(
          icon: Icons.folder,
          title: 'New project created',
          subtitle: 'Responsive Dashboard',
          color: Color(0xFF7E57C2),
        ),

        const SizedBox(height: 12),

        const ActivityTile(
          icon: Icons.check_circle,
          title: 'Task completed',
          subtitle: 'UI Design completed successfully',
          color: Color(0xFF26A69A),
        ),

        const SizedBox(height: 12),

        const ActivityTile(
          icon: Icons.message,
          title: 'New message received',
          subtitle: 'You have a new notification',
          color: Color(0xFFEC407A),
        ),

        const SizedBox(height: 12),

        const ActivityTile(
          icon: Icons.person,
          title: 'Profile updated',
          subtitle: 'Your profile was updated successfully',
          color: Color(0xFFFF7043),
        ),
      ],
    );
  }
}


class ActivityTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const ActivityTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              color: color,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,

                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D2D3A),
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  subtitle,

                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: color,
          ),
        ],
      ),
    );
  }
}