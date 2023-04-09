import 'package:coding_assessment/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfileLoaded extends StatelessWidget {
  final User user;

  const ProfileLoaded({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          foregroundImage: NetworkImage(user.imagePath),
          minRadius: 100,
        ),
        const SizedBox(height: 10),
        _DataDisplayer(
          label: 'Name',
          content: '${user.firstName} ${user.lastName}',
        ),
        _DataDisplayer(
          label: 'Gender',
          content: user.gender,
        ),
        _DataDisplayer(
          label: 'Email',
          content: user.email,
        ),
      ],
    );
  }
}

class _DataDisplayer extends StatelessWidget {
  final String label;
  final String content;

  const _DataDisplayer({
    super.key,
    required this.label,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            ' : ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            content,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
