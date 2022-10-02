import { useHistory, useParams } from 'react-router-dom';
import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';


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
            <button onClick={() => history.push('/')}>Back to List</button>
            <h3>{movie.title}</h3>
            <img src={movie.poster} alt={movie.title}/>
            <h5>{movie.description}</h5>
            <p>Genres:</p>
        </div>
    )
}


export default Details;