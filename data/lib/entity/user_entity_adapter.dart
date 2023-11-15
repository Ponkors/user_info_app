import 'package:core/core.dart';
import 'package:data/data.dart';

class UserEntityAdapter extends TypeAdapter<UserEntity> {
  @override
  final typeId = 0;

  @override
  UserEntity read(BinaryReader reader) {
    final fieldsCount = reader.readByte();
    Map<String, dynamic> data = {};

    for (int i = 0; i < fieldsCount; i++) {
      try {
        final key = reader.readString();
        final value = reader.read();
        data[key] = value;
      } catch (e) {
        print('Error reading field: $e');
      }
    }

    return UserEntity(
      id: data['id'] ?? '',
      name: data['name'] ?? '',
      username: data['username'] ?? '',
      email: data['email'] ?? 0,
      phone: data['phone'] ?? '',
      website: data['website'] ?? '',
    );
  }

  @override
  void write(BinaryWriter writer, UserEntity obj) {
    writer.writeByte(7);
    writer.writeString('id');
    writer.write(obj.id);
    writer.writeString('name');
    writer.write(obj.name);
    writer.writeString('username');
    writer.write(obj.username);
    writer.writeString('email');
    writer.write(obj.email);
    writer.writeString('phone');
    writer.write(obj.phone);
    writer.writeString('website');
    writer.write(obj.website);
  }
}
