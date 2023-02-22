import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/cripto_coin.dart';

class CriptoCoinTile extends StatelessWidget {
  const CriptoCoinTile({
    super.key,
    required this.coin,
  });

  final CriptoCoin coin;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      trailing: const Icon(
        Icons.arrow_circle_right,
      ),
      leading: Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle:
          Text('${coin.priceInUSD} \$', style: theme.textTheme.labelSmall),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin);
      },
    );
  }
}
