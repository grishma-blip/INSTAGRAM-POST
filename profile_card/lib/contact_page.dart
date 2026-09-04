import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FA),

      // ==========================================
      // APP BAR
      // ==========================================

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
            size: 25,
          ),

          SizedBox(width: 18),

          Icon(
            Icons.send_outlined,
            color: Colors.black,
            size: 24,
          ),

          SizedBox(width: 16),
        ],
      ),

      // ==========================================
      // BODY
      // ==========================================

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ======================================
            // HEADER
            // ======================================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(
                20,
                24,
                20,
                22,
              ),

              decoration: const BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const Text(
                    'Contact & Services',

                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Need help? Choose a service below.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Small Instagram-style gradient line
                  Container(
                    width: 55,
                    height: 4,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFC107),
                          Color(0xFFFF4081),
                          Color(0xFF7E57C2),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ======================================
            // SECTION TITLE
            // ======================================

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              child: Text(
                'Services',

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // ======================================
            // SERVICE 1
            // ======================================

            ServiceCard(
              icon: Icons.account_circle_outlined,
              title: 'Profile Help',
              description:
                  'Assistance with your profile and account settings.',
            ),

            // ======================================
            // SERVICE 2
            // ======================================

            ServiceCard(
              icon: Icons.image_outlined,
              title: 'Post & Media',
              description:
                  'Get support for posts, photos and media.',
            ),

            // ======================================
            // SERVICE 3
            // ======================================

            ServiceCard(
              icon: Icons.mode_comment_outlined,
              title: 'Comments & Messages',
              description:
                  'Help with comments and user interactions.',
            ),

            // ======================================
            // SERVICE 4
            // ======================================

            ServiceCard(
              icon: Icons.security_outlined,
              title: 'Account Security',
              description:
                  'Learn more about keeping your account secure.',
            ),

            // ======================================
            // SERVICE 5
            // ======================================

            ServiceCard(
              icon: Icons.support_agent_outlined,
              title: 'Customer Support',
              description:
                  'Find help and support for your questions.',
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}


// ============================================================
// SERVICE CARD
// ============================================================

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 7,
      ),

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        border: Border.all(
          color: const Color(0xFFE9E9ED),
          width: 1,
        ),

        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Row(
        children: [

          // ==========================================
          // ICON
          // ==========================================

          Container(
            width: 52,
            height: 52,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors: [
                  Color(0xFFFFD54F),
                  Color(0xFFFF7043),
                  Color(0xFFE91E63),
                  Color(0xFF7E57C2),
                ],
              ),
            ),

            child: Icon(
              icon,
              color: Colors.white,
              size: 27,
            ),
          ),

          const SizedBox(width: 15),

          // ==========================================
          // TEXT
          // ==========================================

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,

                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  description,

                  style: const TextStyle(
                    fontSize: 12.5,
                    height: 1.3,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          // ==========================================
          // ARROW BUTTON
          // ==========================================

          Container(
            width: 36,
            height: 36,

            decoration: BoxDecoration(
              color: const Color(0xFFF3F1F8),
              shape: BoxShape.circle,
            ),

            child: const Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}