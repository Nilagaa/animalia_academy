import "package:flutter/material.dart";


class RoutingTest extends StatelessWidget {
  const RoutingTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget> [
          TestRouteButton(routeName: "/about_us"),
          TestRouteButton(routeName: "/animal_info"),
          TestRouteButton(routeName: "/animal_selection"),
          TestRouteButton(routeName: "/explore"),
          TestRouteButton(routeName: "/favorites"),
          TestRouteButton(routeName: "/help"),
          TestRouteButton(routeName: "/login"),
          TestRouteButton(routeName: "/parental_control"),
          TestRouteButton(routeName: "/quiz"),
          TestRouteButton(routeName: "/quiz_results"),
          TestRouteButton(routeName: "/register"),
          TestRouteButton(routeName: "/settings"),
          TestRouteButton(routeName: "/splash"),
          TestRouteButton(routeName: "/support"),
        ],
      ),
    );
  }
}

class TestRouteButton extends StatelessWidget {
  final String routeName;

  const TestRouteButton({super.key, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, routeName),
      child: Text(routeName,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}

