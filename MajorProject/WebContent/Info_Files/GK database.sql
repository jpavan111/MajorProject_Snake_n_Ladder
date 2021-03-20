create database major_project_snake_n_ladder;

use major_project_snake_n_ladder;

desc General_Knowledge;
select count(*) from General_Knowledge;
select * from General_Knowledge;

create table General_Knowledge (Id int(3) primary key  , 
Stage varchar(1) not null,
Question varchar(500) not null,
Option_1 varchar(200) not null,
Option_2 varchar(200) not null,
Option_3 varchar(200) not null,
Option_4 varchar(200)not null,
Answer varchar(200) not null
);

-- ======================== Easy ========================
insert into General_Knowledge values("1","E","Select consonants within the English alphabet?","100","40","21","26","21");
insert into General_Knowledge values("2","E","What grows quicker—hair or toenails?","Hair","nails","legs","hands","Hair");
insert into General_Knowledge values("3","E","Which is the tallest mountain in the world?","MountMcom","Mount Everest","Kalsubai","Himalayas","Mount Everest");
insert into General_Knowledge values("4","E","Which planet is known as the Red Planet?","Earth","Mars","saturn","Milkway","Mars");
insert into General_Knowledge values("5","E","Which two parts of the body continue to grow for your entire life?","Nose and ears","Tibetan Plateau","MaharashtrianPlateau","SouthPla","Nose and ears");
insert into General_Knowledge values("6","E","What is the next number in the following sequence– 7, 14, 21, 28?","35","29","30","i am weak in maths","35");
insert into General_Knowledge values("7","E","How many zeros are there in one billion?","9","11","10","13","9");
insert into General_Knowledge values("8","E","What does friction produce?","Heat","Spark","Nothing","BothA&B","Heat");
insert into General_Knowledge values("9","E","What is the total distance around a figure?","Circumference of surface","Perimeter of a surface","Diagonal to the durface","Radius of surface","Perimeter of a surface");
insert into General_Knowledge values("10", "E","Who invented the letter zero?","Gagabhatta","Vibhishan","Aryabhatta","Newton","Aryabhatta");
insert into General_Knowledge values("11", "E","How many cards are there in a playing deck?","53","52","49","50","52");
insert into General_Knowledge values("12", "E","Numbers that can be divided only by 1 or themselves are called?","Whole Number","Duplex Number","Prime Number","Rational Number","Prime Number");
insert into General_Knowledge values("13", "E","What is the longest side of a right-angle triangle called?","Radius","Hypotaneous","Diameter","Median","Hypotaneous");
insert into General_Knowledge values("14", "E","Largest Mammal in the world?","Shark","Elephant","Rat","Blue Whale","Blue Whale");
insert into General_Knowledge values("15", "E","Which color symbolizes peace?","Pink","Green","White","Yellow","White");
insert into General_Knowledge values("16", "E","How many players are there in an ice hockey team?","Six Players","Seven Players","Five Players","Eight Players","Six Players");
insert into General_Knowledge values("17", "E","Who was the Father of the Indian Constitution?","A.P.J Abdul Kalam","Manmohan Singh","Dr. B. R. Ambedkar","Narendra Modi","Dr. B. R. Ambedkar");
insert into General_Knowledge values("18", "E","First Lady IPS officer in INDIA?","Rani Laxmi Bai","Kiran Bedi","Kagana Ranaut","Sudha Murthy","Kiran Bedi");
insert into General_Knowledge values("19", "E","Man with most trophies in cricket?","Mahendra Singh Dhoni","Saurav Gnaguly","Kapil Dev","Azharuddin","Mahendra Singh Dhoni");
insert into General_Knowledge values("20","E","Which famous children’s book has two characters named Tweedledum and Tweedledee?","Alice, Through the Looking-Glass by Lewis Carroll ","Tom and jerry","Cliford","Explore","Alice, Through the Looking-Glass by Lewis Carroll");

-- ======================== Medium ========================
insert into General_Knowledge values("21","M","Which of the following is not a metal?","gold","resin","glass","cu","resin");
insert into General_Knowledge values("22","M","What is used by the driver to determine the direction of running the car?","Steering wheel","Linkage","CrossBar","Radiator","Steering wheel");
insert into General_Knowledge values("23","M","__Is the temperature of the moon higher or lower during the day?","High","Higher","Low","Lower","Higher");
insert into General_Knowledge values("24","M","Which planet is the smallest?","Neptune","Mars","Mercury","Earth","Mercury");
insert into General_Knowledge values("25","M","“Number rules the Universe” Who said it?","Pythagoras","Archimedes","Charushila","BillGates","Pythagoras");
insert into General_Knowledge values("26","M","Which movie is based on Srinivasa Ramanujan?","The Man Who Knew Infinity","Dont know","Mirzapur","The Numbers","The Man Who Knew Infinity");
insert into General_Knowledge values("27","M","What is the name for the longest side of a right-angled triangle?","Hypotenues","Adjecent","i am weak at maths","Dont know","Hypotenues");
insert into General_Knowledge values("28", "M","What is the name of these sequences?0,1,1,2,3,5,8,13,21,34…………","Euclids sequence","Vaibhav sequence","Fibonacci sequence","Pythagoraus sequence","Fibonacci sequence");
insert into General_Knowledge values("29", "M","What is the shape of a brick?","Cuboid","Hexaoid","Paranoid","Octoid","Cuboid");
insert into General_Knowledge values("30", "M","Who is the Father of Computers?","James Camaroon","Charles Babbage","Lionardo De Caprio","Ratan Tata","Charles Babbage");
insert into General_Knowledge values("31", "M"," Which is the hardest naturally occurring substance on the Earth?","Brick","Diamond","Carbon","Silica","Diamond");
insert into General_Knowledge values("32", "M","Who was the first Prime Minister of India?","Rajendra Prasad","Jawaharlal Nehru","Lalu Prasad Yadav","Murarji Desai","Jawaharlal Nehru");
insert into General_Knowledge values("33", "M","How many wonders are there in the world?","Eight","Nine","seven","Ten","seven");
insert into General_Knowledge values("34", "M","Which is the tallest peak in the world?","K2 8611 m","Kangchenjunga 8586 m","Lhotse 851 m","Mount Everest 8848 m","Mount Everest 8848 m");
insert into General_Knowledge values("35", "M","Which first electrical item did Thomas Edison invent?","Light Bulb","Mobile","Paper","Electric Motor","Light Bulb");
insert into General_Knowledge values("36", "M","Fathometer is used to measure","Ocean Depth","Earthquake","Rainfall","Sound Intensity","Ocean Depth");
insert into General_Knowledge values("37", "M","Union Budget is always presented first in ________","The Lok Sabha","The Rajya Sabha","Joint Session of the Parliment","Meeting of the Union Cabinet","The Lok Sabha");
insert into General_Knowledge values("38", "M","What is the name of the golf course featured in the movie Caddyshack?","Bushwood Country Club","Indira Gandhi","Golf around world","No idea","Bushwood Country Club");
insert into General_Knowledge values("39", "M","Ivory Coast is located on which continent?","Africa","Bushwood Country Club","Golf around world","No idea","Africa");
insert into General_Knowledge values("40", "M","'To Sir With Love' was both a film and a hit song sung by whom?","LULU","Indira Gandhi","Golf around world","No idea","LULU");
insert into General_Knowledge values("41", "M","Which animal is also known as the wild dog from Australia?","Bushwood Country Club","Indira Gandhi","Golf around world","Dingo","Dingo");
insert into General_Knowledge values("42", "M","What toy does Arnold Schwarzenegger's son want in the movie 'Jingle All the Way'?","Bushwood Country Club","Turbo Man","Golf around world","Dingo","Turbo Man");
insert into General_Knowledge values("43", "M","How many seconds does an NBA team have to take a shot that hits the rim?","24 seconds","20 seconds","A minute","30seconds","24 seconds");
insert into General_Knowledge values("44","M","Which is the largest plateau in the world?","ChinaPlateau","Tibetan Plateau","MaharashtrianPlateau","SouthPla","Tibetan Plateau");
insert into General_Knowledge values("45","M","In which ocean did the famous Titanic sink in 1912— Pacific, North Atlantic, or the Mediterranean?","North Atlantic Ocean","Tibetan Plateau","MaharashtrianPlateau","SouthPla","North Atlantic Ocean");
insert into General_Knowledge values("46","M","What makes up (approx.) 80% of our brain’s volume?","Nose and ears","Water","MaharashtrianPlateau","SouthPla","MaharashtrianPlateau");
insert into General_Knowledge values("47","M","Which of these two lock horns in the stock market?","Bulls and bears","Trader","Bargainer","Stocker","Bulls and bears");
insert into General_Knowledge values("48","M","Water in plants is transported by","Xylem","Stem","leaves","flowers","Xylem");
insert into General_Knowledge values("49","M","What is not a component of chlorophyll?","Nitrogen","Calcium","leaves","flowers","Calcium");
insert into General_Knowledge values("50","M","Onion (Allium cepa)is a modified form of?","Stem","leaves","flower","photosynthesis","Stem");

-- ======================== Hard ========================
insert into General_Knowledge values("51","H","What is the botanical name of Tomato?","Solanum Lycopersicum","Solanum Lycopersicuum","Solanium Lycopersicum","Solanam Lycopersiicum","Solanum Lycopersicum");
insert into General_Knowledge values("52","H","What category of animal is an octopus?","Cephalopod","Sephalopod","Cefalopod","Solanam Lycopersiicum","Cephalopod");
insert into General_Knowledge values("53","H","Your blood type is determined by the genes you inherit from your parents?","True","False","Dont know","Maybe","True");
insert into General_Knowledge values("54","H","Common flowering plant studied to understand plant organization is?","Amaranthus","False","Dont know","Cephalopod","Amaranthus");
insert into General_Knowledge values("55","H","The part of the stem where the `leaf is attached?","Node","mud","Dont know","stem","Node");
insert into General_Knowledge values("56","H","What sensory organ of the human body consists of a visible part called the crown and unseen portion called the root?","Tooth","gums","Dont know","chicks","Tooth");
insert into General_Knowledge values("57","H","Which is the largest human cell??","Tooth","skin","Dont know","chicks","skin");
insert into General_Knowledge values("58","H","Who is widely considered to be the “Father of Mathematics?","Archimedes","sahil","vaibhav","Christopher Henry","Archimedes");
insert into General_Knowledge values("59","H","Which number is considered as Ramanujan Number?","1729","0000","111","0318","1729");
insert into General_Knowledge values("60","H","What is QAD?","Quod Erat Demonstrandum","Quartine at dadar","i am weak at maths","Dont know","Quartine at dadar");
insert into General_Knowledge values("61","H","In which number system, there is no symbol for zero?","Roman numbers","Roman Reign","No idea","May be first","Roman numbers");
insert into General_Knowledge values("62","H","What is the associative property applicable to?","Addition and multiplication","Addition","Multiplication","Addition and substraction","Addition and multiplication");
insert into General_Knowledge values("63","H","Where is lactobacillus found?","Curd","Crud","Honey","Beverages","Curd");
insert into General_Knowledge values("64", "H","Who is widely known to be the “Father of INDIAN NAVY”?","Lokmanya Tilak","Maharana Pratap","Chatrapati Shivaji Maharaj","Bajirao","Chatrapati Shivaji Maharaj");
insert into General_Knowledge values("65", "H","How many States and Union Territories India is made up of?","28 States and 7 Union Territories","28 States and 8 Union Territories","27 States and 8 Union Territories","29 States and 7 Union Territories","28 States and 8 Union Territories");
insert into General_Knowledge values("66", "H","Which is the most widely spoken language in the world?","English","Spanish","Sanskrit","Mandarin Chinese","Mandarin Chinese");
insert into General_Knowledge values("67", "H","Which country invented paper and gunpowder?","India","Nepal","China","Russia","China");
insert into General_Knowledge values("68", "H","Largest Forest on Earth:","Amazon Forest","Kakamega Forest","Coconedo Forest","Nilgiri Forest","Amazon Forest");
insert into General_Knowledge values("69", "H","B. C. Roy Award is given in the field of","Medicine","Music","Journalism","Environment","Medicine");
insert into General_Knowledge values("70", "H","In which year was Pulitzer Prize established?","1917","1918","1921","1947","1917");
insert into General_Knowledge values("71", "H","Longest River in world","Ganga","Yamuna","Nyle","Yanguste","Nyle");
insert into General_Knowledge values("72", "H","Gandhi Peace Prize for the year 2000 was awarded to the former President of South Africa along with","Grameen Bank of Bangladesh","Kakamega Forest","Coconedo Forest","Nilgiri Forest","Grameen Bank of Bangladesh");
insert into General_Knowledge values("73", "H","The first Indian to receive Nobel Prize in Literature was?","C V RAMAN","Kakamega Forest","Coconedo Forest","Nilgiri Forest","C V RAMAN");
insert into General_Knowledge values("74", "H","What decade is the hit single 'Mysterious Ways' by U2 from?","Nineties","Bhopal","AP","No idea","Nineties");
insert into General_Knowledge values("75", "H","Which state Government of India has instituted the Samman Award?","Madhya Pradesh","Bhopal","AP","No idea","Madhya Pradesh");
insert into General_Knowledge values("76", "H","Sharad Joshi Samman is awarded for","Satire and essay","Cartoon","Social Service","No idea","Satire and essay");
insert into General_Knowledge values("77", "H","In 1901, Nobel Prize was not given for?","Economics","Chemistry","Mathematics","No idea","Economics");
insert into General_Knowledge values("78", "H","Manav Seva Award has been instituted in the memory of?","Rajiv Gandhi","Indira Gandhi","Nehru","No idea","Rajiv Gandhi");
insert into General_Knowledge values("79", "H","The oldest dynasty still ruling in which country?","India","Iran","Japan","England","Japan");
insert into General_Knowledge values("80", "H","Which of the following is not an Endocrine Gland?","Thyroid","Spleen","Pituitary","Adrenal","Spleen");
insert into General_Knowledge values("81", "H","Kempegowda Festival was organized in which city ?","Hyderabad","Mumbai","Bangalore","Delhi","Delhi");
insert into General_Knowledge values("82", "H","The study of Heavenly bodies is called","Astronomy","Astrology","Astrophysics","Astronautics","Astronomy");
insert into General_Knowledge values("83", "H","What is the Study of human beauty called?","Argology","Kalology","Agrodtology","Oncology","Kalology");
insert into General_Knowledge values("84", "H","Who is known as Man of Blood and Iron ?","Napoleon","Bismarck","Ho cho Minh","Sir Walter Scott","Bismarck");
insert into General_Knowledge values("85", "H","The Saka Era was founded by ","Kadphises 1","Kanishka","Alexander","Menander","Kanishka");
insert into General_Knowledge values("86", "H","Who composed the Gayatri Mantra","Vishwamitra","Vashishta","Indra","Parikshit","Vishwamitra");
insert into General_Knowledge values("87", "H","13 - Chambered heart occurs in","Leech","Cockroach","Earthworm","Snail","Cockroach");
insert into General_Knowledge values("88", "H","Feroz Gandhi Award is associated with","Mediacal Research","Journalism","Preservvation of Wildlife","Parlimentory Debate","Journalism");
insert into General_Knowledge values("89", "H","Saraswati Samman is given annually for outstanding contribution to","Literatuure","Education","Fine Arts","Classical Music","Literatuure");
insert into General_Knowledge values("90", "H","Jesse Owens Global award is given in the field of","Literature","Journalism","Science","Sports","Sports");
insert into General_Knowledge values("91", "H","Founder of Spring Framework?","CHarles Babage","Cristiano Messi","Sir Ravindra Jadeja","Sir Rod Johnson","Sir Rod Johnson");
insert into General_Knowledge values("92", "H","Which of the following network protocols is described by GSM?","2G","3G","4G","5G","2G");
insert into General_Knowledge values("93", "H","Oncology is the study of?","Birds","Mammals","Cancer","Soil","Cancer");
insert into General_Knowledge values("94", "H","The inventor of printing press was?","Marshall McLuhan","Ts' ai Lun","Johann Guttenberg","Frederic Barbier","Johann Guttenberg");
insert into General_Knowledge values("95", "H","Who coined the term Biodiversity?","B. P. Singh","Karl Mobius","Walter G. Rosen","Sir A. G. Tansley","Walter G. Rosen");
insert into General_Knowledge values("96", "H","First World climate conference was organised in?","Carbon-di-oxide","Chlorofluorocarbon","Nitro us oxide","Methane","Carbon-di-oxide");
insert into General_Knowledge values("97", "H","Who was the father of Indian Space Programme?","Dr. Krishnaswami Kasturirangan","Dr. Vikram Ambalal Sarabhai","Dr. Satish Dhawan","Dr. Homi J. Bhabha","Dr. Vikram Ambalal Sarabhai");
insert into General_Knowledge values("98", "H","Which of the following is Academic Institute Satellite?","CARTOSAT-2B","KALPANA-1"," INSAT-2E","SATYABAMASAT","SATYABAMASAT");
insert into General_Knowledge values("99", "H","Which Geosynchronous Satellite Launch Vehicle was used by ISRO to launch Chandrayaan-2 space craft?","GSLV - MK III - M1","GSLV - MK II - M2","GSLV - MK IV - M8","GSLV - MKV - M4","GSLV - MK III - M1");
insert into General_Knowledge values("100", "H","SRSS-1 satellite was launched by which country?","India","Bhutan","Nepal","Bangladesh","Bhutan");