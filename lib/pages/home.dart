import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(),
          // main - text
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Text(
                      'st_flutter',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_is',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_an',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_open-source',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_ui',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'st_software',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_development',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_kit',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_created',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_by',
                      overflow: TextOverflow.clip,
                    ).tr(),
                    const SizedBox(width: 5),
                    const Text(
                      'st_google',
                      overflow: TextOverflow.clip,
                    ).tr(),
                  ],
                ),
              ],
            ),
          ),
          // buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('en', 'US'));
                    },
                    child: Container(
                      height: 50,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'English',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('ko', 'KR'));
                    },
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Korean',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('ja', 'JP'));
                      print('Japan');
                    },
                    child: Container(
                      height: 50,
                      color: Colors.yellow,
                      child: const Center(
                        child: Text(
                          'Japan',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
