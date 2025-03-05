enum CharacterClass {
  warrior,
  mage,
  archer
}

enum Daytime {
  morning,
  noon,
  evening,
  night
}

enum Weather {
  sunny,
  rainy,
  stormy
}

void main () {
  CharacterClass characterClass = CharacterClass.warrior;
  Weather weather = Weather.rainy;
  Daytime daytime = Daytime.noon;
  String className = '';

  int baseAttack = 0;
  switch (characterClass) {
    case CharacterClass.archer:
      baseAttack = 30;
      className = 'Bogenschütze';
      switch (weather) {
        case Weather.sunny:
          baseAttack += 10;
        case Weather.rainy:
          baseAttack += 20;
        case Weather.stormy:
          baseAttack -= 20;
      }
      switch (daytime) {
        case Daytime.morning:
          baseAttack += 5;
        case Daytime.noon:
          baseAttack += 10;
        case Daytime.evening:
          baseAttack += 20;
        case Daytime.night:
          baseAttack -= 10;
      }
    case CharacterClass.warrior:
      baseAttack = 40;
      className = 'Krieger';
      switch (weather) {
        case Weather.sunny:
          baseAttack += 20;
        case Weather.rainy:
          baseAttack -= 5;
        case Weather.stormy:
          baseAttack -= 20;
      }
      switch (daytime) {
        case Daytime.morning:
          baseAttack += 10;
        case Daytime.noon:
          baseAttack += 20;
        case Daytime.evening:
          baseAttack += 5;
        case Daytime.night:
          baseAttack -= 20;
      }
    case CharacterClass.mage:
      baseAttack = 50;
      className = 'Magier';
      switch (weather) {
        case Weather.sunny:
          // feuer magie ist im kampf king
          baseAttack += 40;
        case Weather.rainy:
          baseAttack += 10;
        case Weather.stormy:
          // wasser magie ist vermutlich eher nicht so stark für kämpfen
          baseAttack -= 10;
      }
      switch (daytime) {
        case Daytime.morning:
          baseAttack += 5;
        case Daytime.noon:
          baseAttack += 10;
        case Daytime.evening:
          baseAttack += 5;
        case Daytime.night:
          baseAttack -= 40;
      }
  }

  String weatherString = '';

  switch (weather) {
    case Weather.sunny:
      weatherString = 'Sonne';
    case Weather.rainy:
      weatherString = 'Regen';
    case Weather.stormy:
      weatherString = 'Sturm';
  }

  String daytimeString = '';

  switch (daytime) {
    case Daytime.morning:
      daytimeString = 'morgens';
    case Daytime.noon:
      daytimeString = 'tagsüber';
    case Daytime.evening:
      daytimeString = 'abends';
    case Daytime.night:
      daytimeString = 'nachts';
  }

  String effectiveness = '';

  switch (baseAttack) {
    case >= 70:
      effectiveness = 'Wie ein S-Klasse Abenteurer';
    case >= 40:
      effectiveness = 'Ganz gut Performance';
    default:
      effectiveness = 'Ist vermutlich mit dem falschen Fuß aufgestanden';
  }

  print('Der Angriffswert für die Klasse $className ist bei $weatherString $daytimeString $baseAttack. $effectiveness');
}