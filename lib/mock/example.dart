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
        TutorialImageElement(
          'https://www.iconpacks.net/icons/2/free-click-icon-2384-thumb.png',
          explanation: "point click, click point, pointer",
        ),
      ],
    ),
    TutorialStep(
      name: "Second Step",
      elements: [
        TutorialTextElement(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare, nunc ac fermentum bibendum, purus mi viverra velit, eget tempus dolor nisi ut nulla. Nunc posuere nunc placerat venenatis molestie. Sed ex augue, rutrum ut ornare sit amet, viverra sit amet ligula. Curabitur varius pretium mi. Mauris fermentum malesuada efficitur. Fusce porta varius hendrerit. Curabitur lobortis gravida feugiat. \n Fusce et odio consectetur, sollicitudin justo eget, fringilla est. Donec egestas tincidunt massa eu rutrum. Nunc euismod erat a congue viverra. Ut id ligula pellentesque, placerat neque vitae, bibendum velit. Morbi quis ipsum ultrices, malesuada orci id, tincidunt ligula. Donec consequat velit mi, quis convallis eros molestie vitae. Nam at lorem ac libero semper pretium eget a orci. Vestibulum luctus risus vitae lacus tempus, non rhoncus libero consectetur. Aliquam viverra dignissim ullamcorper. \n Pellentesque ut accumsan felis. Ut vel sem eros. Morbi finibus arcu in magna laoreet pulvinar. Fusce pulvinar sit amet augue id pulvinar. Ut aliquet viverra magna et iaculis. Donec imperdiet eleifend felis, sed accumsan lorem tempus a. Curabitur orci ante, finibus ac erat sed, rutrum rutrum quam. Nam dictum tellus ipsum, eget posuere lorem commodo sit amet. Nunc sit amet orci et ex pellentesque congue. Ut nisi ante, sagittis et lacus vel, mollis posuere velit. Sed dapibus quis nunc sit amet lacinia. Donec fringilla ipsum vel sapien mollis scelerisque. Aenean eu turpis neque. Ut vel sapien in nibh pharetra varius ac sit amet ex. \n Etiam maximus erat orci, a gravida nulla facilisis a. Ut dignissim, urna id tempor convallis, metus purus tincidunt diam, vitae molestie felis felis nec elit. Pellentesque euismod lobortis magna eu hendrerit. Integer tristique sed neque sed auctor. Donec id risus sagittis, dapibus tellus sed, viverra lacus. Nunc convallis suscipit elit, in tempus sapien. Sed quis eleifend nisl, eu vulputate nisi. Donec eget dolor volutpat dolor hendrerit tincidunt posuere et tortor. \n Pellentesque orci lectus, porta id tincidunt ut, scelerisque ut nisl. Proin consectetur vehicula urna commodo viverra. Curabitur placerat turpis elementum, bibendum ante et, iaculis nibh. Nunc ut mollis quam. Nullam sed mollis ex. Mauris arcu neque, pulvinar et tristique quis, vulputate quis massa. Ut sed varius nibh, at bibendum ligula. Praesent elementum libero dapibus odio pellentesque cursus. Praesent rutrum, nunc quis ornare consequat, orci nulla vehicula velit, at dictum velit risus eget libero. Fusce gravida nibh gravida porta egestas. Morbi auctor nibh eget risus tempor, eget blandit ex laoreet. Vestibulum malesuada tincidunt tellus condimentum vehicula. Donec sit amet mauris sit amet justo mattis imperdiet. Nullam malesuada, libero nec luctus porttitor, ipsum velit sagittis metus, nec fringilla lorem nibh tempus nisi. Integer bibendum arcu vel diam elementum, eget sodales orci volutpat.',
        ),
      ],
    ),
  ],
);
