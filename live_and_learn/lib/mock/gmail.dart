import 'package:live_and_learn/entity/element/text.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';
import 'package:live_and_learn/entity/tutorial.dart';

final TutorialEntity gmailChatTutorial = TutorialEntity(
  name: "Chat in Gmail",
  application: "Gmail",
  schema: "tel:5152944111",
  steps: [
    TutorialStep(
      name: "Find the button",
      elements: [
        TutorialTextElement(
          'On the left bottom part of Gmail, there will be list of persons online',
        ),
      ],
    ),
    TutorialStep(
      name: "Open Chat",
      elements: [
        TutorialTextElement(
          'Click on the name of person you want to talk to',
        ),
      ],
    ),
    TutorialStep(
      name: "Start Chat",
      elements: [
        TutorialTextElement(
          'A chat window will open, Type the text to start the chat',
        ),
      ],
    ),
  ],
);
