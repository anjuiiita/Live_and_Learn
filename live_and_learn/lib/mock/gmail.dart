import 'package:live_and_learn/entity/element/text.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';
import 'package:live_and_learn/entity/tutorial.dart';

final TutorialEntity gmailChatTutorial = TutorialEntity(
  name: "Chat",
  application: "Gmail",
  schema: "mailto:test",
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

final TutorialEntity gmailSendTutorial = TutorialEntity(
  name: "Send email",
  application: "Gmail",
  schema: "mailto:test",
  steps: [
    TutorialStep(
      name: "Click Button",
      elements: [
        TutorialTextElement(
          'Click on compose mail',
        ),
      ],
    ),
    TutorialStep(
      name: "Set Sender",
      elements: [
        TutorialTextElement(
          'Enter sender\'s email in To text box',
        ),
      ],
    ),
    TutorialStep(
      name: "Set Subject",
      elements: [
        TutorialTextElement(
          'Type Subject in Subject text box',
        ),
      ],
    ),
    TutorialStep(
      name: "Set Content",
      elements: [
        TutorialTextElement(
          'Type Email content in the text box',
        ),
      ],
    ),
    TutorialStep(
      name: "Send",
      elements: [
        TutorialTextElement(
          'Click on send',
        ),
      ],
    ),
  ],
);
