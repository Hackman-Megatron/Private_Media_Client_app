import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key,
  });

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
               /* const SizedBox(height: 100,),
                const Text(
                  "Hide On Scroll",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 50,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        index.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )*/
              ],
            ),
          ),
    );
  }
}
