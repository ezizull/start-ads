// ignore_for_file: unused_field

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:startercode_project/data/blocs/script/use_cubit/fetch_scripts/fetch_scripts_cubit.dart';
import 'package:startercode_project/data/blocs/script/use_cubit/fetch_scripts/fetch_scripts_state.dart';
import 'package:startercode_project/ui/screens/dashboard/component/dashboard_banner.dart';
import 'package:startercode_project/ui/screens/dashboard/component/dashboard_icons_menu.dart';
import 'package:startercode_project/ui/screens/dashboard/component/dashboard_script_populer.dart';
import 'package:startercode_project/ui/widgets/widgets.dart';
import 'package:startercode_project/utils/colors.dart' as AppColor;
import 'package:startercode_project/utils/typography.dart' as AppText;

class DashboardMenuScreen extends StatefulWidget {
  const DashboardMenuScreen({Key? key}) : super(key: key);

  @override
  State<DashboardMenuScreen> createState() => _DashboardMenuScreenState();
}

class _DashboardMenuScreenState extends State<DashboardMenuScreen> {
  final FetchScriptsCubit _fetchScriptsCubit = FetchScriptsCubit()
    ..fetchScripts();

  @override
  void dispose() {
    _fetchScriptsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _fetchScriptsCubit),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener(
              bloc: _fetchScriptsCubit,
              listener: (context, state) {
                if (state is FetchScriptsSuccess) {
                  debugPrint("SUKSES FETCH");
                }
                if (state is FetchScriptsFailure) {
                  debugPrint("GAGAL FETCH :" + state.message);
                }
              })
        ],
        child: Scaffold(
          backgroundColor: AppColor.blueBg,
          body: BlocBuilder(
              bloc: _fetchScriptsCubit,
              builder: (context, state) => state is FetchScriptsLoading
                  ? const Center(child: CircularProgressIndicator())
                  : state is FetchScriptsFailure
                      ? const Center(child: Text("terjadi kesalahan"))
                      : state is FetchScriptsSuccess
                          ? Stack(
                              children: [
                                /* component of dashboard */
                                const DashboardBanner(),
                                /* parts in white background component */
                                Positioned(
                                  top: 250,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 642,
                                    decoration: const BoxDecoration(
                                        color: AppColor.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        )),
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Column(
                                          children: [
                                            /* component of dashboard */
                                            const DashboardIconsMenu(),
                                            const AppDivider(),
                                            DashboardScriptPopular(),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 20,
                                                    vertical: 20,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Script Populer',
                                                        style:
                                                            AppText.LatoTitle,
                                                      ),
                                                      GestureDetector(
                                                        onTap: null,
                                                        child: Text(
                                                          'See more',
                                                          style: AppText
                                                              .InterSeeMore,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 170,
                                                )
                                              ],
                                            ),
                                            /* check the cubit data */
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 30),
                                              child: Center(
                                                child: Text(state.data),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          : const SizedBox.shrink()),
        ),
      ),
    );
  }
}
