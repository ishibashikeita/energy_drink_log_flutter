import 'package:energy_drink_log/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

enum EnergyDrinkEnum {
  monster,
  redBull,
  zone,
}

class EnergyDrinkType {
  EnergyDrinkEnum? energyDrinkEnum;
  EnergyDrinkType(String type) {
    switch (type) {
      case "monster":
        energyDrinkEnum = EnergyDrinkEnum.monster;
        break;
      case "redBull":
        energyDrinkEnum = EnergyDrinkEnum.redBull;
        break;
      case "zone":
        energyDrinkEnum = EnergyDrinkEnum.zone;
        break;
    }
  }

  String titleEn() {
    switch (energyDrinkEnum) {
      case EnergyDrinkEnum.monster:
        return "Monster Energy";
      case EnergyDrinkEnum.redBull:
        return "Red Bull";
      case EnergyDrinkEnum.zone:
        return "ZONE";
      default:
        return "";
    }
  }

  String titleJp() {
    switch (energyDrinkEnum) {
      case EnergyDrinkEnum.monster:
        return "モンスターエナジー";
      case EnergyDrinkEnum.redBull:
        return "レッドブル";
      case EnergyDrinkEnum.zone:
        return "ZONE";
      default:
        return "";
    }
  }

  Color color() {
    switch (energyDrinkEnum) {
      case EnergyDrinkEnum.monster:
        return ColorName.monsterColor;
      case EnergyDrinkEnum.redBull:
        return ColorName.redBullColor;
      case EnergyDrinkEnum.zone:
        return ColorName.zoneColor;
      default:
        return const Color(0xff3d3d3d);
    }
  }

  Image image() {
    switch (energyDrinkEnum) {
      case EnergyDrinkEnum.monster:
        return Assets.images.monsterTitle.image();
      case EnergyDrinkEnum.redBull:
        return Assets.images.redBullTitle.image();
      case EnergyDrinkEnum.zone:
        return Assets.images.zoneTitle.image();
      default:
        return Assets.images.monsterTitle.image();
    }
  }

  Image iconImage() {
    switch (energyDrinkEnum) {
      case EnergyDrinkEnum.monster:
        return Assets.images.monsterIcon.image();
      case EnergyDrinkEnum.redBull:
        return Assets.images.redBullIcon.image();
      case EnergyDrinkEnum.zone:
        return Assets.images.zoneIcon.image();
      default:
        return Assets.images.monsterIcon.image();
    }
  }
}
