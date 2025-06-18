import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:technq/src/core/failure/failure_mapper.dart';
import 'package:technq/src/features/dashboard/data/dto/fakultas_dto.dart';

sealed class DashboardLocalDatasource {
  Future<List<FakultasDto>?> generateFakultas();
}

class DashboardLocalDatasourceImpl extends DashboardLocalDatasource {
  @override
  Future<List<FakultasDto>?> generateFakultas() async {
    try {
      final response = await rootBundle.loadString('assets/json/fakultas.json');

      final data = await jsonDecode(response);

      final result =
          (data as List).map((e) => FakultasDto.fromJson(e)).toList();

      await Future.delayed(Duration(seconds: 1));

      return result;
    } catch (e) {
      throw FailureMapper.error(e);
    }
  }
}
