import 'package:dio/dio.dart';
import '../models/cripto_coin.dart';

class CriptoCoinRepository {
  Future<List<CriptoCoin>> getCoinList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,AID,CAG,DOV&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    //final dataRaw = data['RAW'] as Map<String, dynamic>;

    final cryptoCoinsList = data.entries
        .map((e) => CriptoCoin(
              name: e.key,
              priceInUSD: (e.value as Map<String, dynamic>)['USD'],
            ))
        .toList();
    return cryptoCoinsList;
  }
}
