// Example of pattern matching json-like objects.

main() {
  final json = {
    'name': 'Grace Hopper',
    'age': 116,
    'junk data': 'ok',
  };

  final User user = User.json(json);

  print(user);
}

class User {
  const User({
    required this.name,
    required this.age,
  });

  factory User.json(Object json) {
    switch (json) {
      case {'name': String name, 'age': int age}:
        return User(
          name: name,
          age: age,
        );
      default:
        throw Exception('Invalid json');
    }
  }

  final String name;
  final int age;

  @override
  String toString() {
    return 'User with name $name, age $age.';
  }
}
