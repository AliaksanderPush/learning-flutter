import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/cripto_coin_repository.dart';
import 'package:get_it/get_it.dart';
import 'crypto_coin_list.dart';
import 'repositories/abstract_coins_repository.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
    () => CriptoCoinRepository(dio: Dio()),
  );

  runApp(const CriptoCurrenciesListApp());
}
