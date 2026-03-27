import 'package:flutter/material.dart';
import 'package:salavudeen_portfolio/view/home/scroll_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  void _launch(String url) {
    launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          /// 🔥 Title
          Text(
            "Let's Connect",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Feel free to reach out for collaborations",
            style: TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 40),

          /// 🔥 Cards
          Wrap(
            spacing: 25,
            runSpacing: 25,
            alignment: WrapAlignment.center,
            children: [
              _contactCard(
                icon: Icons.phone,
                title: "Call Me",
                subtitle: "+91 9159940977",
                onTap: () => _launch("tel:+919159940977"),
              ),
              _contactCard(
                icon: Icons.email,
                title: "Email",
                subtitle: "salavudeendev@gmail.com",
                onTap: () =>
                    _launch("mailto:salavudeendev@gmail.com"),
              ),
              _contactCard(
                icon: Icons.code,
                title: "GitHub",
                subtitle: "Dev-Salavudeen",
                onTap: () =>
                    _launch("https://github.com/Dev-Salavudeen"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// 🔥 PREMIUM CARD
  Widget _contactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 240,
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),

          /// 🔥 Gradient background
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.blue.shade900,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

          /// 🔥 Glow shadows
          boxShadow: [
            BoxShadow(
              color: Colors.pinkAccent.withOpacity(0.6),
              blurRadius: 15,
              offset: const Offset(-3, -3),
            ),
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.6),
              blurRadius: 15,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}