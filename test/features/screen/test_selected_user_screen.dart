import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:domain/domain.dart';
import 'package:main/main.dart';
import '../../test_tools/mocks.dart';


void main() {
  late UserModel mockUser;

  setUp(() {
    mockUser = MockUserModel();
    when(() => mockUser.name).thenReturn('John Doe');
    when(() => mockUser.email).thenReturn('john.doe@example.com');
    when(() => mockUser.phone).thenReturn('123-456-7890');
    when(() => mockUser.address).thenReturn(AddressModel(city: 'City'));
    when(() => mockUser.company).thenReturn(CompanyModel(name: 'Company ABC'));
  });

  testWidgets('Renders SelectedUserScreen widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SelectedUserScreen(user: mockUser),
      ),
    );

    // Verify that the widget renders correctly
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Email: john.doe@example.com'), findsOneWidget);
    expect(find.text('Phone: 123-456-7890'), findsOneWidget);
    expect(find.text('City: City'), findsOneWidget);
    expect(find.text('Company: Company ABC'), findsOneWidget);
  });
}
