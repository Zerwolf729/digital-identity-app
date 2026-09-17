import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_theme.dart';
import 'package:flutter_application_1/widgets/profile_header.dart';
import 'package:flutter_application_1/widgets/skill_tag.dart';
import 'package:flutter_application_1/widgets/contact_item.dart';
import 'package:flutter_application_1/widgets/multimedia_card.dart';
import 'package:flutter_application_1/widgets/section_header.dart';
import 'package:flutter_application_1/core/theme/app_spacing.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Digital Identity',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double maxWidth = constraints.maxWidth;
          final double effectiveWidth = maxWidth > 480.0 ? 480.0 : maxWidth;
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: effectiveWidth),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                  vertical: AppSpacing.xl,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ProfileHeader(),
                    const SizedBox(height: AppSpacing.xl),
                    const SectionHeader(title: 'Skills'),
                    _buildSkillsSection(),
                    const SizedBox(height: AppSpacing.xl),
                    const SectionHeader(title: 'Contact'),
                    _buildContactSection(),
                    const SizedBox(height: AppSpacing.xl),
                    const SectionHeader(title: 'About Me'),
                    const MultimediaCard(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSkillsSection() {
    const skills = [
      'JavaScript',
      'React',
      'Tailwind CSS',
      'UI/UX',
      'Node.js',
      'Git/GitHub',
      'Figma',
      'Flutter',
    ];

    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      alignment: WrapAlignment.center,
      children: skills.map((skill) => SkillTag(label: skill)).toList(),
    );
  }

  Widget _buildContactSection() {
    const contacts = [
      {'icon': Icons.phone_outlined, 'title': 'Phone', 'subtitle': '+62 8XX-XXXX-XXXX'},
      {'icon': Icons.mail_outlined, 'title': 'Email', 'subtitle': 'samuel.julian@example.com'},
      {'icon': Icons.linked_camera_outlined, 'title': 'LinkedIn', 'subtitle': 'linkedin.com/in/samueljulian'},
      {'icon': Icons.code_outlined, 'title': 'GitHub', 'subtitle': 'github.com/samueljulian'},
    ];

    return Column(
      children: contacts.map((contact) {
        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: ContactItem(
            icon: contact['icon'] as IconData,
            title: contact['title'] as String,
            subtitle: contact['subtitle'] as String,
            onTap: () {},
          ),
        );
      }).toList(),
    );
  }
}