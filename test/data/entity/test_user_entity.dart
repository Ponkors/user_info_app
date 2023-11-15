import 'package:mocktail/mocktail.dart';
import '../../test_tools/mocks.dart';
import 'package:test/test.dart';
import 'package:data/data.dart';

void main() {
  group('UserEntity', () {
    late UserEntity userEntity;

    setUp(() {
      userEntity = UserEntity(
        id: 1,
        name: 'John Doe',
        username: 'john_doe',
        email: 'john.doe@example.com',
        // address: MockAddressModel(),
        phone: '123-456-7890',
        website: 'example.com',
        // company: MockCompanyModel(),
      );
    });

    test('fromJson should create a UserEntity from a map', () {
      final Map<String, dynamic> jsonMap = {
        'id': 1,
        'name': 'John Doe',
        'username': 'john_doe',
        'email': 'john.doe@example.com',
        // 'address': {'street': '123 Main St', 'city': 'City'},
        'phone': '123-456-7890',
        'website': 'example.com',
        // 'company': {'name': 'Company ABC', 'catchPhrase': 'Catch Phrase'},
      };

      final UserEntity userEntityFromJson = UserEntity.fromJson(jsonMap);

      expect(userEntityFromJson.id, equals(1));
      expect(userEntityFromJson.name, equals('John Doe'));
      expect(userEntityFromJson.username, equals('john_doe'));
      expect(userEntityFromJson.email, equals('john.doe@example.com'));
      // expect(userEntityFromJson.address, isA<AddressModel>());
      expect(userEntityFromJson.phone, equals('123-456-7890'));
      expect(userEntityFromJson.website, equals('example.com'));
      // expect(userEntityFromJson.company, isA<CompanyModel>());
    });
  });
}
