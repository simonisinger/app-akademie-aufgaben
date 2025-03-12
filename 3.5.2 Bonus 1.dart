void main() {
  convertMinutesToTime(75);
}

void convertMinutesToTime(int minutes) {
    print('${(minutes / 60).floor()} Stunden, ${minutes % 60} Minutens');
}