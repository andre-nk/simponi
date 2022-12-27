import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simponi/view/home/wrapper_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: double.infinity,
                  child: Image.asset(
                    "assets/header.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -32,
                  child: Image.asset("assets/logo.png"),
                ),
                Positioned(
                  top: -12,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 12),
                        height: 56,
                        width: 56,
                        child: Image.asset("assets/logo_ugm.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(36).copyWith(top: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Text(
                          "Simponi",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onBackground),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "mengakar kuat, menjulang tinggi",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.onSecondary,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const WrapperPage();
                        }));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: SvgPicture.asset(
                              "assets/google_logo.svg",
                              height: 16,
                              width: 16,
                            ),
                          ),
                          Text(
                            "MASUK DENGAN GOOGLE",
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.background,
                                ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
