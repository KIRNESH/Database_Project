


Create database IF not exists Flickr;


CREATE TABLE User (
User_ID varchar(5),
Name VARCHAR(20),
Password VARCHAR(40),
Web_Address VARCHAR(60),
Primary key(User_ID))Engine=InnoDB;

CREATE TABLE Photo (
Photo_ID varchar(5),
Date_Created DATE,
Privacy char(30),
Who_can_comment char(30),
Description varchar(70),
User_ID varchar(5),
primary key(Photo_ID),
foreign key(User_ID) references User on update cascade on delete cascade,
check(Privacy in ('Public','Private','Family','Friends','Friends & Family')),
check(Who_can_comment in ('Friends & Family','Any Flickr member','Only you','People you follow'))
)Engine=InnoDB;

CREATE TABLE Album (
Album_ID varchar(5),
Album_Name varchar(40),
Date_Created DATE,
Description varchar(70),
User_ID varchar(5) NOT NULL,
primary key(Album_ID),
foreign key(User_ID) references User(User_ID) on update cascade on delete cascade
) Engine=InnoDB;


CREATE TABLE GroupFlickr (
Group_ID varchar(5),
Group_Name varchar(40),
Date_Created DATE,
primary key(Group_ID)
) Engine=InnoDB;

CREATE TABLE Follows (
User_ID varchar(5) NOT NULL,
Follow_ID varchar(40) NOT NULL,
foreign key(User_ID) references User(User_ID) on update cascade on delete cascade,
foreign key(Follow_ID) references User(User_ID) on update cascade on delete cascade
) Engine=InnoDB;

CREATE TABLE Belongs_to_Group (
Photo_ID varchar(5) NOT NULL ,
Group_ID varchar(5) NOT NULL,
foreign key(Photo_ID) references Photo(Photo_ID) on update cascade on delete cascade,
foreign key(Group_ID) references GroupFlickr(Group_ID) on update cascade on delete cascade
) Engine=InnoDB;

CREATE TABLE Followed_By (
User_ID varchar(5) NOT NULL ,
Following_ID varchar(40) NOT NULL,
foreign key(User_ID) references User(User_ID) on update cascade on delete cascade,
foreign key(Following_ID) references User(User_ID) on update cascade on delete cascade
) Engine=InnoDB;

CREATE TABLE Belongs_to_Album (
Photo_ID varchar(5) NOT NULL ,
Album_ID varchar(5) NOT NULL,
foreign key(Photo_ID) references Photo(Photo_ID) on update cascade on delete cascade,
foreign key(Album_ID) references Album(Album_ID) on update cascade on delete cascade
) Engine=InnoDB;

CREATE TABLE Profile_Pic (
Photo_ID varchar(5) NOT NULL ,
User_ID varchar(5) NOT NULL,
primary key(User_ID),
foreign key(Photo_ID) references Photo(Photo_ID) on update cascade on delete cascade,
foreign key(User_ID) references User(User_ID) on update cascade on delete cascade
) Engine=InnoDB;


CREATE TABLE Likes (
Photo_ID varchar(5) NOT NULL ,
User_ID varchar(5) NOT NULL,
foreign key(Photo_ID) references Photo(Photo_ID) on update cascade on delete cascade,
foreign key(User_ID) references User(User_ID) on update cascade on delete cascade
) Engine=InnoDB;

CREATE TABLE Member (
User_ID varchar(5) NOT NULL ,
Group_ID varchar(5) NOT NULL,
Member_Type char(15),
foreign key(User_ID) references User(User_ID) on update cascade on delete cascade,
foreign key(Group_ID) references GroupFlickr(Group_ID) on update cascade on delete cascade,
check(Type in ('Admin','Moderator','Member')))
 Engine=InnoDB;
