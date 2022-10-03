import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import './MovieList.css'
import MovieItem from '../MovieItem/MovieItem';
import Box from '@mui/material/Box';
import Grid from '@mui/material/Grid';


function MovieList() {
    const dispatch = useDispatch();
    const movies = useSelector(store => store.movies);

    useEffect(() => {
        dispatch({ type: 'FETCH_MOVIES' });
    }, []);

    return (
        <Box>
            {/* <Grid> */}
            <Grid className="movies" container
                spacing={0}
                direction="row"
                alignItems="center"
                justifyContent="center"
                style={{ minHeight: '100vh' }}>
                {movies.map(movie => {
                    return (
                        <MovieItem movie={movie} />
                    );
                })}
            </Grid>
        </Box>
    );
}

export default MovieList;