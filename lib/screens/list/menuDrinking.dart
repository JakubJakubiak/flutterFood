class MenuDrinking {
  int id;
  String url;
  String title;
  String description;
  String listDescription;
  String fullDescription;

  MenuDrinking({
    this.id,
    this.url,
    this.title,
    this.description,
    this.listDescription,
    this.fullDescription,
  });
}

List<MenuDrinking> drinkings = [
  MenuDrinking(
    id: 0,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20190406_204841.jpg',
    title: 'Jogurt kiwi ',
    description: 'Czas przygotowania: 10 minut',
    listDescription: '150 g jogurtu naturalnego\n 1 kiwi',
    fullDescription: 'Miksujemy i gotowe.',
  ),
  MenuDrinking(
    id: 1,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20190424_131646.jpg',
    title: 'Jourt truskawkowy',
    description: 'Czas przygotowania: 10 minut',
    listDescription: 'truskawki 70 dag\n maślanka ok 700 ml\n cukier 2-3 łyżki',
    fullDescription: 'Miksujemy i gotowe.',
  ),
];
