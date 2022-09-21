import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class SimpleCustomCalculator extends StatefulWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  final Color? buttonColor;
  final bool buttonIsRectangle;
  final double buttonPadding;
  final double numberSize;
  const SimpleCustomCalculator(
      {Key? key,
        required this.width,
        required this.height,
        this.backgroundColor = Colors.black87,
        this.buttonColor = Colors.blueGrey,
        this.buttonIsRectangle = false,
        this.buttonPadding = 2.0,
        this.numberSize = 37,
      })
      : super(key: key);

  @override
  State<SimpleCustomCalculator> createState() => _SimpleCustomCalculatorState();
}

class _SimpleCustomCalculatorState extends State<SimpleCustomCalculator> {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        height: widget.height,
        child: Column(
          children: [
            Container(
              color: widget.backgroundColor,
              height: widget.height * 0.3,
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,

                  ),
                  controller: textController,
                  style: TextStyle(color: Colors.white, fontSize: widget.numberSize),
                  minLines: 1,
                  maxLines: 50,
                  textAlign: TextAlign.end,
                  showCursor: true,
                  readOnly: true),
            ),
            Container(
                color: widget.backgroundColor,
                height: widget.height * 0.7,
                child: Column(
                  children: [
                    Expanded(
                      // 1
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child: ElevatedButton(
                                onPressed: () {
                                  textController.clear();
                                },
                                style: ElevatedButton.styleFrom(
                                    splashFactory: NoSplash.splashFactory,
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  'C',
                                  style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 2
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {

                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '( )',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 3
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}%';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '%',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 4
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}/';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '/',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      // 5
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}7';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '7',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 6
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}8';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '8',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),

                            ),
                          ),
                          Expanded(
                            // 7
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}9';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '9',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 8
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}*';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '*',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      // 9
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}4';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 10
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}5';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 11
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}6';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 12
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}-';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      // 13
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}1';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),

                            ),
                          ),
                          Expanded(
                            // 14
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}2';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 15
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}3';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 16
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}+';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 38,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      // 17
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  if (textController.text.isNotEmpty) {
                                    textController.text = textController.text.substring(0, textController.text.length - 1);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Icon(Icons.backspace_outlined, size: 30),
                              ),
                            ),
                          ),
                          Expanded(
                            // 18
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}0';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 19
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = '${textController.text}.';
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '.',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            // 20
                            child: Padding(
                              padding: EdgeInsets.all(widget.buttonPadding),
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  textController.text = textController.text.interpret().toString();

                                },
                                style: ElevatedButton.styleFrom(
                                    primary: widget.buttonColor,
                                    fixedSize: Size(
                                      widget.width / 5,
                                      widget.width / 5,
                                    ),
                                    shape: widget.buttonIsRectangle
                                        ? const RoundedRectangleBorder()
                                        : const CircleBorder()
                                ),
                                child: const Text(
                                  '=',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.lightGreenAccent),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}