# YOUR SQL CODE GOES HERE
# 1
SELECT lost_dog_collars.dog_name AS collar_name
  FROM dog_owners
  JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);

# 2
SELECT lost_dog_collars.dog_name AS unknown_owners
  FROM lost_dog_collars
  LEFT JOIN dog_owners
  ON lost_dog_collars.dog_name = dog_owners.dog_name
  WHERE dog_owners.dog_name IS NULL;


# 3
SELECT lost_dog_collars.dog_name AS collers_in_possession, dog_owners.name AS owner
  FROM dog_owners
  FULL OUTER JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name) WHERE lost_dog_collars.dog_name IS NOT NULL;

# 4
SELECT dog_owners.name AS owner, lost_dog_collars.dog_name AS collar_name
  FROM dog_owners
  FULL OUTER JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name) WHERE dog_owners.name IS NOT NULL;
