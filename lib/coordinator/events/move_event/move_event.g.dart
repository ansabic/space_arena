// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoveEvent _$$_MoveEventFromJson(Map<String, dynamic> json) => _$_MoveEvent(
      playerId: json['playerId'] as int,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MoveEventToJson(_$_MoveEvent instance) => <String, dynamic>{
      'playerId': instance.playerId,
      'x': instance.x,
      'y': instance.y,
    };
