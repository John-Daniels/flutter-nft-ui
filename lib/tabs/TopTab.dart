import 'package:flutter/material.dart';

import '../components/NftCard.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(imagePath: 'assets/images/apiens_2.png');
  }
}
