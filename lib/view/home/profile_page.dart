import 'package:flutter/material.dart';
import 'package:simponi/widgets/post_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/header.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: -36,
                    child: Container(
                      height: 72,
                      width: 72,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/gdsc.jpg"),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.075,
                ),
                child: Column(
                  children: [
                    Text(
                      "Andreas Notokusumo",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Ilmu Komputer 2022 \nFakultas MIPA",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.bodyText2?.copyWith(height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Divider(),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return PostCard(
                      username: "Andreas Notokusumo",
                      content:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id libero vel felis eleifend ornare vitae et neque. Sed ultrices, metus in pretium fermentum, nunc mauris volutpat orci, eu tristique massa neque quis metus. Integer elit dolor, porttitor sed orci sed, tempor vehicula nunc.",
                      createdAt: DateTime.now(),
                      image: "assets/sample_feed.jpeg",
                    );
                  } else {
                    return PostCard(
                      username: "Andreas Notokusumo",
                      content:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id libero vel felis eleifend ornare vitae et neque. Sed ultrices, metus in pretium fermentum, nunc mauris volutpat orci, eu tristique massa neque quis metus. Integer elit dolor, porttitor sed orci sed, tempor vehicula nunc.",
                      createdAt: DateTime.now(),
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
