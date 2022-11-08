import 'package:flutter/material.dart';

class FruitsAndVegitables extends StatelessWidget {
  const FruitsAndVegitables({super.key});

  @override
  Widget build(BuildContext context) {
    double? height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            leading: const Text("Fruits And Vegitables"),
            title: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down),
            )

            //trailing: Icon(Icons.search),
            ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width * .2,
                  height: height * 1,
                  color: Colors.red,
                ),
                Container(
                  width: width * .8,
                  height: height * 1,
                  color: Colors.green,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(child: Text("All")),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 64,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(child: Text("Combo")),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 107,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                    child: Text("Deal Of the day")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const FruitVegitablesWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FruitVegitablesWidget extends StatelessWidget {
  const FruitVegitablesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          height: 99,
          width: 294,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset("assets")
            ],
          ),
        );
      },
    );
  }
}
