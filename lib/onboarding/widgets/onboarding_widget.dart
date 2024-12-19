import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../home/ui/home_screen.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isLastScreen;

  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.isLastScreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image taking 2/3 of the screen height
        Expanded(
          flex: 2, // 2/3 of the screen
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const CircularProgressIndicator.adaptive(),
            ),
          ),
        ),
        // Spacer to separate content
        // Fancy text at the bottom
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 40.0,
          ),
          // Adjust bottom padding
          child: Text(
            title,
            style: GoogleFonts.lobster(
              fontSize: 36, // Big font size
              fontWeight: FontWeight.bold, // Bold text
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        if (isLastScreen) ...[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25), // Rounded corners
              ),
              elevation: 4, // Slight shadow for depth
            ),
            onPressed: () {
              // Button action
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const Text(
              "Get Started",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color
              ),
            ),
          )
        ],
        const Spacer()
      ],
    );
  }
}
