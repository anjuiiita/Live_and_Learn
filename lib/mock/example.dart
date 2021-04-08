import 'package:live_and_learn/entity/element/image.dart';
import 'package:live_and_learn/entity/element/text.dart';
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
        TutorialImageElement(
          'https://www.iconpacks.net/icons/2/free-click-icon-2384-thumb.png',
        ),
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
