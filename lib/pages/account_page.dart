import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget itemTappedTile(
      {required BuildContext context,
      required String title,
      String? subtitle,
      required IconData icon}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
        size: 30,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              // style: const TextStyle(
              //   fontSize: 18,
              // ),
            )
          : null,
      trailing: Icon(
        Icons.chevron_right,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget orderVoucherItem(
      {required BuildContext context,
      required String name,
      required int number}) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/AI_abdou.png',
                ),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Abdou Ashraf',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(context: context, name: 'Orders', number: 50),
              orderVoucherItem(context: context, name: 'Vouchers', number: 10),
            ],
          ),
          const Divider(
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: itemTappedTile(
              context: context,
              title: 'My Orders',
              icon: Icons.receipt_long,
            ),
          ),
          const Divider(
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: itemTappedTile(
              context: context,
              title: 'My Vouchers',
              icon: Icons.card_giftcard,
            ),
          ),
        ],
      ),
    );
  }
}
