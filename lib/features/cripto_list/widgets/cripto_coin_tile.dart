import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CriptoCoinTile extends StatelessWidget {
  const CriptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      trailing: const Icon(
        Icons.arrow_circle_right,
      ),
      leading: SvgPicture.asset('assets/svg/bitcoin_logo.svg',
          width: 25, height: 25),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text('2000', style: theme.textTheme.labelSmall),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
