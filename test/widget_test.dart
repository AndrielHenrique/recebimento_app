import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pdmde/home/home_page.dart';
import 'package:pdmde/login/login_page.dart';

void main() {
  testWidgets('renderiza a tela de login', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    expect(find.text('Recebimento Genérico'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });

  testWidgets('abre a home quando recebe argumento de login', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(
              '/home',
              arguments: {'username': 'admin', 'isAdmin': true},
            ),
            child: const Text('abrir home'),
          ),
        ),
        routes: {'/home': (_) => const HomePage()},
      ),
    );

    await tester.tap(find.text('abrir home'));
    await tester.pumpAndSettle();

    expect(find.text('Recebimento Genérico'), findsOneWidget);
    expect(find.text('Ações rápidas'), findsOneWidget);
  });
}
