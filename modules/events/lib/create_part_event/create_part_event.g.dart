// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_part_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePartEvent _$$_CreatePartEventFromJson(Map<String, dynamic> json) =>
    _$_CreatePartEvent(
      team: $enumDecode(_$TeamEnumMap, json['team']),
      from: json['from'] as int,
      side: $enumDecode(_$PartSideEnumMap, json['side']),
      type: $enumDecode(_$PartTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_CreatePartEventToJson(_$_CreatePartEvent instance) =>
    <String, dynamic>{
      'team': _$TeamEnumMap[instance.team]!,
      'from': instance.from,
      'side': _$PartSideEnumMap[instance.side]!,
      'type': _$PartTypeEnumMap[instance.type]!,
    };

const _$TeamEnumMap = {
  Team.player1: 'player1',
  Team.player2: 'player2',
  Team.neutral: 'neutral',
};

const _$PartSideEnumMap = {
  PartSide.left: 'left',
  PartSide.top: 'top',
  PartSide.right: 'right',
  PartSide.bottom: 'bottom',
};

const _$PartTypeEnumMap = {
  PartType.shield: 'shield',
  PartType.weapon: 'weapon',
  PartType.thruster: 'thruster',
};
