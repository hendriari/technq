import 'package:technq/src/features/dashboard/data/dto/fakultas_dto.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';

extension FakultasToDto on FakultasEntities {
  FakultasDto toDto() => FakultasDto(
        id: id,
        image: image,
        name: name,
        description: description,
      );
}

extension FakultasToEntities on FakultasDto {
  FakultasEntities toEntities() => FakultasEntities(
        id: id,
        image: image,
        name: name,
        description: description,
      );
}

extension FakultasEntitiesToMap on FakultasEntities {
  Map<String, dynamic> toMap() {
    return toDto().toJson();
  }
}

extension FakultasEntitiesFromMap on FakultasEntities {
 static FakultasEntities fromMap(Map<String, dynamic> map) {
    return FakultasEntities(
      id: map['id'],
      image: map['image'],
      name: map['name'],
      description: map['description'],
    );
  }
}
