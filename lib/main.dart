import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vidtube/core/theme/app_theme.dart';
import 'package:flutter_vidtube/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_vidtube/features/home/presentation/pages/home_page.dart';
import 'package:flutter_vidtube/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme(),
      home: BlocProvider(create: (_) => sl<HomeBloc>(), child: HomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
