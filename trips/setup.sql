CREATE TABLE trips(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update at',
    destination varchar(255) NOT NULL comment 'trip destination',
    startDate VARCHAR(255) NOT NULL COMMENT 'trip start date',
    endDate VARCHAR(255) NOT NULL COMMENT 'trip end date'
) default charset utf8 comment '';
CREATE TABLE flights(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'FK: trips createdAt',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FK: trips updatedAt',
    destination varchar(255) NOT NULL comment 'FK: trips destination',
    startDate VARCHAR(255) NOT NULL COMMENT 'FK: trips startDate',
    endDate VARCHAR(255) NOT NULL COMMENT 'FK: trips endDate',
    tripId INT NOT NULL COMMENT 'FK: trips id',
    FOREIGN KEY(tripId) REFERENCES trips(id) ON DELETE CASCADE
) default charset utf8 comment '';


SELECT * FROM trips;

CREATE TABLE cruises(
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
  startDate VARCHAR(255) NOT NULL COMMENT 'FK: trips startDate',
    endDate VARCHAR(255) NOT NULL COMMENT 'FK: trips endDate',
    tripId INT NOT NULL COMMENT 'FK: trips id',
    FOREIGN KEY(tripId) REFERENCES trips(id) ON DELETE CASCADE
) DEFAULT charset utf8 COMMENT '';
DROP Table cruises;

show tables
