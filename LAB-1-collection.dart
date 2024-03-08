void main() {
  var favoriteHobbies = <String>[];

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.addAll(['Reading', 'Music', 'Coding', 'Basketball']);

  print('Favorite hobbies: $favoriteHobbies');

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.remove('Playing guitar');
  print('Favorite hobbies after removing "Playing guitar": $favoriteHobbies');

  favoriteHobbies.sort();
  print('Favorite hobbies after sorting: $favoriteHobbies');
}
