import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/cripto_coin/cripto_coin_repository.dart';
import '../../../repositories/models/cripto_coin.dart';
import '../widgets/cripto_coin_tile.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CriptoCoin>? _criptoCoinList;

  @override
  void initState() {
    _loadCoinList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto'),
        centerTitle: true,
      ),
      body: (_criptoCoinList == null)
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: _criptoCoinList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = _criptoCoinList![i];
                return CriptoCoinTile(coin: coin);
              },
            ),
    );
  }

  Future<void> _loadCoinList() async {
    _criptoCoinList = await CriptoCoinRepository().getCoinList();
    setState(() {});
  }
}
