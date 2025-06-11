import 'package:technq/src/core/shared/auth/data/dto/user_dto.dart';
import 'package:technq/src/core/shared/auth/domain/entities/user_entities.dart';

extension UserToDto on UserEntities {
  UserDto toDto() => UserDto(
        id: id,
        name: name,
        schoolType: schoolType,
        schoolName: schoolName,
      );
}

extension UserToEntities on UserDto {
  UserEntities toEntities() => UserEntities(
        id: id,
        name: name,
        schoolType: schoolType,
        schoolName: schoolName,
      );
}
