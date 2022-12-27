import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final DateTime createdAt;
  final String content;
  final String? image;

  const PostCard({
    Key? key,
    required this.username,
    required this.content,
    required this.createdAt,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 32,
                width: 32,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/gdsc.jpg"),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            username,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Row(
                            children: const [
                              Text("4j"),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.more_vert_rounded,
                                  size: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          content,
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                height: 1.25,
                                color: Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                      ),
                      image != null
                          ? Container(
                              width: double.infinity,
                              clipBehavior: Clip.antiAlias,
                              padding: const EdgeInsets.only(top: 12.0),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
                              child: Image.asset(
                                image ?? "assets/header.jpg",
                                fit: BoxFit.cover,
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
