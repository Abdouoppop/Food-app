import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget itemTappedTile(
      {required BuildContext context,
      required String title,
      String? subtitle,
      required IconData icon}) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
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
        size: isLandscape ? size.height * 0.09 : size.height * 0.03,
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
        size: isLandscape ? size.height * 0.09 : size.height * 0.03,
      ),
    );
  }

  Widget personPhoto(double width, double height) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            'assets/images/AI_abdou.png',
          ),
          fit: BoxFit.contain,
        ),
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
    final Size size = MediaQuery.of(context).size;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final Widget nameText = Text(
      'Abdou Ashraf',
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          if (!isLandscape) ...[
            personPhoto(size.width * 0.5, size.height * 0.25),
            nameText,
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                orderVoucherItem(context: context, name: 'Orders', number: 50),
                orderVoucherItem(
                    context: context, name: 'Vouchers', number: 10),
              ],
            ),
            const SizedBox(height: 24.0),
          ],
          if (isLandscape) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    personPhoto(size.width * 0.25, size.height * 0.5),
                    const SizedBox(height: 8.0),
                    nameText,
                  ],
                ),
                Column(
                  children: [
                    orderVoucherItem(
                        context: context, name: 'Orders', number: 50),
                    const SizedBox(height: 16.0),
                    orderVoucherItem(
                        context: context, name: 'Vouchers', number: 10),
                  ],
                ),
              ],
            ),
          ],
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
