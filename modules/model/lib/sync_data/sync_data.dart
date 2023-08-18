import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/mine_type.dart';
import 'package:model/price.dart';
import 'package:model/team.dart';

part 'sync_data.freezed.dart';

part 'sync_data.g.dart';

@freezed
class SyncData with _$SyncData {
  const SyncData._();

  factory SyncData({
    required FighterSync? fighter1,
    required MotherShipSync mothership1,
    required FighterSync? fighter2,
    required MotherShipSync mothership2,
    required List<MineSync> mines,
    required List<BulletSync> bullets,
    required Price resources1,
    required Price resources2,
    required int timerSeconds,
  }) = _SyncData;

  factory SyncData.fromJson(Map<String, Object?> json) => _$SyncDataFromJson(json);
}

@freezed
class FighterSync with _$FighterSync {
  const FighterSync._();

  factory FighterSync(
      {required Team team,
      required double angle,
      required double x,
      required double y,
      required int characterId,
      double? destinationX,
      double? destinationY}) = _FighterSync;

  factory FighterSync.fromJson(Map<String, Object?> json) => _$FighterSyncFromJson(json);
}

@freezed
class PartSync with _$PartSync {
  const PartSync._();

  factory PartSync(
      {required Team team,
      required double angle,
      required double x,
      required double y,
      required int characterId,
      required int abstractX,
      required int abstractY}) = _PartSync;

  factory PartSync.fromJson(Map<String, Object?> json) => _$PartSyncFromJson(json);
}

@freezed
class MotherShipSync with _$MotherShipSync {
  const MotherShipSync._();

  factory MotherShipSync(
      {required Team team,
      required double angle,
      required double x,
      required int characterId,
      required double y,
      double? destinationX,
      double? destinationY}) = _MotherShipSync;

  factory MotherShipSync.fromJson(Map<String, Object?> json) => _$MotherShipSyncFromJson(json);
}

@freezed
class MineSync with _$MineSync {
  const MineSync._();

  factory MineSync(
      {required MineType type,
      required double x,
      required int characterId,
      required double y,
      required int usesLeft}) = _MineSync;

  factory MineSync.fromJson(Map<String, Object?> json) => _$MineSyncFromJson(json);
}

@freezed
class BulletSync with _$BulletSync {
  const BulletSync._();

  factory BulletSync(
      {required double directionX,
        required double directionY,
      required double x,
      required double y,
      required Team team}) = _BulletSync;

  factory BulletSync.fromJson(Map<String, Object?> json) => _$BulletSyncFromJson(json);
}
