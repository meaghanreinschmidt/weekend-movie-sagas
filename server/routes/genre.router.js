const express = require('express');
const router = express.Router();
const pool = require('../modules/pool')

// GET route for genres
router.get('/:id', (req, res) => {
  const queryText = `SELECT "genres"."name" FROM "genres"
                 JOIN "movies_genres" ON "movies_genres"."genre_id" = "genres"."id"
                 JOIN "movies" ON "movies"."id" = "movies_genres"."movie_id"
                 WHERE "movies"."id" = $1;`
  pool.query(queryText, [req.params.id])
    .then((result) => {
      res.send(result.rows);
    })
    .catch((err) => {
      console.log('ERROR: Get genres', err);
      res.sendStatus(500);
    });
});

module.exports = router;