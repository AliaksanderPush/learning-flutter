import 'package:dio/dio.dart';
import 'abstract_coins_repository.dart';
import 'models/cripto_coin.dart';

class CriptoCoinRepository implements AbstractCoinsRepository {
  CriptoCoinRepository({required this.dio});
  final Dio dio;

  @override
  Future<List<CriptoCoin>> getCoinList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,AID,CAG,DOV&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;

    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CriptoCoin(
          name: e.key,
          priceInUSD: price,
          imageUrl: 'https://www.cryptocompare.com/$imageUrl');
    }).toList();
    return cryptoCoinsList;
  }
}
