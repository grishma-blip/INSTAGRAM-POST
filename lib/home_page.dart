import 'package:flutter/material.dart';

class Post {
  final String username;
  final String fileName;
  final String description;
  final String code;

  const Post({
    required this.username,
    required this.fileName,
    required this.description,
    required this.code,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // ============================================================
  // 9 DART ASSIGNMENT POSTS
  // ============================================================

  static const List<Post> posts = [
    // ==========================================================
    // 01 VARIABLES
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '01_variables.dart',
      description: 'Learning Dart variables 🚀',
      code: r'''void main() {
  var name = "Alex";
  int age = 20;
  double marks = 85.5;
  bool isStudent = true;

  print(name);
  print(age);
  print(marks);
  print(isStudent);
}''',
    ),

    // ==========================================================
    // 02 COLLECTIONS
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '02_collections.dart',
      description: 'Exploring List, Set and Map 📚',
      code: r'''void main() {
  // List
  List<int> numbers = [10, 20, 30];

  numbers.add(40);

  print("List: $numbers");

  // Set
  Set<String> fruits = {
    "apple",
    "banana",
    "orange",
  };

  print("Set: $fruits");

  // Map
  Map<String, dynamic> student = {
    "name": "Alex",
    "grade": "A",
  };

  print("Map: $student");
}''',
    ),

    // ==========================================================
    // 03 OPERATORS
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '03_operators.dart',
      description: 'Working with Dart operators ⚡',
      code: r'''void main() {
  int a = 10;
  int b = 5;

  // Arithmetic operators
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);

  // Relational operators
  print(a > b);
  print(a < b);
  print(a == b);

  // Logical operators
  print(a > 5 && b < 10);
}''',
    ),

    // ==========================================================
    // 04 CONTROL FLOW
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '04_control_flow.dart',
      description: 'Understanding control flow 🔀',
      code: r'''void main() {
  int marks = 85;

  if (marks >= 90) {
    print("Excellent");
  } else if (marks >= 60) {
    print("Good");
  } else {
    print("Keep learning");
  }

  // Switch statement
  String grade = "A";

  switch (grade) {
    case "A":
      print("Excellent");
      break;

    case "B":
      print("Good");

    default:
      print("Keep improving");
  }
}''',
    ),

    // ==========================================================
    // 05 FUNCTIONS
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '05_functions.dart',
      description: 'Functions make code reusable 🧩',
      code: r'''void greet(String name) {
  print("Hello, $name!");
}

int add(int a, int b) {
  return a + b;
}

void main() {
  greet("Alex");

  int result = add(10, 20);

  print(result);
}''',
    ),

    // ==========================================================
    // 06 NULL SAFETY
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '06_null_safety.dart',
      description: 'Keeping Dart code safe with null safety 🛡️',
      code: r'''void main() {
  String name = "Alex";

  String? nickname;

  print(name);
  print(nickname);

  // If-null operator
  String displayName =
      nickname ?? "Guest";

  print(displayName);

  // Null-aware access
  print(nickname?.length);
}''',
    ),

    // ==========================================================
    // 07 ADVANCED CONTROL FLOW
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '07_advanced_control_flow.dart',
      description: 'Exploring advanced control flow 🔥',
      code: r'''void main() {
  // For loop
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }

    print(i);
  }

  // For-in loop
  List<String> names = [
    "Alex",
    "John",
    "Sam",
  ];

  for (String name in names) {
    print(name);
  }

  // While loop
  int count = 0;

  while (count < 3) {
    print(count);
    count++;
  }
}''',
    ),

    // ==========================================================
    // 08 ADVANCED FUNCTIONS
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '08_advanced_functions.dart',
      description: 'Learning advanced functions and closures 🧠',
      code: r'''int calculate(
  int a,
  int b,
  int Function(int, int) operation,
) {
  return operation(a, b);
}

void main() {
  final result = calculate(
    10,
    5,
    (a, b) => a + b,
  );

  print(result);
}''',
    ),

    // ==========================================================
    // 09 ADVANCED NULL SAFETY
    // ==========================================================

    Post(
      username: 'dart_student',
      fileName: '09_advanced_null_safety.dart',
      description: 'Advanced Dart null safety concepts 💙',
      code: r'''void main() {
  // Nullable variable
  String? name;

  // Null-aware assignment
  name ??= "Guest";

  print(name);

  // Null-aware access
  String? value;

  print(value?.length);

  // late keyword
  late String username;

  username = "Alex";

  print(username);
}''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ========================================================
      // APP BAR
      // ========================================================

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),

          SizedBox(width: 20),

          Icon(
            Icons.send_outlined,
            color: Colors.black,
          ),

          SizedBox(width: 16),
        ],
      ),

      // ========================================================
      // FEED
      // ========================================================

      body: Center(
        child: SizedBox(
          width: 390,

          child: ListView.builder(
            padding: const EdgeInsets.only(
              bottom: 30,
            ),

            itemCount: posts.length,

            itemBuilder: (context, index) {
              return PostContainer(
                post: posts[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

// ============================================================
// POST CONTAINER
// ============================================================

class PostContainer extends StatefulWidget {
  final Post post;

  const PostContainer({
    super.key,
    required this.post,
  });

  @override
  State<PostContainer> createState() =>
      _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {

  // ==========================================================
  // LIKE STATE
  // ==========================================================

  int likes = 0;
  bool isLiked = false;

  // ==========================================================
  // LIKE / UNLIKE
  // ==========================================================

  void toggleLike() {
    setState(() {
      if (isLiked) {
        likes--;
        isLiked = false;
      } else {
        likes++;
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 25,
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          // ==================================================
          // PROFILE SECTION
          // ==================================================

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),

            child: Row(
              children: [

                // Profile icon
                Container(
                  width: 48,
                  height: 48,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFD54F),
                        Color(0xFFFF7043),
                        Color(0xFFE91E63),
                        Color(0xFF673AB7),
                      ],

                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),

                  child: Container(
                    margin:
                        const EdgeInsets.all(3),

                    decoration:
                        const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),

                    child: const Icon(
                      Icons.code,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // Username and file name
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [

                      Text(
                        widget.post.username,

                        style:
                            const TextStyle(
                          fontWeight:
                              FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 3),

                      Text(
                        widget.post.fileName,

                        style:
                            const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                // Follow button
                OutlinedButton(
                  onPressed: () {},

                  style:
                      OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color:
                          Color(0xFFE0E0E0),
                    ),

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),

                  child: const Text(
                    'Follow',
                  ),
                ),
              ],
            ),
          ),

          // ==================================================
          // CODE POST
          // ==================================================

          Container(
            width: double.infinity,

            margin:
                const EdgeInsets.symmetric(
              horizontal: 8,
            ),

            decoration: BoxDecoration(
              color:
                  const Color(0xFF171717),

              borderRadius:
                  BorderRadius.circular(6),

              border: Border.all(
                color:
                    const Color(0xFF303030),
              ),
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                // =================================================
                // CODE EDITOR HEADER
                // =================================================

                Container(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),

                  decoration:
                      const BoxDecoration(
                    color:
                        Color(0xFF252525),

                    borderRadius:
                        BorderRadius.vertical(
                      top:
                          Radius.circular(6),
                    ),
                  ),

                  child: Row(
                    children: [

                      // Red dot
                      Container(
                        width: 9,
                        height: 9,

                        decoration:
                            const BoxDecoration(
                          color:
                              Color(0xFFFF5F57),

                          shape:
                              BoxShape.circle,
                        ),
                      ),

                      const SizedBox(
                        width: 6,
                      ),

                      // Yellow dot
                      Container(
                        width: 9,
                        height: 9,

                        decoration:
                            const BoxDecoration(
                          color:
                              Color(0xFFFFBD2E),

                          shape:
                              BoxShape.circle,
                        ),
                      ),

                      const SizedBox(
                        width: 6,
                      ),

                      // Green dot
                      Container(
                        width: 9,
                        height: 9,

                        decoration:
                            const BoxDecoration(
                          color:
                              Color(0xFF28C840),

                          shape:
                              BoxShape.circle,
                        ),
                      ),

                      const SizedBox(
                        width: 12,
                      ),

                      // File name
                      Expanded(
                        child: Text(
                          widget.post.fileName,

                          style:
                              const TextStyle(
                            color:
                                Colors.white70,

                            fontSize: 12,

                            fontWeight:
                                FontWeight.w500,
                          ),
                        ),
                      ),

                      const Icon(
                        Icons.more_horiz,
                        color:
                            Colors.white54,
                        size: 20,
                      ),
                    ],
                  ),
                ),

                // =================================================
                // CODE
                // =================================================

                Padding(
                  padding:
                      const EdgeInsets.all(16),

                  child:
                      SingleChildScrollView(
                    scrollDirection:
                        Axis.horizontal,

                    child: Text(
                      widget.post.code,

                      style:
                          const TextStyle(
                        color:
                            Color(0xFFE6E6E6),

                        fontSize: 12.5,

                        height: 1.5,

                        fontFamily:
                            'monospace',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ==================================================
          // POST ACTIONS
          // ==================================================

          Padding(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),

            child: Row(
              children: [

                // LIKE
                GestureDetector(
                  onTap: toggleLike,

                  child: Icon(
                    isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,

                    color: isLiked
                        ? Colors.red
                        : Colors.black,

                    size: 29,
                  ),
                ),

                const SizedBox(
                  width: 18,
                ),

                // COMMENT
                const Icon(
                  Icons.chat_bubble_outline,
                  size: 27,
                ),

                const SizedBox(
                  width: 18,
                ),

                // SHARE
                const Icon(
                  Icons.send_outlined,
                  size: 27,
                ),

                const Spacer(),

                // BOOKMARK
                const Icon(
                  Icons.bookmark_border,
                  size: 28,
                ),
              ],
            ),
          ),

          // ==================================================
          // LIKE COUNT
          // ==================================================

          Padding(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
            ),

            child: Text(
              '$likes likes',

              style:
                  const TextStyle(
                fontWeight:
                    FontWeight.bold,

                fontSize: 14,
              ),
            ),
          ),

          // ==================================================
          // CAPTION
          // ==================================================

          Padding(
            padding:
                const EdgeInsets.fromLTRB(
              12,
              8,
              12,
              10,
            ),

            child: RichText(
              text:
                  TextSpan(
                style:
                    const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                children: [

                  TextSpan(
                    text:
                        '${widget.post.username} ',

                    style:
                        const TextStyle(
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  TextSpan(
                    text:
                        widget.post.description,
                  ),
                ],
              ),
            ),
          ),

          // ==================================================
          // LIKE BUTTON
          // ==================================================

          Padding(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
            ),

            child: SizedBox(
              width: double.infinity,

              child:
                  OutlinedButton.icon(

                onPressed: toggleLike,

                icon: Icon(
                  isLiked
                      ? Icons.favorite
                      : Icons.favorite_border,

                  color: isLiked
                      ? Colors.red
                      : Colors.black,
                ),

                label: Text(
                  isLiked
                      ? 'Liked'
                      : 'Like this post',
                ),

                style:
                    OutlinedButton.styleFrom(
                  foregroundColor:
                      Colors.black,

                  side:
                      const BorderSide(
                    color:
                        Color(0xFFE0E0E0),
                  ),

                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}