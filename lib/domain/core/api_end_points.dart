import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const DOWNLOAD_API_END_POINT =
      '$BASE_URL/trending/all/day?api_key=$API_KEY';
  static const SEARCH_API_END_POINT = '$BASE_URL/search/movie?api_key=$API_KEY';
  static const HOTANDNEWMOVIE_API_END_POINT =
      '$BASE_URL/discover/movie?api_key=$API_KEY';
  static const HOTANDNEWTV_API_END_POINT =
      '$BASE_URL/discover/tv?api_key=$API_KEY';
}
