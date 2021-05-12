# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.last
suit_objects = [
      { name: "Lapel", suit_type: "Slim Fit Suit", color: Faker::Color.color_name, size: 'Small', price: 123.45, description: "Comfortable in feel and unfettered in design, this suit style provides breathability without resorting to a loose or unkempt aesthetic–they don’t call it “classic” for nothing", imageUrl: "https://source.unsplash.com//YGJ9vfuwyUg" },
      { name: "Classic Fit", suit_type: "Classic Fit Suit", description: "Well trimmed out man's suit with a narrow chest. Suits all body types, true to the body's contours. Well defined sleekness downwards.", color: Faker::Color.color_name, size: "Small", price: 100.45, imageUrl: "https://source.unsplash.com//b0JkuklxYv8" },
      { name: "Taxido", suit_type: "Modern Fit Suit",  description: "These types of suits for men hover squarely in the realm between slim fit and a classic fit. It thereby delivers a tight look with breathing room to spare.", color: Faker::Color.color_name, size: "Small", price: 95, imageUrl: "https://source.unsplash.com//SZoTel1Y4qc" },
      { name: "Notch Lapel", suit_type: "Notch Lapel Suit",  description: " mainstay on single-breasted jackets, and arguably the most common type of suit lapel, the notch lapel is defined by a visible indent at the spot where the collar meets the lapel.", color: Faker::Color.color_name, size: "Medium", price: 90.45, imageUrl: "https://source.unsplash.com//vdjKkkO9PrY" },
      { name: "Shawl Lapel", suit_type: "Shawl Lapel Suit",  description: "One look at a shawl lapel and its smooth, uninterrupted lining, and you’re already picturing an elegant black-tie affair. That’s because this type of suit lapel is more or less exclusively found on formal wear like tuxedos.", color: Faker::Color.color_name, size: "Small", price: 130, imageUrl: "https://source.unsplash.com//qi2cD5oR_fE" },
      { name: "Peak Lapel", suit_type: "Peak Lapel Suit",  description: "A stylish upgrade to the notch lapel, the peak lapel has the top lapel edges facing upward at sharp angles immediately below the collar.", color: Faker::Color.color_name, size: "Medium", price: 180.45, imageUrl: "https://source.unsplash.com/collection//9438807/gentleman" },
      { name: "Single Breasted", suit_type: "Single Breasted Suit",  description: "Among types of men’s suits, the single-breasted suit is the most ubiquitous. The easiest way to spot one is to look for the inclusion of either one, two or three buttons along the seam.", color: Faker::Color.color_name, size: "Small", price: 200.45, imageUrl: "https://source.unsplash.com//8XGMFQqQs7Q" },
      { name: "Double Breasted", suit_type: "Double Breasted Suit",  description: "the double-breasted suit includes additional buttons on either side of the jacket for aesthetic purposes.", color: Faker::Color.color_name, size: "Small", price: 100, imageUrl: "https://source.unsplash.com//qnU-UR0o5X8" },
      { name: "Unstructured Blazer", suit_type: "Unstructured Blazer",  description: "By removing the interior padding, the unstructured blazer breaks free from conformity and constraint to deliver a soft fit and somewhat laid back aesthetic.", color: Faker::Color.color_name, size: "Small", price: 190.98, imageUrl: "https://source.unsplash.com//TTPMpLl_2lc" },
      { name: "Patch Pocket Blazer", suit_type: "Patch Pocket Blazer",  description: "A patch pocket is one that’s been made from a separate piece of cloth and then sewn on to the outside of your sports jacket or blazer.", color: Faker::Color.color_name, size: "Small", price: 210.50, imageUrl: "https://source.unsplash.com//Deg_jGchsuA" },
      { name: "Single Vent.", suit_type: "Single Vent Suit",  description: "The vent is that small slit you notice on the backside of a blazer or jacket. When the vent is cut up the middle, it’s known as a centre vent.", color: Faker::Color.color_name, size: "Small", price: 100.45, imageUrl: "https://source.unsplash.com//dgOJDAv96s8" },
      { name: " Double Vent", suit_type: " Double Vent Suit",  description: "As the name implies, side vents cut the slit on both sides to keep the jacket from parting or bunching when you put your hands in your pockets or take a seat.", color: Faker::Color.color_name, size: "Small", price: 300.13, imageUrl: "https://source.unsplash.com//ZHmES480_XE" },
      { name: "No Vent", suit_type: "No Vent Suit",  description: "Popular in Italy, the no vent style suit offers elegant style and a custom fit. However, without any vents, the jacket itself is more prone to creasing or bunching when you put your hands in your pockets or sit down.", color: Faker::Color.color_name, size: "Small", price: 134.45, imageUrl: "https://source.unsplash.com//Ws4wd-vJ9M0" },
      { name: "Flat Front Pants", suit_type: "Flat Front Pants",  description: "A standard among men’s pants, flat front pants are pretty much what they sound like. That is, the fabric lies flat at the front and delivers a slim, tight fit.", color: Faker::Color.color_name, size: "Small", price: 200, imageUrl: "https://source.unsplash.com//Pn0XP2Klbcw" },
      { name: "Cuffed Pants", suit_type: "Cuffed Pants",  description: "When it comes to the suit trouser styles, they’ll either be hemmed or cuffed at the bottom. Hemmed means the bottom fabric is turned up on the inside, while cuffed means the bottom fabric is turned up on the outside.", color: Faker::Color.color_name, size: "Small", price: 100.45, imageUrl: "https://source.unsplash.com//SwOvGPVhdcM" }
]

suit_objects.each do |suit|
  user.suits.create(suit);
end

