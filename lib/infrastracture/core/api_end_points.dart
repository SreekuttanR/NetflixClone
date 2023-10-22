import 'api_key.dart';
import 'constants/constants.dart';

class ApiEndPoints {
  //downloads
  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apikey";
  //search
  static const search = '$kBaseUrl/search/movie?api_key=$apikey';
  //fast and laugh
  static const fastAndLaugh =
      'https://gist.github.com/jsturgis/3b19447b304616f18657';
  //New and hot
  static const comingSoon = '$kBaseUrl/discover/movie?api_key=$apikey';

  static const evoryOnesWatching = '$kBaseUrl/discover/tv?api_key=$apikey';
}
