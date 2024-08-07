-- name: listSeries :many
SELECT * from series
ORDER BY id
LIMIT $1
OFFSET $2;

-- name: addSeries :one
INSERT INTO series (name, year, theme, color_scheme)
VALUES ($1, $2, $3, $4)
RETURNING *;

-- name: getSeriesById :one
SELECT * from series
WHERE id = $1;

-- name: searchSeriesByName :many
SELECT * from series
WHERE name ILIKE '%' || $1 || '%'
ORDER BY id;