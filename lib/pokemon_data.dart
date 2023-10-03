class PokemonData {
  String name;
  String image;
  List<String> type;
  List<String> weakness;
  List<String> prevEvolution;
  List<String> nextEvolution;
  String wikiUrl;
  bool isFavorite;

  PokemonData({
    required this.name,
    required this.image,
    required this.type,
    required this.weakness,
    required this.prevEvolution,
    required this.nextEvolution,
    required this.wikiUrl,
    required this.isFavorite,
  });
}

var listPokemon = [
  PokemonData(
    name: "Bulbasaur",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/001.jpg",
    type: ["Grass", "Poison"],
    weakness: ["Fire", "Ice", "Flying", "Psychic"],
    prevEvolution: [],
    nextEvolution: ["Ivysaur", "Venusaur"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Bulbasaur",
    isFavorite: false,
  ),
  PokemonData(
    name: "Ivysaur",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/002.jpg",
    type: ["Grass", "Poison"],
    weakness: ["Fire", "Ice", "Flying", "Psychic"],
    prevEvolution: ["Bulbasaur"],
    nextEvolution: ["Venusaur"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Ivysaur",
    isFavorite: true,
  ),
  PokemonData(
    name: "Venusaur",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/003.jpg",
    type: ["Grass", "Poison"],
    weakness: ["Fire", "Ice", "Flying", "Psychic"],
    prevEvolution: ["Bulbasaur", "Ivysaur"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Venusaur",
    isFavorite: false,
  ),
  PokemonData(
    name: "Charmander",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/004.jpg",
    type: ["Fire"],
    weakness: ["Water", "Ground", "Rock"],
    prevEvolution: [],
    nextEvolution: ["Charmeleon", "Charizard"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Charmander",
    isFavorite: true,
  ),
  PokemonData(
    name: "Charmeleon",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/005.jpg",
    type: ["Fire"],
    weakness: ["Water", "Ground", "Rock"],
    prevEvolution: ["Charmander"],
    nextEvolution: ["Charizard"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Charmeleon",
    isFavorite: false,
  ),
  PokemonData(
    name: "Charizard",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/006.jpg",
    type: ["Fire", "Flying"],
    weakness: ["Water", "Electric", "Rock"],
    prevEvolution: ["Charmander", "Charmeleon"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Charizard",
    isFavorite: true,
  ),
  PokemonData(
    name: "Squirtle",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/007.jpg",
    type: ["Water"],
    weakness: ["Electric", "Grass"],
    prevEvolution: [],
    nextEvolution: ["Wartortle", "Blastoise"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Squirtle",
    isFavorite: true,
  ),
  PokemonData(
    name: "Wartortle",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/008.jpg",
    type: ["Water"],
    weakness: ["Electric", "Grass"],
    prevEvolution: ["Squirtle"],
    nextEvolution: ["Blastoise"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Wartortle",
    isFavorite: false,
  ),
  PokemonData(
    name: "Blastoise",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/009.jpg",
    type: ["Water"],
    weakness: ["Electric", "Grass"],
    prevEvolution: ["Squirtle", "Wartortle"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Blastoise",
    isFavorite: false,
  ),
  PokemonData(
    name: "Caterpie",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/010.jpg",
    type: ["Bug"],
    weakness: ["Fire", "Flying", "Rock"],
    prevEvolution: [],
    nextEvolution: ["Metapod", "Butterfree"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Caterpie",
    isFavorite: false,
  ),
  PokemonData(
    name: "Metapod",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/011.jpg",
    type: ["Bug"],
    weakness: ["Fire", "Flying", "Rock"],
    prevEvolution: ["Caterpie"],
    nextEvolution: ["Butterfree"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Metapod",
    isFavorite: false,
  ),
  PokemonData(
    name: "Butterfree",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/012.jpg",
    type: ["Bug", "Flying"],
    weakness: ["Fire", "Electric", "Ice", "Flying", "Rock"],
    prevEvolution: ["Caterpie", "Metapod"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Butterfree",
    isFavorite: true,
  ),
];
