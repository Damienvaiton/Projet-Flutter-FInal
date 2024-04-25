import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_flutter_but/data/network/models/place.model.dart';
import 'package:template_flutter_but/foundation/client/dio.client.dart';

part 'place.endpoint.g.dart';

///
/// [PlacesEndpoint]
///
@RestApi()
@singleton
abstract class PlacesEndpoint {
  ///
  @factoryMethod
  factory PlacesEndpoint(DioClient dio) {
    return _PlacesEndpoint(dio);
  }

  ///
  @GET('/liste-monuments-historiques-de-roubaix@ville-de-roubaix/records')
  Future<PlaceModel> getPlaces({@Query('limit') int limit = 20});

  ///
  @GET('/liste-monuments-historiques-de-roubaix@ville-de-roubaix/records')
  Future<PlaceModel> getPaginatePlaces({
    @Query('limit') int limit = 15,
    @Query('offset') required int offset,
  });

}
