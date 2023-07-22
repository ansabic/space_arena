// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disconnect_player_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DisconnectPlayerEvent _$$_DisconnectPlayerEventFromJson(Map<String, dynamic> json) => _$_DisconnectPlayerEvent(
      team: $enumDecode(_$TeamEnumMap, json['team']),
    );

Map<String, dynamic> _$$_DisconnectPlayerEventToJson(_$_DisconnectPlayerEvent instance) => <String, dynamic>{
      'team': _$TeamEnumMap[instance.team]!,
    };

const _$TeamEnumMap = {
  Team.player1: 'player1',
  Team.player2: 'player2',
  Team.neutral: 'neutral',
};
