// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i11;
import '../../../application/fast_and_laugh/fast_and_laugh_bloc.dart' as _i12;
import '../../../application/home_page/home_page_bloc.dart' as _i13;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i14;
import '../../../application/search/search_bloc.dart' as _i15;
import '../../../infrastracture/downloads/downloads_repositary.dart' as _i6;
import '../../../infrastracture/fast_and_laugh/fast_and_laugh_repository.dart'
    as _i4;
import '../../../infrastracture/new_and_hot/new_and_hot_repository.dart' as _i8;
import '../../../infrastracture/search/search_repository.dart' as _i10;
import '../../downloads/i_downloads_fazard.dart' as _i5;
import '../../fast_ant_laugh/fast_and_laugh_service.dart' as _i3;
import '../../new_and_hot/new_and_hot_service.dart' as _i7;
import '../../search/search_service.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.FastAndLaughService>(() => _i4.DownloadsRepodsitory());
    gh.lazySingleton<_i5.IDownloadsRepo>(() => _i6.DowloadsRepository());
    gh.lazySingleton<_i7.NewAndHotService>(() => _i8.ComingSoonRepository());
    gh.lazySingleton<_i9.SearchService>(() => _i10.SearchRepository());
    gh.factory<_i11.DownloadsBloc>(
        () => _i11.DownloadsBloc(gh<_i5.IDownloadsRepo>()));
    gh.factory<_i12.FastAndLaughBloc>(
        () => _i12.FastAndLaughBloc(gh<_i3.FastAndLaughService>()));
    gh.factory<_i13.HomePageBloc>(
        () => _i13.HomePageBloc(gh<_i7.NewAndHotService>()));
    gh.factory<_i14.NewAndHotBloc>(
        () => _i14.NewAndHotBloc(gh<_i7.NewAndHotService>()));
    gh.factory<_i15.SearchBloc>(() => _i15.SearchBloc(
          gh<_i5.IDownloadsRepo>(),
          gh<_i9.SearchService>(),
        ));
    return this;
  }
}
