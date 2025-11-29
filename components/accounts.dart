class Account {
  String pfp;
  String username;
  String name;
  String bio;
  int followers;
  int followings;
  int posts;

  Account({
    required this.pfp,
    required this.username,
    required this.name,
    required this.bio,
    required this.followers,
    required this.followings,
    required this.posts,
  });
}

List<Account> accounts = [
  Account(
    pfp: 'lib/assets/images/pfp 1.jpg',
    username: 'johnd',
    name: 'John Doe',
    followers: 120,
    followings: 80,
    posts: 34,
    bio: 'Just another guy trying to make it.',
  ),
  Account(
    pfp: 'lib/assets/images/pfp 2.png',
    username: 'mikasa',
    name: 'Mikasa Ackerman',
    followers: 540,
    followings: 210,
    posts: 75,
    bio: 'Protecting Eren. Always.',
  ),
  Account(
    pfp: 'lib/assets/images/pfp 3.jpg',
    username: 'itachi',
    name: 'Itachi Uchiha',
    followers: 999,
    followings: 13,
    posts: 48,
    bio: 'In the shadows for peace.',
  ),
  Account(
    pfp: 'lib/assets/images/pfp 4.jpg',
    username: 'idontcare',
    name: 'Alex Storm',
    followers: 200,
    followings: 190,
    posts: 12,
    bio: 'Vibes over everything.',
  ),
  Account(
    pfp: 'lib/assets/images/pfp 5.jpg',
    username: 'lunasky',
    name: 'Luna Sky',
    followers: 450,
    followings: 320,
    posts: 56,
    bio: 'Dreamer. Believer. Achiever.',
  ),
  Account(
    pfp: 'lib/assets/images/pfp 6.png',
    username: 'catgirl',
    name: 'Cat Girl',
    followers: 300,
    followings: 280,
    posts: 41,
    bio: 'Mew mew world domination 😼',
  ),

  Account(
    pfp: 'lib/assets/images/post 4.jpg',
    username: 'Ahmed',
    name: 'hamouda',
    followers: 150,
    followings: 90,
    posts: 20,
    bio: 'Weekend vibes and long workdays.',
  ),
  Account(
    pfp: 'lib/assets/images/post 5.png',
    username: 'Meriem',
    name: 'Meriem',
    followers: 210,
    followings: 180,
    posts: 34,
    bio: 'Creative soul working on big ideas.',
  ),
  Account(
    pfp: 'lib/assets/images/post 2.png',
    username: 'Sara',
    name: 'Sara',
    followers: 170,
    followings: 140,
    posts: 12,
    bio: 'Event junkie and people person.',
  ),
  Account(
    pfp: 'lib/assets/images/post 1.jpg',
    username: 'Youssef',
    name: 'Youssef',
    followers: 130,
    followings: 120,
    posts: 19,
    bio: 'Meme lover and Reddit explorer.',
  ),
  Account(
    pfp: 'lib/assets/images/post 5.png',
    username: 'Nadia',
    name: 'Nadia',
    followers: 240,
    followings: 180,
    posts: 23,
    bio: '🌞 Morning person | Planner & dreamer',
  ),
  Account(
    pfp: 'lib/assets/images/post 6.jpeg',
    username: 'Amira',
    name: 'Amira',
    followers: 260,
    followings: 205,
    posts: 33,
    bio: 'Organized. Punctual. On it!',
  ),
];
