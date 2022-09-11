import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const MyAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          // title

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 40,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),

          //search

          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200,
              ),
              child: const Icon(Icons.search, size: 30),
            ),
          )
        ],
      ),
    );
  }
}
