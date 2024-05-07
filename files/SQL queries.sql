/* Final Project - Airbnb results */

/* SQL Questions*/

-- Creating the database
create database airbnb;

use airbnb;

-- Creating a table airbnb_data with the same columns as given in the csv file.
DROP TABLE IF EXISTS airbnb_data;

CREATE TABLE airbnb_data (
  property_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  neighborhood VARCHAR(45) NOT NULL,
  average_daily_rate DECIMAL(10, 2) NOT NULL,
  annual_revenue TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  occupancy_rate DECIMAL(5, 2),
  bedrooms DECIMAL(3, 1),
  bathrooms DECIMAL(3, 1),
  latitude DECIMAL(9, 6),
  longitude DECIMAL(9, 6),
  has_pool BOOLEAN,
  is_pet_friendly BOOLEAN,
  has_air_conditioning BOOLEAN,
  seasonality VARCHAR(100),
  PRIMARY KEY  (property_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;