-- Add a new column 'image_url' to the 'serie' table
ALTER TABLE series
ADD COLUMN image_url VARCHAR(255);

-- Add a new column 'image_url' to the 'character' table
ALTER TABLE character
ADD COLUMN image_url VARCHAR(255);

-- Add a new column 'image_url' to the 'mecha' table
ALTER TABLE mecha
ADD COLUMN image_url VARCHAR(255);

-- Add a new column 'image_url' to the 'weapon' table
ALTER TABLE weapon
ADD COLUMN image_url VARCHAR(255);