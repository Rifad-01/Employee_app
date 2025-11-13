// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeListModel _$EmployeeListModelFromJson(Map<String, dynamic> json) =>
    _EmployeeListModel(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => EmployeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmployeeListModelToJson(_EmployeeListModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };
