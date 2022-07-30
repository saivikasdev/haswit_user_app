class saved {
  final String image, category, title;
  final int id;

  saved({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<saved> saveddata = [
  saved(
    id: 1,
    title: "Tuples",
    category: "Flutter",
    image: "assets/images/work_1.png",
  ),
  saved(
    id: 2,
    title: "Drop down",
    category: "Flutter",
    image: "assets/images/work_2.png",
  ),
  saved(
    id: 3,
    title: "Images",
    category: "Flutter",
    image: "assets/images/work_3.png",
  ),
  saved(
    id: 4,
    title: "api handling",
    category: "Flutter",
    image: "assets/images/work_4.png",
  ),

];
