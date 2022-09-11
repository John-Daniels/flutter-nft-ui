import 'package:flutter/material.dart';

import '../components/NftCard.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(imagePath: 'assets/images/apiens_3.png');
  }
}
