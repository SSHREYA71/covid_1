class SliderModel{

  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagePath){
    imagePath = getImagePath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}

List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath('assets/reminder.png');
  sliderModel.setTitle('Get Notified');
  sliderModel.setDesc('Regular reminders for washing your hands, wearing masks and get notified whenever entering a contaminated area');
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setImageAssetPath('assets/travel_history.png');
  sliderModel.setTitle('Have To go-out for that Important Work');
  sliderModel.setDesc("Don't Worry, we got you covered, go out if you really need to and we will save your travel history for 2weeks!!!");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setImageAssetPath('assets/social_distancing.png');
  sliderModel.setTitle('Avoid Close Contact');
  sliderModel.setDesc('Keep your distance from others to protect them from getting sick too');
  slides.add(sliderModel);

  sliderModel= new SliderModel();

  //4
  sliderModel.setImageAssetPath('assets/stay_at_home.png');
  sliderModel.setTitle('Stay at Home');
  sliderModel.setDesc('Staying at home will help control the spread of the virus to friends, the wider community');
  slides.add(sliderModel);

  return slides;

}