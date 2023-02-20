import 'models/cripto_coin.dart';

abstract class AbstractCoinsRepository {
  Future<List<CriptoCoin>> getCoinList();
}
