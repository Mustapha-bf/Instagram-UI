import 'package:instagram/components/accounts.dart';

class Messages {
  final List<String> chat;
  bool isMe;

  Messages({required this.chat, this.isMe = false});
}

class UserMessages {
  final Account account;
  final List<Messages> messages;
  bool read;

  UserMessages({
    required this.account,
    required this.messages,
    this.read = false,
  });
}

List<UserMessages> userMessages = [
  UserMessages(
    account: accounts[6],
    messages: [
      Messages(chat: ['hey', 'fine wbu ?'], isMe: false),
      Messages(chat: ['hello', 'how are you ?'], isMe: true),
      Messages(chat: ['I’m good too', 'just a bit tired'], isMe: false),
      Messages(chat: ['Long day?', 'What happened?'], isMe: true),
      Messages(chat: ['Yeah, lots of work today', 'meetings non-stop'], isMe: false),
      Messages(chat: ['Ugh I hate those days 😓'], isMe: true),
      Messages(chat: ['Same here 😩', 'Can’t wait for the weekend'], isMe: false),
      Messages(chat: ['Got any plans?', 'Going somewhere?'], isMe: true),
      Messages(chat: ['Maybe a short trip', 'Not sure yet though'], isMe: false),
      Messages(chat: ['Sounds fun!', 'Let me know if you go'], isMe: true),
      Messages(chat: ['Of course!', 'We should plan something together sometime'], isMe: false),
      Messages(chat: ['Definitely 😄', 'That’d be cool!'], isMe: true),
      Messages(chat: ['Anyway, gotta go now', 'Talk later?'], isMe: false),
      Messages(chat: ['Sure!', 'Take care 😊'], isMe: true),
    ],
    read: true,
  ),
  UserMessages(
    account: accounts[7],
    messages: [
      Messages(chat: ['Hi there!', 'Doing great, thanks!'], isMe: false),
      Messages(chat: ['Hey!', 'I\'m good, how about you?'], isMe: true),
      Messages(chat: ['Busy with a project', 'but almost done!'], isMe: false),
      Messages(chat: ['Nice!', 'Can’t wait to see it'], isMe: true),
      Messages(chat: ['I’ll show you once it’s ready 😄'], isMe: false),
      Messages(chat: ['Cool! Good luck 💪'], isMe: true),
    ],
  ),
  UserMessages(
    account: accounts[2],
    messages: [
      Messages(chat: ['Hey!', 'What are you up to?'], isMe: false),
      Messages(chat: ['Not much, just chilling. You?', 'Same here!'], isMe: true),
      Messages(chat: ['Want to hang out later?'], isMe: false),
      Messages(chat: ['Yeah sure!', 'Let’s meet at 5?'], isMe: true),
      Messages(chat: ['Perfect!', 'See you then'], isMe: false),
    ],
    read: false,
  ),
  UserMessages(
    account: accounts[10],
    messages: [
      Messages(chat: ['Hey!', 'How was your day?'], isMe: false),
      Messages(chat: ['Pretty good, thanks!', 'Yours?'], isMe: true),
      Messages(chat: ['Not bad, had some errands'], isMe: false),
      Messages(chat: ['Hope they went well'], isMe: true),
      Messages(chat: ['Yeah, all sorted now 😌'], isMe: false),
    ],
    read: false,
  ),
  UserMessages(
    account: accounts[8],
    messages: [
      Messages(chat: ['You coming to the event?'], isMe: false),
      Messages(chat: ['Yes, I\'ll be there at 7.'], isMe: true),
      Messages(chat: ['Awesome!', 'Save me a seat 😄'], isMe: false),
      Messages(chat: ['You got it!'], isMe: true),
    ],
    read: true,
  ),
  UserMessages(
    account: accounts[11],
    messages: [
      Messages(chat: ['Check this out!'], isMe: false),
      Messages(chat: ['Nice one!', 'Where did you find it?'], isMe: true),
      Messages(chat: ['Reddit', 'I’ll send you the link'], isMe: false),
      Messages(chat: ['Cool, thanks!'], isMe: true),
    ],
    read: false,
  ),
  UserMessages(
    account: accounts[4],
    messages: [
      Messages(chat: ['Good morning!'], isMe: true),
      Messages(chat: ['Morning!', 'Hope you have a great day!'], isMe: false),
      Messages(chat: ['Thanks!', 'You too 🌸'], isMe: true),
      Messages(chat: ['Don’t forget our call later'], isMe: false),
      Messages(chat: ['I won’t! See you then'], isMe: true),
    ],
    read: true,
  ),
  UserMessages(
    account: accounts[9],
    messages: [
      Messages(chat: ['Don\'t forget the meeting tomorrow.'], isMe: true),
      Messages(chat: ['Thanks for the reminder!'], isMe: false),
      Messages(chat: ['9 AM sharp'], isMe: true),
      Messages(chat: ['Got it. I’ll be ready!'], isMe: false),
    ],
    read: false,
  ),
];
