-- 000002_add_cover_picture.down.sql

-- Remove the column 'image_url' from the 'series' table
ALTER TABLE series
DROP COLUMN image_url;

-- Remove the column 'image_url' from the 'character' table
ALTER TABLE character
DROP COLUMN image_url;

-- Remove the column 'image_url' from the 'mecha' table
ALTER TABLE mecha
DROP COLUMN image_url;

-- Remove the column 'image_url' from the 'weapon' table
ALTER TABLE weapon
DROP COLUMN image_url;