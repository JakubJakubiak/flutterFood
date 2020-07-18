class MenuFood {
  int id;
  String title;
  String description;
  String url;
  String fullDescription;

  MenuFood({
    this.id,
    this.title,
    this.description,
    this.url,
    this.fullDescription,
  });
}

List<MenuFood> locations = [
  MenuFood(
    id: 0,
    url: 'assets/cheese.jpg',
    title: 'Łosoś pieczony ze szparagami',
    description:
        'Czas przygotowania: 15 minut | Czas gotowania: 10 minut | Porcji: 2',
    fullDescription: 'Składniki 7',
  ),
  MenuFood(
    id: 1,
    url: 'assets/ketoScrambledEggs.jpg',
    title: 'Łosoś pieczony ze szparagami',
    description:
        'Czas przygotowania: 15 minut | Czas gotowania: 10 minut | Porcji: 2',
    fullDescription:
        'Składniki 750 g filetu z łososia 3 łyżki musztardy Dijon 30 g skórki wieprzowej 2 łyżki stołowe parmezanu 16 łodyżek szparagówsól i pieprz',
  ),
  MenuFood(
    id: 2,
    url: 'assets/spinach.jpg',
    title: 'Keto burgery',
    description:
        'Czas przygotowania: 10 minut | Czas gotowania: 12 minut | Porcji: 2',
    fullDescription:
        'Składniki 2 grzyby portobello 350 g mielonego mięsa wołowego 120 g tartego sera cheddar 30 g szpinaku 4 łyżki parmezanu',
  ),
  MenuFood(
    id: 3,
    url: 'assets/soyCutlet.jpg',
    title: 'kurczak w sosie alfredo',
    description:
        'Czas przygotowania: 5 minut | Czas gotowania: 20 minut | Porcji: 2',
    fullDescription:
        'Składniki 800 g piersi z kurczaka 1/4 szklanki śmietanki 36% 1/4 szklanki startego parmezanu 2 łyżki masła 200 g cukinii pieprz i sól do smaku',
  ),
  MenuFood(
    id: 4,
    url: 'assets/riceWithVegetables.jpg',
    title: 'Łosoś pieczony ze szparagami',
    description:
        'Czas przygotowania: 15 minut | Czas gotowania: 10 minut | Porcji: 2',
    fullDescription:
        'Składniki 750 g filetu z łososia 3 łyżki musztardy Dijon 30 g skórki wieprzowej 2 łyżki stołowe parmezanu 16 łodyżek szparagówsól i pieprz',
  ),
];
