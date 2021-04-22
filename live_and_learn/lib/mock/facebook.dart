import 'package:live_and_learn/entity/element/text.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';
import 'package:live_and_learn/entity/tutorial.dart';

final TutorialEntity facebookSearchTutorial = TutorialEntity(
  name: "Search user",
  application: "Facebook",
  schema: "https://facebook.com",
  steps: [
    TutorialStep(
      name: "Set name",
      elements: [
        TutorialTextElement(
          'Type the name of person you want to search in the search text box',
        ),
      ],
    ),
    TutorialStep(
      name: "Find search box",
      elements: [
        TutorialTextElement(
          'Search box is location of the top of the Facebook Home page',
        ),
      ],
    ),
  ],
);

final TutorialEntity facebookCreateAndSignInTutorial = TutorialEntity(
  name: "Create and Sign-In",
  application: "Facebook",
  schema: "https://facebook.com",
  steps: [
    TutorialStep(
      name: "Input information",
      elements: [
        TutorialTextElement(
          'Input your date of birth and gender',
        ),
      ],
    ),
    TutorialStep(
      name: "Click Sign Up",
      elements: [
        TutorialTextElement(
          'Click sign up',
        ),
      ],
    ),
    TutorialStep(
      name: "Premission confirmation",
      elements: [
        TutorialTextElement(
          'After sign up, You will receive a message with your permission to turn on Notifications',
        ),
      ],
    ),
    TutorialStep(
      name: "Verify e-mail Address",
      elements: [
        TutorialTextElement(
          'You need to verify your email address or phone number on the link of the website by using the verification code in your email box or message box',
        ),
      ],
    ),
    TutorialStep(
      name: "Confirm e-mail address",
      elements: [
        TutorialTextElement(
          'After type the code, click continue. It will show that your account has been confirmed',
        ),
      ],
    ),
    TutorialStep(
      name: "Add Friends",
      elements: [
        TutorialTextElement(
          'There will be some friend suggestions, you can add some of them if you like',
        ),
      ],
    ),
  ],
);
