// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_mine_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RandomMineEvent _$$_RandomMineEventFromJson(Map<String, dynamic> json) =>
    _$_RandomMineEvent(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      type: $enumDecode(_$MineTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_RandomMineEventToJson(_$_RandomMineEvent instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'type': _$MineTypeEnumMap[instance.type]!,
    };

const _$MineTypeEnumMap = {
  MineType.gold: 'gold',
  MineType.plasma: 'plasma',
  MineType.crystal: 'crystal',
};
