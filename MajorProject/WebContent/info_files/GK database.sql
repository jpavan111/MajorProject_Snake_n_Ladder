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
insert into General_Knowledge values("51","M"," Which crop is sown on the largest area in India?","Rice"," Wheat","Maize","Sugarcane","Rice");
insert into General_Knowledge value ("52","M","Eritrea, which became the 182nd member of the United Nations in 1993, is on the continent of","Asia","Africa","Europe","Europe","Africa");
insert into General_Knowledge values("53","M","Which one of the following river flows between Vindhyan and Satpura ranges?","Narmada"," Mahanadi","Son","Netravati","Narmada");
insert into General_Knowledge values("54","M","The Central Rice Research Station is situated in?","Chennai","Cuttack","Bangalore","Quilon","Cuttack");
insert into General_Knowledge values("55","M","Who among the following wrote Sanskrit grammar?","Kalidasa"," Charak","Panini","Aryabhatt","Panini");
insert into General_Knowledge values("56","M","Which among the following headstreams meets the Ganges in last?","Alaknanda","Pindar","Mandakini","Bhagirathi","Bhagirathi");
insert into General_Knowledge values("57","M","The metal whose salts are sensitive to light is?","Zinc","Silver","Copper","Aluminum","Silver");
insert into General_Knowledge values("58","M","Patanjali is well known for the compilation of –","Yoga Sutra","Panchatantra","Brahma Sutra","Ayurveda","Yoga Sutra");
insert into General_Knowledge values("59","M","River Luni originates near Pushkar and drains into which one of the following?","Rann of Kachchh","Arabian Sea","Gulf of Cambay","Lake Sambhar","Rann of Kachchh");
insert into General_Knowledge values("60","M","Which one of the following rivers originates in Brahmagiri range of Western Ghats?","Pennar","Cauvery","Krishna","Tapti","Cauvery");
insert into General_Knowledge values("61","M","The country that has the highest in Barley Production?","China","India","Russia","France","Russia");
insert into General_Knowledge values("62","M","Tsunamis are not caused by","Hurricanes","Earthquakes","Undersea landslides","Volcanic eruptions"," Hurricanes");
insert into General_Knowledge values("63","M","Chambal river is a part of –","Sabarmati basin","Ganga basin","Narmada basin","Godavari basin","Narmada basin");
insert into General_Knowledge values("64","M","D.D.T. was invented by?","Mosley","Rudolf","Karl Benz","Dalton","Mosley");
insert into General_Knowledge values("65","M","Volcanic eruption do not occur in the","Baltic sea","Black sea","Caribbean sea","Caspian sea","Baltic sea");
insert into General_Knowledge values("66","M"," Indus river originates in –"," Kinnaur","Ladakh","Nepal","Tibet","Tibet");
insert into General_Knowledge values("67","M","The hottest planet in the solar system?","Mercury","Venus","Mars","Jupiter","Venus");
insert into General_Knowledge values("68","M","Where was the electricity supply first introduced in India –","Mumbai","Dehradun","Darjeeling","Chennai","Darjeeling");
insert into General_Knowledge values("69","M","Which one of the following ports is the oldest port in India?","Mumbai Port","Chennai Port","Kolkata Port","Vishakhapatnam Port","Chennai Port");
insert into General_Knowledge values("70","M","At which one of the following places do the rivers Alaknanda and Bhagirathi merge to form Ganga?","Devprayag","Rudra Prayag","Karnaprayag","Vishnuprayag","Devprayag");
insert into General_Knowledge values("71","M","Which of the following is not a nuclear power center?","Narora","Kota","Chamera","Kakrapara","Chamera");
insert into General_Knowledge values("72","M","Galileo was an Italian astronomer who","developed the telescope","discovered four satellites of Jupiter","discovered that the movement of pendulum produces a regular time","All of the above","All of the above");
insert into General_Knowledge values("73","M","Hitler party which came into power in 1933 is known as","Ku-Klux-Klan","Democratic Party","Labour Party","Nazi Party","Nazi Party");
insert into General_Knowledge values("74","M","Grand Central Terminal, Park Avenue, New York is the world’s","highest railway station","longest railway station","largest railway station","None of the above","largest railway station");
insert into General_Knowledge values("75","M","Friction can be reduced by changing from","rolling to sliding","sliding to rolling","dynamic to static","potential energy to kinetic energy","sliding to rolling");

-- ======================== Hard ========================
insert into General_Knowledge values("76","H","What is the botanical name of Tomato?","Solanum Lycopersicum","Solanum Lycopersicuum","Solanium Lycopersicum","Solanam Lycopersiicum","Solanum Lycopersicum");
insert into General_Knowledge values("77","H","What category of animal is an octopus?","Cephalopod","Sephalopod","Cefalopod","Solanam Lycopersiicum","Cephalopod");
insert into General_Knowledge values("78","H","Your blood type is determined by the genes you inherit from your parents?","True","False","Dont know","Maybe","True");
insert into General_Knowledge values("79","H","Common flowering plant studied to understand plant organization is?","Amaranthus","False","Dont know","Cephalopod","Amaranthus");
insert into General_Knowledge values("80","H","The part of the stem where the `leaf is attached?","Node","mud","Dont know","stem","Node");
insert into General_Knowledge values("81","H","What sensory organ of the human body consists of a visible part called the crown and unseen portion called the root?","Tooth","gums","Dont know","chicks","Tooth");
insert into General_Knowledge values("82","H","Which is the largest human cell??","Tooth","Skin","Dont know","Chicks","Skin");
insert into General_Knowledge values("83","H","Who is widely considered to be the “Father of Mathematics?","Archimedes","Ramanujan","Einstein","Christopher Henry","Archimedes");
insert into General_Knowledge values("84","H","Which number is considered as Ramanujan Number?","1729","0000","111","0318","1729");
insert into General_Knowledge values("85","H","What is QAD?","Quod Erat Demonstrandum","Quartine at dadar","Quality Development","None","Quartine at dadar");
insert into General_Knowledge values("86","H","In which number system, there is no symbol for zero?","Roman numbers","Roman Reign","Italic","Chinese","Roman numbers");
insert into General_Knowledge values("87","H","What is the associative property applicable to?","Addition and multiplication","Addition","Multiplication","Addition and substraction","Addition and multiplication");
insert into General_Knowledge values("88","H","Where is lactobacillus found?","Curd","Crud","Honey","Beverages","Curd");
insert into General_Knowledge values("89", "H","Who is widely known to be the “Father of INDIAN NAVY”?","Lokmanya Tilak","Maharana Pratap","Chatrapati Shivaji Maharaj","Bajirao","Chatrapati Shivaji Maharaj");
insert into General_Knowledge values("90", "H","How many States and Union Territories India is made up of?","28 States and 7 Union Territories","28 States and 8 Union Territories","27 States and 8 Union Territories","29 States and 7 Union Territories","28 States and 8 Union Territories");
insert into General_Knowledge values("91", "H","Which is the most widely spoken language in the world?","English","Spanish","Sanskrit","Mandarin Chinese","Mandarin Chinese");
insert into General_Knowledge values("92", "H","Which country invented paper and gunpowder?","India","Nepal","China","Russia","China");
insert into General_Knowledge values("93", "H","Largest Forest on Earth:","Amazon Forest","Kakamega Forest","Coconedo Forest","Nilgiri Forest","Amazon Forest");
insert into General_Knowledge values("94", "H","B. C. Roy Award is given in the field of","Medicine","Music","Journalism","Environment","Medicine");
insert into General_Knowledge values("95", "H","In which year was Pulitzer Prize established?","1917","1918","1921","1947","1917");
insert into General_Knowledge values("96", "H","Longest River in world","Ganga","Yamuna","Nyle","Yanguste","Nyle");
insert into General_Knowledge values("97", "H","Gandhi Peace Prize for the year 2000 was awarded to the former President of South Africa along with","Grameen Bank of Bangladesh","Kakamega Forest","Coconedo Forest","Nilgiri Forest","Grameen Bank of Bangladesh");
insert into General_Knowledge values("98", "H","The first Indian to receive Nobel Prize in Literature was?","C V RAMAN","Savitribai Phule","Dr.Radhakrishnan","None of above","C V RAMAN");
insert into General_Knowledge values("99", "H","What decade is the hit single 'Mysterious Ways' by U2 from?","Nineties","Bhopal","AP","No idea","Nineties");
insert into General_Knowledge values("100", "H","Which state Government of India has instituted the Samman Award?","Madhya Pradesh","Bhopal","AP","No idea","Madhya Pradesh");
insert into General_Knowledge values("101", "H","Sharad Joshi Samman is awarded for","Satire and essay","Cartoon","Social Service","No idea","Satire and essay");
insert into General_Knowledge values("102", "H","In 1901, Nobel Prize was not given for?","Economics","Chemistry","Mathematics","No idea","Economics");
insert into General_Knowledge values("103", "H","Manav Seva Award has been instituted in the memory of?","Rajiv Gandhi","Indira Gandhi","Nehru","No idea","Rajiv Gandhi");
insert into General_Knowledge values("104", "H","The oldest dynasty still ruling in which country?","India","Iran","Japan","England","Japan");
insert into General_Knowledge values("105", "H","Which of the following is not an Endocrine Gland?","Thyroid","Spleen","Pituitary","Adrenal","Spleen");
insert into General_Knowledge values("106", "H","Kempegowda Festival was organized in which city ?","Hyderabad","Mumbai","Bangalore","Delhi","Delhi");
insert into General_Knowledge values("107", "H","The study of Heavenly bodies is called","Astronomy","Astrology","Astrophysics","Astronautics","Astronomy");
insert into General_Knowledge values("108", "H","What is the Study of human beauty called?","Argology","Kalology","Agrodtology","Oncology","Kalology");
insert into General_Knowledge values("109", "H","Who is known as Man of Blood and Iron ?","Napoleon","Bismarck","Ho cho Minh","Sir Walter Scott","Bismarck");
insert into General_Knowledge values("110", "H","The Saka Era was founded by ","Kadphises 1","Kanishka","Alexander","Menander","Kanishka");
insert into General_Knowledge values("111", "H","Who composed the Gayatri Mantra","Vishwamitra","Vashishta","Indra","Parikshit","Vishwamitra");
insert into General_Knowledge values("112", "H","13 - Chambered heart occurs in","Leech","Cockroach","Earthworm","Snail","Cockroach");
insert into General_Knowledge values("113", "H","Feroz Gandhi Award is associated with","Mediacal Research","Journalism","Preservation of Wildlife","Parlimentory Debate","Journalism");
insert into General_Knowledge values("114", "H","Saraswati Samman is given annually for outstanding contribution to","Literature","Education","Fine Arts","Classical Music","Literature");
insert into General_Knowledge values("115", "H","Jesse Owens Global award is given in the field of","Literature","Journalism","Science","Sports","Sports");
insert into General_Knowledge values("116", "H","Founder of Spring Framework?","CHarles Babage","Cristiano Messi","Sir Ravindra Jadeja","Sir Rod Johnson","Sir Rod Johnson");
insert into General_Knowledge values("117", "H","Which of the following network protocols is described by GSM?","2G","3G","4G","5G","2G");
insert into General_Knowledge values("118", "H","Oncology is the study of?","Birds","Mammals","Cancer","Soil","Cancer");
insert into General_Knowledge values("119", "H","The inventor of printing press was?","Marshall McLuhan","Ts' ai Lun","Johann Guttenberg","Frederic Barbier","Johann Guttenberg");
insert into General_Knowledge values("120", "H","Who coined the term Biodiversity?","B. P. Singh","Karl Mobius","Walter G. Rosen","Sir A. G. Tansley","Walter G. Rosen");
insert into General_Knowledge values("121", "H","First World climate conference was organised in?","Carbon-di-oxide","Chlorofluorocarbon","Nitro us oxide","Methane","Carbon-di-oxide");
insert into General_Knowledge values("122", "H","Who was the father of Indian Space Programme?","Dr. Krishnaswami Kasturirangan","Dr. Vikram Ambalal Sarabhai","Dr. Satish Dhawan","Dr. Homi J. Bhabha","Dr. Vikram Ambalal Sarabhai");
insert into General_Knowledge values("123", "H","Which of the following is Academic Institute Satellite?","CARTOSAT-2B","KALPANA-1","INSAT-2E","SATYABAMASAT","SATYABAMASAT");
insert into General_Knowledge values("124", "H","Which Geosynchronous Satellite Launch Vehicle was used by ISRO to launch Chandrayaan-2 space craft?","GSLV - MK III - M1","GSLV - MK II - M2","GSLV - MK IV - M8","GSLV - MKV - M4","GSLV - MK III - M1");
insert into General_Knowledge values("125", "H","SRSS-1 satellite was launched by which country?","India","Bhutan","Nepal","Bangladesh","Bhutan");
insert into General_Knowledge values("126", "H","Which of the following personalities gave ‘The Laws of Heredity’?","Robert Hook","G.J. Mendel","Charles Darwin","William Harvey","G.J. Mendel");
insert into General_Knowledge values("127", "H","Garampani sanctuary is located at","Junagarh, Gujarat","Diphu, Assam","Kohima, Nagaland","Gangtok, Sikkim","Diphu, Assam");
insert into General_Knowledge values("128", "H","For which of the following disciplines is Nobel Prize awarded?","Physics and Chemistry","Physiology or Medicine","Literature, Peace and Economics","All of the above","All of the above");
insert into General_Knowledge values("129", "H","The capital of Uttarakhand is….","Masoorie","Dehra Dun","Nainital","None of these","Dehra Dun");
insert into General_Knowledge values("130", "H","In which state has the largest area?","Maharashtra","Madhya Pradesh","Uttar Pradesh","Rajasthan","Rajasthan");
insert into General_Knowledge values("131", "H","Geet Govind is a famous creation of ……","Bana Bhatt","Kalidas","Jayadev","Bharat Muni","Jayadev");
insert into General_Knowledge values("132", "H","The Maratha and The Kesri were the two main newspapers which were started by the following people?","Lala Lajpat Rai","Gopal Krishna Gokhale","Bal Gangadhar Tilak","Madan Mohan Malviya","Bal Gangadhar Tilak");
insert into General_Knowledge values("133", "H","When did the World Trade Organization come into existence?","1992","1993","1994","1995","1995");
insert into General_Knowledge values("134", "H","Exposure to sunlight helps a person to improve his health because","the infrared light kills bacteria in the body","resistance power increases","the pigment cells in the skin get stimulated and produce a healthy tan","the ultraviolet rays convert skin oil into Vitamin D","the ultraviolet rays convert skin oil into Vitamin D");
insert into General_Knowledge values("135", "H","Which state has the largest population?","Uttar Pradesh","Maharashtra","Bihar","Andra Pradesh","Uttar Pradesh");
insert into General_Knowledge values("136", "H","When was the war of american independence?","1770","1772","1774","1776","1776");
insert into General_Knowledge values("137", "H","For Olympic and World tournaments, the basketball court has dimensions","26 m x 14 m","28 m x 15 m","27 m x 16 m","28 m x 16 m","28 m x 15 m");
insert into General_Knowledge values("138", "H","Panini was……","a Greek philosopher","an Indian astronomer and famous mathematician","a Sanskrit grammarian of Vedic times","great poet of ancient times","a Sanskrit grammarian of Vedic times");
insert into General_Knowledge values("139", "H","Under which of the following trees, Buddha got enlightment?","Ficus benghalensis","Ficus religiosa","Ficus microcarpa","Ficus elastica","Ficus religiosa");
insert into General_Knowledge values("140", "H","Which of the following is the world’s largest and deepest ocean?","Arctic","Atlantic","Pacific","Indian","Pacific");
insert into General_Knowledge values("141", "H","World Red Cross and Red Crescent Day are celebrated every year","May 8","May 18","June 8","June 18","May 8");
insert into General_Knowledge values("142", "H","The literacy rate of India is…","57.86%","61.34%","63.98%","65.38%","65.38%");
insert into General_Knowledge values("143", "H"," Which Indian state has the least literacy rate?","Bihar","Rajasthan","Arunachal Pradesh","Orissa","Bihar");
insert into General_Knowledge values("144", "H","When was SAARC formed?","1982","1984","1985","1986","1985");
insert into General_Knowledge values("145", "H","Which of the following personalities is considered to be the originator of the Sankhya philosophy?","Bharat Muni","Kapil Muni","Adi Shankaracharya","Agastya Rishi","Kapil Muni");
insert into General_Knowledge values("146", "H","Which of the following is not a member of the European Union?","Greece","Finland","Norway","United Kingdom","Norway");
insert into General_Knowledge values("147", "H","The fire temple is the place of worship of which of the following religions?","Taoism","Judaism","Zoroastrianism (Parsi Religion)","Shintoism","Zoroastrianism (Parsi Religion)");
insert into General_Knowledge values("148", "H","Who among the following celebrities of India is the sole winner of a special Oscar in the history of Indian cinema?","Mrinal Sen","Shyam Bengal","Satyajit Ray","Mira Nair","Satyajit Ray");
insert into General_Knowledge values("149", "H","This river is also called Ganga of South?","Godavari","Krishna","Cauvery","None of these","Cauvery");
insert into General_Knowledge values("150", "H","Film and TV institute of India is located at","Pune (Maharashtra)","Rajkot (Gujarat)","Pimpri (Maharashtra)","Perambur (Tamilnadu)","Pune (Maharashtra)");