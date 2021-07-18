class Destination {
  String name;
  String image;
  String description;
  int rating;

  Destination({this.name, this.image, this.description, this.rating});
}

List<Destination> destinationList = [
  Destination(
    name: "Goa",
    image:
        "https://st3.depositphotos.com/18428194/32746/i/1600/depositphotos_327468620-stock-photo-panaji-india-december-15-2019.jpg",
    description:
        '''India's smallest state is known for its endless beaches, nightlife, seafood, and world-heritage listed architecture. The yellow houses with purple doors, ochre coloured mansions and oyster shell windows is what completes the kaliedoscope of Goan architecture.''',
    rating: 5,
  ),
  Destination(
    name: "Varanasi",
    image:
        "https://st.depositphotos.com/1007607/3957/i/950/depositphotos_39573987-stock-photo-hindu-priests-performs-religious-ganga.jpg",
    description:
        '''This is one of the world's oldest continually inhabited cities, and one of the holiest in Hinduism. Pilgrims come to the Ganges here to wash away sins in the sacred waters, to cremate their loved ones, or simply to die here, hoping for liberation from the cycle of rebirth.''',
    rating: 5,
  ),
  Destination(
    name: "Lakshwadeep",
    image:
        "https://curlytales.com/wp-content/uploads/2019/09/Kalpeni-Island.png",
    description:
        '''Lakshadweep, the group of 36 islands is known for its exotic and sun-kissed beaches and lush green landscape. The name Lakshadweep in Malayalam and Sanskrit means ‘a hundred thousand islands’.''',
    rating: 5,
  ),
  Destination(
    name: "Mysore",
    image:
        "https://st3.depositphotos.com/26035532/32828/i/1600/depositphotos_328281708-stock-photo-mysore-palace-in-mysore-karnataka.jpg",
    description:
        '''The historic settlement of Mysuru is famed for its glittering royal heritage and magnificent monuments and buildings. Its World Heritage–listed palace brings most travellers here, but also do its deeply atmospheric bazaar district replete with spice stores and incense stalls.''',
    rating: 5,
  ),
  Destination(
    name: "Mumbai",
    image:
        "https://image.shutterstock.com/image-photo/gateway-india-sunrise-beautiful-reflections-600w-1246224580.jpg",
    description:
        '''Mumbai takes its name from the local goddess Mumba Devi - or Parvati, the consort of Shiva, whose temple once stood in what is now the southeastern section of the city. The country's financial hub is famous for its diverse population and social extremes living next to each other.''',
    rating: 5,
  ),
  Destination(
    name: "Sikkim",
    image:
        "https://st3.depositphotos.com/1001071/19585/i/1600/depositphotos_195856196-stock-photo-beautiful-aerial-view-gangtok-city.jpg",
    description:
        '''Sikkim was its own mountain kingdom till 1975 and still retains a very distinctive personality. The meditative, mural-filled traditional monasteries of Tibetan Buddhism coexist with Hindu shrines of the ever-growing Nepali community.''',
    rating: 5,
  ),
  Destination(
    name: "Kochi",
    image:
        "https://st.depositphotos.com/1000528/2547/i/950/depositphotos_25476079-stock-photo-chinese-fishnets-on-sunset-kochi.jpg",
    description:
        '''Kochi has been drawing traders, explorers and travellers to its shores for over 600 years. Nowhere else in India could you find such an intriguing mix: giant Chinese fishing nets, a 450-year-old synagogue, ancient mosques, Portuguese- and Dutch-era houses. ''',
    rating: 5,
  ),
];

class Category {
  String name;
  Category({this.name});
}

List<Category> categoryList = [
  Category(name: "Beaches"),
  Category(name: "Hill Stations"),
  Category(name: "Temple Towns"),
  Category(name: "Cities"),
  Category(name: "Pilgrim Yatra"),
];
