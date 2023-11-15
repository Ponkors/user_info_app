import 'package:domain/domain.dart';
import 'package:main/bloc/main_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:data/data.dart';

class MockUserEntity extends Mock implements UserEntity {}
class MockUserModel extends Mock implements UserModel {}
class MockUserAddressModel extends Mock implements AddressModel {}
class MockUserCompanyModel extends Mock implements CompanyModel {}