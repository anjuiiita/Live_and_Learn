import 'package:live_and_learn/entity/element/image.dart';
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
  schema: "mailto:",
  steps: [
    TutorialStep(
      name: "Client Compose Button",
      elements: [
        TutorialTextElement(
          'The compose button is located at the right bottom corner of the gmail application',
        ),
        TutorialTextElement(
          'Press the compose button, and the application will redirect you to the email editing page',
        ),
        TutorialImageElement(
          'https://www.tech-recipes.com/wp-content/uploads/2017/09/Gmail-Compose-Message-icon.png',
          explanation: 'Compose button of gmail application',
        ),
      ],
    ),
    TutorialStep(
      name: "Set receiver",
      elements: [
        TutorialTextElement(
          'Input receiver email address into the input field, which is located at the second top of the application',
        ),
        TutorialImageElement(
          'https://i.ibb.co/NWF8wxK/gmail-receiver.png',
          explanation: 'Input field of email receiver',
        ),
        TutorialTextElement(
          'Gmail application will auto complete your email address inputted',
        ),
      ],
    ),
    TutorialStep(
      name: "Input subject and content",
      elements: [
        TutorialTextElement(
          'Input the email subject into the subject input field',
        ),
        TutorialImageElement(
          'https://i.ibb.co/jMKv82J/gmail-subject.png',
          explanation: 'Input field of email subject',
        ),
        TutorialTextElement(
          'Input the email subject into the content input field',
        ),
        TutorialImageElement(
          'https://i.ibb.co/wpY31y3/gmail-content.png',
          explanation: 'Input field of email content',
        ),
      ],
    ),
    TutorialStep(
      name: "Send email",
      elements: [
        TutorialTextElement(
          'The send email button is located at the top right corner of the application',
        ),
        TutorialImageElement(
          'https://i.ibb.co/q0TtNtB/gmail-send.png',
          explanation: 'Send email button',
        ),
        TutorialTextElement(
          'Press the send email button to send your email, press launch application button below to try this procedure your self!',
        ),
      ],
    ),
  ],
);
