import 'package:flutter/material.dart';
import 'package:imgy/imgy.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> images = [
      {
        "preview":
            "https://images.unsplash.com/photo-1682685797660-3d847763208e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
        "full":
            "https://images.unsplash.com/photo-1682685797660-3d847763208e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=100",
      },
      {
        "preview":
            "https://images.unsplash.com/photo-1692206130097-f66afa1cbc96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "full":
            "https://images.unsplash.com/photo-1692206130097-f66afa1cbc96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2187&q=100",
      },
      {
        "preview":
            "https://images.unsplash.com/photo-1692401134669-4622e26ebede?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "full":
            "https://images.unsplash.com/photo-1692401134669-4622e26ebede?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2128&q=100",
      },
      {
        "preview":
            "https://images.unsplash.com/photo-1682686580433-2af05ee670ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "full":
            "https://images.unsplash.com/photo-1682686580433-2af05ee670ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2187&q=100"
      },
      {
        "preview":
            "https://images.unsplash.com/photo-1692302858386-6daeab196cec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "full":
            "https://images.unsplash.com/photo-1692302858386-6daeab196cec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2187&q=100"
      },
      {
        "preview":
            "https://images.unsplash.com/photo-1692467478663-067848d6e177?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "full":
            "https://images.unsplash.com/photo-1692467478663-067848d6e177?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2187&q=100"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Imgy Component'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text('Network images'),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Imgy(
                  enableFullScreen: true,
                  src: images[index]["preview"]!,
                  fullSrc: images[index]["full"]!,
                  width: 200,
                  height: 200,
                  placeholderColor: Colors.red,
                );
              },
              childCount: images.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text('Asset images'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Imgy(
                  enableFullScreen: true,
                  src: "./assets/images/image-example.jpeg",
                  fullSrc: "./assets/images/image-example.jpeg",
                  width: 200,
                  height: 200,
                  placeholderColor: Colors.red,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text('Rounded'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Imgy(
                  enableFullScreen: true,
                  src: "./assets/images/image-example.jpeg",
                  fullSrc: "./assets/images/image-example.jpeg",
                  width: 200,
                  height: 200,
                  placeholderColor: Colors.red,
                  borderWidth: 2,
                  borderColor: Colors.red,
                  padding: 2,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  borderRadiusInside: BorderRadius.all(Radius.circular(37)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
