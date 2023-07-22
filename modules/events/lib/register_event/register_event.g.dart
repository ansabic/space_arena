// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterEvent _$$_RegisterEventFromJson(Map<String, dynamic> json) => _$_RegisterEvent(
      team: $enumDecode(_$TeamEnumMap, json['team']),
    );

Map<String, dynamic> _$$_RegisterEventToJson(_$_RegisterEvent instance) => <String, dynamic>{
      'team': _$TeamEnumMap[instance.team]!,
    };

const _$TeamEnumMap = {
  Team.player1: 'player1',
  Team.player2: 'player2',
  Team.neutral: 'neutral',
};
