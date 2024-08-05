-- Drop foreign key constraints
ALTER TABLE "user_progress" DROP CONSTRAINT IF EXISTS "user_progress_challenge_id_fkey";
ALTER TABLE "weapon" DROP CONSTRAINT IF EXISTS "weapon_wielder_id_fkey";
ALTER TABLE "weapon" DROP CONSTRAINT IF EXISTS "weapon_series_id_fkey";
ALTER TABLE "mecha" DROP CONSTRAINT IF EXISTS "mecha_series_id_fkey";
ALTER TABLE "character" DROP CONSTRAINT IF EXISTS "character_series_id_fkey";

-- Drop tables
DROP TABLE IF EXISTS "user_progress";
DROP TABLE IF EXISTS "daily_challenge";
DROP TABLE IF EXISTS "weapon";
DROP TABLE IF EXISTS "mecha";
DROP TABLE IF EXISTS "character";
DROP TABLE IF EXISTS "series";