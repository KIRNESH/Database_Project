Insert into user
VALUES
("u1","Abhishek", "12344569", "http://www.flickr.com/photos/Abhishek"),
("u2","Rahul", "74589512", "http://www.flickr.com/photos/Rahul"),
("u3","Mohak", "89546235", "http://www.flickr.com/photos/Mohak"),
("u4","Kirnesh", "56412589", "http://www.flickr.com/photos/Kirnesh"),
("u5","Mithelesh", "78653215", "http://www.flickr.com/photos/Mithelesh"),
("u6","Ranita", "65983256", "http://www.flickr.com/photos/Ranita"),
("u7","Ema", "12344569", "http://www.flickr.com/photos/Ema"),
("u8","Abhishek", "12344569", "http://www.flickr.com/photos/Abhishek1995"),
("u9","Jayendra", "23698541", "http://www.flickr.com/photos/Jayendra"),
("u10","Nivedita", "54369852", "http://www.flickr.com/photos/Nivedita");

Insert into Album
VALUES
("a1","Partying in Goa", "2015-08-13", "Fun-time", "u2"),
("a2","Incredible India", "2014-03-23", "Jodhpur trip", "u3"),
("a3","DBMS", "2016-07-20", "#First Lecture", "u6"),
("a4","Photoshoot", "2016-02-15", "New Movie release", "u7"),
("a5","Rafting", "2014-04-13", "Done first time", "u5"),
("a6","Bike Trip", "2015-12-19", "Amazing Experience", "u3"),
("a7","Birthday 2k16", "2016-05-20", "Turned 21", "u4"),
("a8","Outing with friends", "2012-03-25", "enjoyed a lot", "u10"),
("a9","First day at IIT", "2015-08-20", "Wonderful campus", "u2"),
("a10","Wonderful Nature", "2016-04-23", "Mesmerising", "u9"),
("a11","My Paintings","2014-09-14","Classical Art", "u1");

Insert into Photo
VALUES
("p1", "2015-07-18", "Public", "Any Flickr member", "", "u1"),
("p2", "2013-04-19", "Public", "Friends & Family", "", "u5"),
("p3", "2016-08-11", "Friends", "People you follow", "", "u2"),
("p4", "2015-09-16", "Public", "Public", "", "u3"),
("p5", "2016-08-21", "Private", "Only you", "", "u5"),
("p6", "2013-04-18", "Public", "Friends & Family", "", "u8"),
("p7", "2015-02-28", "Public", "Only you", "", "u2"),
("p8", "2016-10-30", "Friends & Family", "Friends & Family", "", "u1"),
("p9", "2016-12-31", "Public", "Any Flickr member", "", "u7"),
("p10", "2016-10-30", "Private", "Only you","", "u9"),
("p11", "2015-07-18", "Family", "Only you", "", "u6"),
("p12", "2016-01-04", "Public", "Any Flickr member", "", "u4"),
("p13", "2013-07-09", "Private", "Only you", "", "u3"),
("p14", "2016-05-07", "Friends", "Friends &amp; Family", "", "u9"),
("p15", "2015-06-24", "Public", "Only you", "", "u10");

Insert into Follows
VALUES
("u1","u3"),
("u1", "u8"),
("u5", "u7"),
("u8", "u3"),
("u3", "u9"),
("u5", "u9"),
("u7", "u6"),
("u8", "u4"),
("u2", "u7"),
("u6", "u8");

Insert into Followed_By
VALUES
("u3","u1"),
("u8", "u1"),
("u7", "u5"),
("u3", "u8"),
("u9", "u3"),
("u9", "u5"),
("u6", "u7"),
("u4", "u8"),
("u7", "u2"),
("u8", "u6");

Insert into GroupFlickr
VALUES
("g1", "Machau Meta", "2013-07-20"),
("g2", "DBMS-2016", "2016-07-18"),
("g3", "Weekenders Outdoor Camping & Trekking", "2014-08-11");

Insert Into Belongs_to_Album(Album_ID,Photo_ID)
VALUES
("a1", "p3"),
("a2", "p4"),
("a3", "p11"),
("a4", "p9"),
("a5", "p5"),
("a6", "p13"),
("a7", "p12"),
("a8", "p15"),
("a9", "p7"),
("a10", "p14"),
("a11", "p8");

Insert into Member(Member_Type,User_ID,Group_ID)
VALUES
("Admin", "u5", "g3"),
("Member", "u3", "g2"),
("Member", "u6", "g3"),
("Moderator", "u9", "g1"),
("Member", "u10", "g2"),
("Member", "u4", "g2"),
("Admin", "u2", "g3"),
("Moderator", "u8", "g3"),
("Member", "u1", "g2"),
("Admin", "u7", "g2");

Insert into Belongs_to_Group
VALUES
("p1", "g2"),
("p2", "g3"),
("p3", "g2"),
("p4", "g3"),
("p5", "g3"),
("p6", "g3"),
("p7", "g3"),
("p8", "g2"),
("p9", "g2"),
("p10", "g1"),
("p11", "g2");

Insert into Profile_Pic
VALUES
("p8", "u1"),
("p2,", "u5"),
("p10", "u9"),
("p9", "u7"),
("p6", "u8"),
("p12", "u4"),
("p3", "u2"),
("p4", "u3"),
("p11", "u6"),
("p15", "u10");

Insert into Likes
VALUES
("p8", "u9"),
("p6", "u3"),
("p15", "u8"),
("p11", "u7"),
("p9", "u2"),
("p13", "u5"),
("p8", "u6"),
("p7", "u3"),
("p9", "u8"),
("p2", "u4"),
("p8","u1");
