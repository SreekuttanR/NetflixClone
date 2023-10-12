import 'api_key.dart';
import 'constants/constants.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apikey";
  static const search = '$kBaseUrl/search/movie?api_key=$apikey';
  static const sample =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=324e953c8556f962f6cb87bcf60b1bde';
  static const fastAndLaugh =
      'https://gist.github.com/jsturgis/3b19447b304616f18657';
  //New and hot
  static const comingSoon = '$kBaseUrl/discover/movie?api_key=$apikey';

  static const evoryOnesWatching = '$kBaseUrl/discover/tv?api_key=$apikey';
  //static const smlkk = 'https://api.themoviedb.org/3/discover/tv?api_key=324e953c8556f962f6cb87bcf60b1bde';
}
