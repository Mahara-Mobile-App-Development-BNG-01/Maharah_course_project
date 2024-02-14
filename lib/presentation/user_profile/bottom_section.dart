import 'package:flutter/material.dart';
import 'package:maharah_course_project/presentation/widgets/profile_option.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.background,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileOption(
            icon: Icons.person,
            onTap: () {},
            iconColor: Colors.pinkAccent,
            title: 'Edit Profile',
          ),
          ProfileOption(
            icon: Icons.query_stats,
            onTap: () {},
            iconColor: Colors.greenAccent,
            title: 'My status',
          ),
          ProfileOption(
            icon: Icons.settings,
            onTap: () {},
            iconColor: Colors.deepPurpleAccent,
            title: 'Settings',
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          ProfileOption(
            icon: Icons.calendar_today,
            onTap: () {},
            iconColor: Colors.grey.shade500,
            title: 'Invite friends',
          ),
          ProfileOption(
            icon: Icons.help,
            onTap: () {},
            iconColor: Colors.grey.shade500,
            title: 'Help',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade200),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {},
              child: const Text("Sing Out"),
            ),
          )
        ],
      ),
    );
  }
}
