import 'package:hive_flutter/hive_flutter.dart';
import 'package:template_flutter_but/domain/entities/favorite.monument.entity.dart';
import 'package:template_flutter_but/domain/entities/geo_point_2d.entity.dart';
import 'package:template_flutter_but/domain/entities/monuments.entity.dart';
import 'package:template_flutter_but/domain/entities/photo.entity.dart';


part 'result.entity.g.dart';

@HiveType(typeId: 1)
class ResultEntity {
  @HiveField(0)
  final int? monumHisComId;
  @HiveField(1)
  final String? appellationCourante;
  @HiveField(2)
  final PhotoEntity? photo;
  @HiveField(3)
  final String? copyrightEtPropriete;
  @HiveField(4)
  final String? epoque;
  @HiveField(5)
  final List<String>? siecle;
  @HiveField(6)
  final String? precisionSurLaProtection;
  @HiveField(7)
  final DateTime? dateDeProtection;
  @HiveField(8)
  final String? classement;
  @HiveField(9)
  final String? statut;
  @HiveField(10)
  final String? description;
  @HiveField(11)
  final String? historique;
  @HiveField(12)
  final String? auteur;
  @HiveField(13)
  final String? region;
  @HiveField(14)
  final String? departement;
  @HiveField(15)
  final String? commune;
  @HiveField(16)
  final String? niveauDeProtection;
  @HiveField(17)
  final int? codeDepartement;
  @HiveField(18)
  final int? insee;
  @HiveField(19)
  final String? adresseBanSig;
  @HiveField(20)
  final GeoPoint2DEntity? geoPoint2D;
  @HiveField(21)
  final String? lat;
  @HiveField(22)
  final String? long;

  const ResultEntity(
      {required this.monumHisComId,
      required this.appellationCourante,
      required this.photo,
      required this.copyrightEtPropriete,
      required this.epoque,
      required this.siecle,
      required this.precisionSurLaProtection,
      required this.dateDeProtection,
      required this.classement,
      required this.statut,
      required this.description,
      required this.historique,
      required this.auteur,
      required this.region,
      required this.departement,
      required this.commune,
      required this.niveauDeProtection,
      required this.codeDepartement,
      required this.insee,
      required this.adresseBanSig,
      required this.geoPoint2D,
      required this.lat,
      required this.long
  });


  @override
  String toString() {
    return 'ResultEntity{monumHisComId: $monumHisComId, appellationCourante: $appellationCourante, photo: $photo, copyrightEtPropriete: $copyrightEtPropriete, epoque: $epoque, siecle: $siecle, precisionSurLaProtection: $precisionSurLaProtection, dateDeProtection: $dateDeProtection, classement: $classement, statut: $statut, description: $description, historique: $historique, auteur: $auteur, region: $region, departement: $departement, commune: $commune, niveauDeProtection: $niveauDeProtection, codeDepartement: $codeDepartement, insee: $insee, adresseBanSig: $adresseBanSig, geoPoint2D: $geoPoint2D, lat: $lat, long: $long}';
  }

  static ResultEntity fromMonuments (MonumentsEntity monument) {
    return ResultEntity(
      monumHisComId: monument.monuments.monumHisComId,
      appellationCourante: monument.monuments.appellationCourante,
      copyrightEtPropriete: monument.monuments.copyrightEtPropriete,
      photo: monument.monuments.photo,
      adresseBanSig: monument.monuments.adresseBanSig,
      auteur: monument.monuments.auteur,
      classement: monument.monuments.classement,
      codeDepartement: monument.monuments.codeDepartement,
      commune: monument.monuments.commune,
      dateDeProtection: monument.monuments.dateDeProtection,
      departement: monument.monuments.departement,
      description: monument.monuments.description,
      epoque: monument.monuments.epoque,
      geoPoint2D: monument.monuments.geoPoint2D,
      historique: monument.monuments.historique,
      insee: monument.monuments.insee,
      lat: monument.monuments.lat,
      long: monument.monuments.long,
      niveauDeProtection: monument.monuments.niveauDeProtection,
      precisionSurLaProtection: monument.monuments.precisionSurLaProtection,
      region: monument.monuments.region,
      siecle: monument.monuments.siecle,
      statut: monument.monuments.statut,
    );
  }
  
  static ResultEntity fromFavoriteMonuments(FavoriteMonuments monuments){
    return ResultEntity(
      monumHisComId: monuments.result.monumHisComId,
      appellationCourante: monuments.result.appellationCourante,
      photo: monuments.result.photo,
      copyrightEtPropriete: monuments.result.copyrightEtPropriete,
      adresseBanSig: monuments.result.adresseBanSig,
      auteur: monuments.result.auteur,
      classement: monuments.result.classement,
      codeDepartement: monuments.result.codeDepartement,
      commune: monuments.result.commune,
      dateDeProtection: monuments.result.dateDeProtection,
      departement: monuments.result.departement,
      description: monuments.result.description,
      epoque: monuments.result.epoque,
      geoPoint2D: monuments.result.geoPoint2D,
      historique: monuments.result.historique,
      insee: monuments.result.insee,
      lat: monuments.result.lat,
      long: monuments.result.long,
      niveauDeProtection: monuments.result.niveauDeProtection,
      precisionSurLaProtection: monuments.result.precisionSurLaProtection,
      region: monuments.result.region,
      siecle: monuments.result.siecle,
      statut: monuments.result.statut,
    );
  }

}