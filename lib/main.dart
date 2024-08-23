import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/simple_bloc_observer.dart';
import 'package:bookly/features/home/data/repositories/home_repository_impl.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_featured_books_use_case.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/methods/setup_service_locator.dart';

void main() async {
  Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                FetchFeaturedBooksUseCase(getIt.get<HomeRepositoryImpl>()))),
        BlocProvider(
            create: (context) => NewestBooksCubit(
                FetchNewestBooksUseCase(getIt.get<HomeRepositoryImpl>()))),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
