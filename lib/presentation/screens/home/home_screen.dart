import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String name = "home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      },
      itemCount: appMenuItems.length,
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: theme.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTittle),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: theme.primary,
      ),
      onTap: () {
        //context.pushNamed(CardScreen.name);
        context.push(menuItem.link);
      },
    );
  }
}
