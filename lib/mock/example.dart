import 'package:live_and_learn/entity/element/text-element.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';
import 'package:live_and_learn/entity/tutorial.dart';

final TutorialEntity exampleTutorial = TutorialEntity(
  name: "Example Tutorial",
  application: "The Click",
  schema: "tel:5152944111",
  steps: [
    TutorialStep(
      name: "First Step",
      elements: [
        TutorialTextElement('Click the clicker'),
      ],
    ),
    TutorialStep(
      name: "Second Step",
      elements: [
        TutorialTextElement('Click the clicker again'),
      ],
    ),
  ],
);
