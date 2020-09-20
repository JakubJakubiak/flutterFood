class MenuDrinking {
  int id;
  String title;
  String description;
  String url;
  String fullDescription;

  MenuDrinking({
    this.id,
    this.title,
    this.description,
    this.url,
    this.fullDescription,
  });
}

List<MenuDrinking> drinkings = [
  MenuDrinking(
    id: 0,
    url: 'assets/20190406_204841.jpg',
    title: 'picu picu ',
    description:
        'Czas przygotowania: 15 minut | Czas gotowania: 10 minut | Porcji: 2',
    fullDescription: 'Składniki 7',
  ),
  MenuDrinking(
    id: 1,
    url: 'assets/20190424_131646.jpg',
    title: 'Łosoś pieczony ze szparagami',
    description:
        'Czas przygotowania: 15 minut | Czas gotowania: 10 minut | Porcji: 2',
    fullDescription:
        'Składniki 750 g filetu z łososia 3 łyżki musztardy Dijon 30 g skórki wieprzowej 2 łyżki stołowe parmezanu 16 łodyżek szparagówsól i pieprz',
  ),
];
