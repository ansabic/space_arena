// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_sync_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartSyncEvent _$$_StartSyncEventFromJson(Map<String, dynamic> json) =>
    _$_StartSyncEvent(
      disconnected: $enumDecode(_$TeamEnumMap, json['disconnected']),
    );

Map<String, dynamic> _$$_StartSyncEventToJson(_$_StartSyncEvent instance) =>
    <String, dynamic>{
      'disconnected': _$TeamEnumMap[instance.disconnected]!,
    };

const _$TeamEnumMap = {
  Team.player1: 'player1',
  Team.player2: 'player2',
  Team.neutral: 'neutral',
};
