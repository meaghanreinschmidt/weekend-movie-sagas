import { useHistory, useParams } from 'react-router-dom';
import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import GenreItem from '../GenreItem/GenreItem';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';


const Details = () => {
    const dispatch = useDispatch();
    const history = useHistory();
    const {id} = useParams();
    const movie = useSelector(store => store.singleMovie);
    const genres = useSelector(store => store.genres);

    const getMovie = () => {
        dispatch({ type: 'FETCH_ONE_MOVIE', payload: id });
    }

    useEffect(() => {
        getMovie();
    }, [id]);
    

    return (
        <div>
            <Button style={{backgroundColor: 'black', color: 'darkred'}} onClick={() => history.push('/')}>Back to List</Button>
            <h3>{movie.title}</h3>
            <img src={movie.poster} alt={movie.title}/>
            <h5>{movie.description}</h5>
            <section className="genres">
            {genres.map(genre => {
                return (
                    <GenreItem genre={genre} />
                )
            })}
            </section>
        </div>
    )
}


export default Details;