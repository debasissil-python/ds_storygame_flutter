//TODONE: Step 6 - import the story.dart file into this file.

//TODONE: Step 5 - Create a new class called StoryBrain.

//TODONE: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

//TODONE: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  int storyTitle = 0;

  List<Story> _storyData = [
    //Story (
    //   storyTitle = '';
    //   choice1 = '';
    //   choice2 = '';)
    Story(
        //_storyNumber = 0
        'You went for a solo hiking trip and got lost in the middle of nowhere with no cell phone reception. \n\nIt was already dark so You decide to go towards the road to hitchhike to the nearest town. \n\nSuddenly you saw A rusty house with a faint light. \n\nAs you are approaching the house a man with a shovel comes out of the jungle and asks: \n"Need a place, boy?".',
        'I\'ll say Thanks for the help!',
        'Better ask if he knows the way to the town.'),
    Story(
        //_storyNumber = 1
        'He nods slowly, unphased by the question and said - \n\n"Come on in, you will not be able to make it alive. \n\nThis jungle is full of wild animals".',
        'No other option. I start following him.',
        'Well, I will take that chance.'),
    Story(
        //_storyNumber = 2
        'As you start following him, the stranger starts talking about his relationship with his wife. \n\nHe gets angrier and angrier by the minute. He asks you to open the door. \n\nInside you find a stinking smell, a huge knife placed on the table, and a music system playing Richard Marx. \n\nHe goes inside the house. \n\n"Are you coming or not ?" - He asked.',
        'I love Richard Marx! I go in with a smile.',
        "He'll kill me! Let me run for the jungle."),
    Story(
        //_storyNumber = 3
        'You bond with the person while crooning verses of "Right here waiting". \n\nHe invites you to dinner while sharing his life stories with you. \n\nBefore you go to bed he asks you if you want to go hunting.',
        'Yes why not',
        "I'm too tired to go"),
    Story(
        //_storyNumber = 4
        'You took a sprint in the dark! \n\nAs you could not see anything you hit a rock and toppled over. \n\nYou covered your head to protect yourself from serious injuries, fell into a ditch and fainted. \n\nYou regained consciousness in the morning only to find the man you were running from',
        'Apologize for my deed',
        'Ask him how far is the nearest town'),
    Story(
        //_storyNumber = 5
        'You have an uncanny feeling that in this hunting game you might be hunted. \n\nYou decide what to do',
        'I will run towards the jungle',
        'I am willing to take the chance to be with him'),
    Story(
        //_storyNumber = 6
        'You acted as if you are too tired and went off to sleep. \n\nYou could hear him go out of the door in the night.\n\nYou slept over.\n\nWhen you woke up you found he is standing in front of you, grinning.',
        'I apologized for not going',
        'I thanked him for his help and left'),
    Story(
        //_storyNumber = 7
        '"Don\'t worry my friend" - he said with an assuring smile. \n\nHe invited you to come over for a cup of hot coffee and he also told you the way to the town.',
        'I accepted the offer',
        'I thanked him and moved on'),
    Story(
        //_storyNumber = 8
        'You went to the jungle with him and had a fantastic time. \n\nIn the morning he served you a cup of hot coffee, a grand breakfast and also told you the way to the town.',
        'Restart',
        ''),
    Story(
        //_storyNumber = 9
        'He served you a cup of hot coffee, a grand breakfast and also helped you with a ride to the town.',
        'Restart',
        ''),
    Story(
        //_storyNumber = 10
        'He told you the way to the town.',
        'Restart',
        ''),
  ];

  //TODONE: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
    // if (storyNumber < _storyData.length - 1) {
    //   storyNumber++;
  }

  //TODONE: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  //TODONE: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  //TODONE: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 3) {
      _storyNumber = 6;
    } else if (choiceNumber == 1 && _storyNumber == 4) {
      _storyNumber = 7;
    } else if (choiceNumber == 2 && _storyNumber == 4) {
      _storyNumber = 7;
    } else if (choiceNumber == 1 && _storyNumber == 5) {
      _storyNumber = 4;
    } else if (choiceNumber == 2 && _storyNumber == 5) {
      _storyNumber = 8;
    } else if (choiceNumber == 1 && _storyNumber == 6) {
      _storyNumber = 7;
    } else if (choiceNumber == 2 && _storyNumber == 6) {
      _storyNumber = 9;
    } else if (choiceNumber == 1 && _storyNumber == 7) {
      _storyNumber = 9;
    } else if (choiceNumber == 2 && _storyNumber == 7) {
      _storyNumber = 10;
    } else if (_storyNumber == 8 || _storyNumber == 9 || _storyNumber == 10) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    // if(_storyNumber < 3) {}
    if (_storyNumber == 0 ||
        _storyNumber == 1 ||
        _storyNumber == 2 ||
        _storyNumber == 3 ||
        _storyNumber == 4 ||
        _storyNumber == 5 ||
        _storyNumber == 6 ||
        _storyNumber == 7) {
      return true;
    } else {
      return false;
    }
  }
}

//TODONE: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODONE: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODONE: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODONE: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODONE: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODONE: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
