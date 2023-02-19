import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/cripto_coin/cripto_coin_repository.dart';
import '../widgets/cripto_coin_tile.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin!';
          return const CriptoCoinTile(coinName: coinName);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () {
          CriptoCoinRepository().getCoinList();
        },
      ),
    );
  }
}
