import 'package:flutter/material.dart';
import '../components/NftCard.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(imagePath: 'assets/images/apiens_1.png');
  }
}
