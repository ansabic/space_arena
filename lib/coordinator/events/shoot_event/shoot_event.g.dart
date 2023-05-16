// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoot_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShootEvent _$$_ShootEventFromJson(Map<String, dynamic> json) => _$_ShootEvent(
      playerId: json['playerId'] as int,
      startX: (json['startX'] as num).toDouble(),
      startY: (json['startY'] as num).toDouble(),
      dirX: (json['dirX'] as num).toDouble(),
      dirY: (json['dirY'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ShootEventToJson(_$_ShootEvent instance) => <String, dynamic>{
      'playerId': instance.playerId,
      'startX': instance.startX,
      'startY': instance.startY,
      'dirX': instance.dirX,
      'dirY': instance.dirY,
    };
