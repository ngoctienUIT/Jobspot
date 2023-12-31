import 'package:jobspot/src/core/enum/user_role.dart';
import 'package:jobspot/src/core/enum/verify_status.dart';
import 'package:jobspot/src/core/service/firebase_collection.dart';
import 'package:jobspot/src/presentations/connection/domain/entities/user_entity.dart';

class UserModel {
  String id;
  String name;
  String avatar;
  String address;
  VerifyStatus? verify;
  UserRole role;

  UserModel({
    required this.id,
    required this.name,
    required this.avatar,
    required this.address,
    required this.role,
    this.verify,
  });

  factory UserModel.fromDocumentSnapshot(MapSnapshot snapshot) {
    final data = snapshot.data()!;
    return UserModel(
      id: snapshot.id,
      name: data["name"],
      avatar: data["avatar"],
      address: data["address"],
      verify: getVerifyStatus(data["verify"]),
      role: getUserRole(data["role"]),
    );
  }

  UserEntity toUserEntity() => UserEntity(
        id: id,
        name: name,
        avatar: avatar,
        address: address,
        role: role,
        verify: verify,
      );
}
