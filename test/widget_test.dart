import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hola_mundo_app/main.dart'; // Asegúrate de que el nombre del paquete sea correcto

void main() {
  testWidgets('Contador se incrementa correctamente', (WidgetTester tester) async {
    // Cargar la aplicación
    await tester.pumpWidget(const MyApp());

    // Verificar que el contador inicial es 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tocar el ícono de '+' y actualizar la pantalla
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verificar que el contador ha cambiado a 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
