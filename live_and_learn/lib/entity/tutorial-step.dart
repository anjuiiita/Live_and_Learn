import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:live_and_learn/entity/tutorial-element.dart';

class TutorialStep {
  final String name;

  final List<TutorialElement> elements;

  TutorialStep({
    @required this.name,
    @required this.elements,
  });

  factory TutorialStep.fromMap(Map<String, dynamic> map) {
    final List<dynamic> elementList = map['elements'];

    return TutorialStep(
      name: map['name'],
      elements: elementList.map((dynamic element) {
        return TutorialElement.fromMap(element);
      }).toList(),
    );
  }

  Widget build(void Function(String content) readContent) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: this
          .elements
          .asMap()
          .map(
            (int index, TutorialElement element) {
              return MapEntry(
                index,
                Semantics(
                  child: Card(
                    child: Semantics(
                      value: "Element ${(index + 1).toString()}",
                      hint: element.type,
                      child: InkWell(
                        child: element.build(),
                        onTap: () {
                          readContent(element.read());
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
          )
          .values
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "elements": this.elements.map((TutorialElement element) {
        return element.toMap();
      }).toList(),
    };
  }
}
