// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoot_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShootEvent _$$_ShootEventFromJson(Map<String, dynamic> json) => _$_ShootEvent(
      damage: json['damage'] as int,
      team: $enumDecode(_$TeamEnumMap, json['team']),
      startX: (json['startX'] as num).toDouble(),
      startY: (json['startY'] as num).toDouble(),
      dirX: (json['dirX'] as num).toDouble(),
      dirY: (json['dirY'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ShootEventToJson(_$_ShootEvent instance) => <String, dynamic>{
      'damage': instance.damage,
      'team': _$TeamEnumMap[instance.team]!,
      'startX': instance.startX,
      'startY': instance.startY,
      'dirX': instance.dirX,
      'dirY': instance.dirY,
    };

const _$TeamEnumMap = {
  Team.player1: 'player1',
  Team.player2: 'player2',
  Team.neutral: 'neutral',
};
