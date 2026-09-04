import 'package:flutter/material.dart';
<<<<<<< HEAD

void main() {
  runApp(const GrishmaProfileApp());
}

class GrishmaProfileApp extends StatelessWidget {
  const GrishmaProfileApp({super.key});
=======
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
>>>>>>> 2718b0ef03674b72cd86d9320fe51a69ef83b25a

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      title: 'GrishmaThakare Profile',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7F8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E),
        ),
      ),
      home: const ProfileHome(),
    );
  }
}

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  static const navy = Color(0xFF102A43);
  static const teal = Color(0xFF0F766E);
  static const coral = Color(0xFFFF6B6B);
  static const textDark = Color(0xFF172B4D);
  static const muted = Color(0xFF64748B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: LayoutBuilder(
        builder: (context, box) {
          final desktop = box.maxWidth >= 850;

          return SingleChildScrollView(
            padding: EdgeInsets.all(desktop ? 35 : 18),
            child: desktop ? _desktopLayout() : _mobileLayout(),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: navy,
      foregroundColor: Colors.white,
      elevation: 0,
      title: const Row(
        children: [
          Icon(Icons.code_rounded),
          SizedBox(width: 10),
          Text(
            'GrishmaThakare',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }

  Widget _desktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            children: [
              _profileCard(),
              const SizedBox(height: 20),
              _aboutCard(),
            ],
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          flex: 6,
          child: Column(
            children: [
              _stats(),
              const SizedBox(height: 20),
              _infoCard(),
              const SizedBox(height: 20),
              _skillsCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _mobileLayout() {
    return Column(
      children: [
        _profileCard(),
        const SizedBox(height: 18),
        _stats(),
        const SizedBox(height: 18),
        _aboutCard(),
        const SizedBox(height: 18),
        _infoCard(),
        const SizedBox(height: 18),
        _skillsCard(),
      ],
    );
  }

  Widget _profileCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: navy,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: coral,
                ),
                child: const CircleAvatar(
                  radius: 82,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: navy,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xFF22C55E),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            'Grishma Thakare',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 7),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              color: Color(0xFF8DE5DA),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white70,
                size: 19,
              ),
              SizedBox(width: 5),
              Text(
                'India',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Row(
            children: [
              Expanded(
                child: _profileButton(
                  'Connect',
                  Icons.person_add_alt_1,
                  teal,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _profileButton(
                  'Message',
                  Icons.mail_outline,
                  coral,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _profileButton(
    String text,
    IconData icon,
    Color color,
  ) {
    return SizedBox(
      height: 46,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }

  Widget _stats() {
    return Row(
      children: [
        Expanded(
          child: _statBox(
            Icons.work_outline,
            '18',
            'Projects',
            teal,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _statBox(
            Icons.people_outline,
            '1.2K',
            'Followers',
            coral,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _statBox(
            Icons.star_outline,
            '4.8',
            'Rating',
            Colors.amber,
          ),
        ),
      ],
    );
  }

  Widget _statBox(
    IconData icon,
    String value,
    String label,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withOpacity(.15),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 27,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: textDark,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              color: muted,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _aboutCard() {
    return _card(
      title: 'About Me',
      icon: Icons.person_outline,
      color: coral,
      child: const Text(
        'I am a passionate software developer who enjoys '
        'creating clean, responsive and user-friendly applications. '
        'I work with Flutter and Dart to build practical digital '
        'solutions and continuously improve my development skills.',
        style: TextStyle(
          color: muted,
          fontSize: 15,
          height: 1.6,
        ),
      ),
    );
  }

  Widget _infoCard() {
    return _card(
      title: 'Quick Information',
      icon: Icons.dashboard_customize_outlined,
      color: teal,
      child: Column(
        children: [
          _infoRow(
            Icons.email_outlined,
            'Email',
            'grishma21@gmail.com',
            teal,
          ),
          _divider(),
          _infoRow(
            Icons.school_outlined,
            'Education',
            'Computer Science',
            coral,
          ),
          _divider(),
          _infoRow(
            Icons.location_on_outlined,
            'Location',
            'India',
            teal,
          ),
          _divider(),
          _infoRow(
            Icons.code_outlined,
            'Role',
            'Flutter Developer',
            coral,
          ),
        ],
      ),
    );
  }

  Widget _infoRow(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(.10),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: color,
              size: 21,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    color: textDark,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _skillsCard() {
    return _card(
      title: 'Technical Skills',
      icon: Icons.terminal_rounded,
      color: teal,
      child: Column(
        children: [
          _skill('Flutter', .92, teal),
          const SizedBox(height: 18),
          _skill('Dart', .88, coral),
          const SizedBox(height: 18),
          _skill('Firebase', .76, Colors.indigo),
          const SizedBox(height: 18),
          _skill('UI / UX', .82, Colors.orange),
        ],
      ),
    );
  }

  Widget _skill(
    String name,
    double value,
    Color color,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: textDark,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              '${(value * 100).round()}%',
              style: const TextStyle(
                color: textDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 9,
            backgroundColor: const Color(0xFFE5E7EB),
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }

  Widget _card({
    required String title,
    required IconData icon,
    required Color color,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 15,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withOpacity(.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  color: textDark,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          child,
        ],
      ),
    );
  }

  Widget _divider() {
    return const Divider(
      height: 1,
      color: Color(0xFFE5E7EB),
=======

      title: 'Instagram UI',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
        useMaterial3: true,
      ),

      home: const HomePage(),
>>>>>>> 2718b0ef03674b72cd86d9320fe51a69ef83b25a
    );
  }
}