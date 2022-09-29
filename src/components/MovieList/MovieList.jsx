import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { useHistory } from 'react-router-dom';
import './MovieList.css'
import Button from '@mui/material/Button';
import CardMedia from '@mui/material/CardMedia';

function MovieList() {
    const history = useHistory();
    const dispatch = useDispatch();
    const movies = useSelector(store => store.movies);

    useEffect(() => {
        dispatch({ type: 'FETCH_MOVIES' });
    }, []);

    return (
        <main>
            <h1>MovieList</h1>
            <section className="movies">
                {movies.map(movie => {
                    return (
                        <div key={movie.id} >
                            <h3>{movie.title}</h3>
                            <Button onClick={() => history.push('/details/:id')}>
                                <CardMedia component="img" image={movie.poster} alt={movie.title} />
                            </Button>
                        </div>
                    );
                })}
            </section>
        </main>

    );
}

export default MovieList;