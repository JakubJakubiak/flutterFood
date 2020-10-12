class MenuFood {
  int id;
  String url;
  String title;
  String description;
  String listDescription;
  String fullDescription;

  MenuFood({
    this.id,
    this.url,
    this.title,
    this.description,
    this.listDescription,
    this.fullDescription,
  });
}

List<MenuFood> locations = [
  MenuFood(
    id: 0,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20190210_114048.jpg',
    title: 'Kotlety Sojowe',
    description: 'Czas przygotowania: 30 minut',
    listDescription:
        ' 2 łyżeczki curry\n 2 łyżeczki czarnego pieprzu\n 2 łyżki oleju\n Sos sojowy Tamari\n mąka kukurydziana\n woda',
    fullDescription:
        'Gotujemy kotlety w wodzie z sosem sojowym, odrobiną curry i czarnego pieprzu, około 5 min, tak długo, aż zmiękną. Wylewamy na durszlak do ostygnięcia. Dalej postępujemy zależnie od przepisu. Smażymy na oleju na złoty kolor kotlety odsączone z wody, skropione sosem sojowym, posypane pieprzem oraz curry.',
  ),
  MenuFood(
    id: 1,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20190420_112335.jpg',
    title: 'Jajka Sadzone',
    description: 'Czas przygotowania: 15 minut',
    listDescription: ' 3 jaka\n ziemniaki\n szczypiorek',
    fullDescription: 'Jajka położyć na oleju',
  ),
  MenuFood(
    id: 2,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20190518_115226.jpg',
    title: 'Keto burgery',
    description: 'Czas przygotowania: 30 minut',
    listDescription:
        ' 2 łyżeczki curry\n 2 łyżeczki czarnego pieprzu\n 2 łyżki oleju\n Sos sojowy Tamari\n mąka kukurydziana\n brokuł\n woda',
    fullDescription:
        'Gotujemy kotlety w wodzie z sosem sojowym, odrobiną curry i czarnego pieprzu, około 5 min, tak długo, aż zmiękną. Wylewamy na durszlak do ostygnięcia. Dalej postępujemy zależnie od przepisu. Smażymy na oleju na złoty kolor kotlety odsączone z wody, skropione sosem sojowym, posypane pieprzem oraz curry.',
  ),
  MenuFood(
    id: 3,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20200222_124936.jpg',
    title: 'Sałatka',
    description: 'Czas przygotowania: 5 minut',
    listDescription: 'sałata\n słonecznik\n papryka\n pomidor\n olej',
    fullDescription:
        'Uprażyć słonecznik na oleju pokroić składnik wymieszać i zalać olejem.',
  ),
  MenuFood(
    id: 4,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20200321_153323.jpg',
    title: 'Jajko z cukinią',
    description: 'Czas przygotowania: 15 minut',
    listDescription: ' jajako\n zemniaki\n olej\n cukinia',
    fullDescription:
        'Jajko smażyć na oleju następnie dorzucić z cukinie i podać na talerz',
  ),
  MenuFood(
    id: 5,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/20200419_121350.jpg',
    title: 'Serowo brokułowe spaghetti',
    description: 'Czas przygotowania: 40 minut',
    listDescription: ' makaron\n brokuł\n ser\n kurczak\n olej',
    fullDescription:
        'Wlać 300ml mleka dodać brokuła i wcześniej usmażonego kurczaka mierząc. Podczas mieszania dodać 100g ser żółty oraz 100g białego naj lepiej tłusty, oraz oleju koksowego aż do uzyskania ciągliwej masy. Następnie nałożyć i zjeść.',
  ),
  MenuFood(
    id: 6,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/cheese.jpg',
    title: 'Serowo brokułowe danie',
    description: 'Czas przygotowania: 40 minut',
    listDescription: ' olej\n brokuł\n ser\n kurczak',
    fullDescription:
        'Wlać 300ml mleka dodać brokuła i wcześniej usmażonego kurczaka mierząc. Podczas mieszania dodać 100g ser żółty oraz 100g białego naj lepiej tłusty, oraz oleju koksowego aż do uzyskania ciągliwej masy. Następnie nałożyć i zjeść.',
  ),
  MenuFood(
    id: 7,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/ketoScrambledEggs.jpg',
    title: 'Serowa jajecznica / Pyszna Świniatta',
    description:
        'Czas przygotowania: 15 minut\nKCAL: 1918  B: 88,7  W: 8,3  T: 170',
    listDescription:
        ' 5 jaj\n 100g boczku\n 50g kabanosów\n 100g śmietany 30%\n 100g sera żółtego\n 20g masła klarowanego',
    fullDescription:
        'Jaja do gara razem z przyprawami, śmietanom, serem i wybełtać. Następnie klarowane masło na patelnie razem ze świnką. Dorzuci, pomidora papryki co tam chcemy. I na koniec zwartość z garnka wlewamy i mieszamy. No i jemy.',
  ),
  MenuFood(
    id: 8,
    url:
        'https://ipfs.fleek.co/ipfs/QmaeiVKUQQhBAPyAMALL5dWr1C5271bNXWDmmxvuWPctYX/imageFood/spinach.jpg',
    title: 'Makaron ze szpinakiem',
    description: 'Czas przygotowania: 15 minut',
    listDescription:
        ' 150 g makaronu\n 1/2 cebuli\n 2 ząbki czosnku\n 1 łyżka oliwy\n 1/2 łyżki masła\n 150 g szpinaku\n 1/3 szklanki śmietanki 30%\n 1/3 szklanki tartego parmezanu',
    fullDescription:
        'Makaron ugotować al dente w osolonej wodzie. Szpinak opłukać i odcedzić. Na patelni na oliwie i maśle zeszklić pokrojoną w kosteczkę cebulę (ok. 5 - 7 minut). Doprawić solą, dodać przeciśnięty przez praskę czosnek i smażyć jeszcze przez ok. 2 minuty. Dodać szpinak i mieszając podgrzewać przez ok. 1 minutę aż zwiędnie. Wlać śmietankę, doprawić świeżo zmielonym pieprzem i solą, całość zagotować. Dodać odcedzony makaron i wymieszać. Połączyć z 1/3 ilości sera, resztę wykorzystać do posypania makaronu.',
  ),
];
