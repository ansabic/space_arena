// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SyncData _$$_SyncDataFromJson(Map<String, dynamic> json) => _$_SyncData(
      fighter1: json['fighter1'] == null
          ? null
          : FighterSync.fromJson(json['fighter1'] as Map<String, dynamic>),
      mothership1:
          MotherShipSync.fromJson(json['mothership1'] as Map<String, dynamic>),
      fighter2: json['fighter2'] == null
          ? null
          : FighterSync.fromJson(json['fighter2'] as Map<String, dynamic>),
      mothership2:
          MotherShipSync.fromJson(json['mothership2'] as Map<String, dynamic>),
      mines: (json['mines'] as List<dynamic>)
          .map((e) => MineSync.fromJson(e as Map<String, dynamic>))
          .toList(),
      bullets: (json['bullets'] as List<dynamic>)
          .map((e) => BulletSync.fromJson(e as Map<String, dynamic>))
          .toList(),
      resources1: Price.fromJson(json['resources1']),
      resources2: Price.fromJson(json['resources2']),
      timerSeconds: json['timerSeconds'] as int,
    );

Map<String, dynamic> _$$_SyncDataToJson(_$_SyncData instance) =>
    <String, dynamic>{
      'fighter1': instance.fighter1,
      'mothership1': instance.mothership1,
      'fighter2': instance.fighter2,
      'mothership2': instance.mothership2,
      'mines': instance.mines,
      'bullets': instance.bullets,
      'resources1': instance.resources1,
      'resources2': instance.resources2,
      'timerSeconds': instance.timerSeconds,
    };

_$_FighterSync _$$_FighterSyncFromJson(Map<String, dynamic> json) =>
    _$_FighterSync(
      team: $enumDecode(_$TeamEnumMap, json['team']),
      angle: (json['angle'] as num).toDouble(),
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      characterId: json['characterId'] as int,
      destinationX: (json['destinationX'] as num?)?.toDouble(),
      destinationY: (json['destinationY'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FighterSyncToJson(_$_FighterSync instance) =>
    <String, dynamic>{
      'team': _$TeamEnumMap[instance.team]!,
      'angle': instance.angle,
      'x': instance.x,
      'y': instance.y,
      'characterId': instance.characterId,
      'destinationX': instance.destinationX,
      'destinationY': instance.destinationY,
    };

const _$TeamEnumMap = {
  Team.player1: 'player1',
  Team.player2: 'player2',
  Team.neutral: 'neutral',
};

_$_PartSync _$$_PartSyncFromJson(Map<String, dynamic> json) => _$_PartSync(
      team: $enumDecode(_$TeamEnumMap, json['team']),
      angle: (json['angle'] as num).toDouble(),
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      characterId: json['characterId'] as int,
      abstractX: json['abstractX'] as int,
      abstractY: json['abstractY'] as int,
    );

Map<String, dynamic> _$$_PartSyncToJson(_$_PartSync instance) =>
    <String, dynamic>{
      'team': _$TeamEnumMap[instance.team]!,
      'angle': instance.angle,
      'x': instance.x,
      'y': instance.y,
      'characterId': instance.characterId,
      'abstractX': instance.abstractX,
      'abstractY': instance.abstractY,
    };

_$_MotherShipSync _$$_MotherShipSyncFromJson(Map<String, dynamic> json) =>
    _$_MotherShipSync(
      team: $enumDecode(_$TeamEnumMap, json['team']),
      angle: (json['angle'] as num).toDouble(),
      x: (json['x'] as num).toDouble(),
      characterId: json['characterId'] as int,
      y: (json['y'] as num).toDouble(),
      destinationX: (json['destinationX'] as num?)?.toDouble(),
      destinationY: (json['destinationY'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MotherShipSyncToJson(_$_MotherShipSync instance) =>
    <String, dynamic>{
      'team': _$TeamEnumMap[instance.team]!,
      'angle': instance.angle,
      'x': instance.x,
      'characterId': instance.characterId,
      'y': instance.y,
      'destinationX': instance.destinationX,
      'destinationY': instance.destinationY,
    };

_$_MineSync _$$_MineSyncFromJson(Map<String, dynamic> json) => _$_MineSync(
      type: $enumDecode(_$MineTypeEnumMap, json['type']),
      x: (json['x'] as num).toDouble(),
      characterId: json['characterId'] as int,
      y: (json['y'] as num).toDouble(),
      usesLeft: json['usesLeft'] as int,
    );

Map<String, dynamic> _$$_MineSyncToJson(_$_MineSync instance) =>
    <String, dynamic>{
      'type': _$MineTypeEnumMap[instance.type]!,
      'x': instance.x,
      'characterId': instance.characterId,
      'y': instance.y,
      'usesLeft': instance.usesLeft,
    };

const _$MineTypeEnumMap = {
  MineType.gold: 'gold',
  MineType.plasma: 'plasma',
  MineType.crystal: 'crystal',
};

_$_BulletSync _$$_BulletSyncFromJson(Map<String, dynamic> json) =>
    _$_BulletSync(
      directionX: (json['directionX'] as num).toDouble(),
      directionY: (json['directionY'] as num).toDouble(),
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      team: $enumDecode(_$TeamEnumMap, json['team']),
    );

Map<String, dynamic> _$$_BulletSyncToJson(_$_BulletSync instance) =>
    <String, dynamic>{
      'directionX': instance.directionX,
      'directionY': instance.directionY,
      'x': instance.x,
      'y': instance.y,
      'team': _$TeamEnumMap[instance.team]!,
    };
