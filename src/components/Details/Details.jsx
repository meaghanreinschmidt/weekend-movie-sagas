import { useHistory } from 'react-router-dom';
import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';

const Details = () => {
    const dispatch = useDispatch();
    const movies = useSelector(store => store.movies);
    const history = useHistory();

    const getMovie = () => {
        dispatch({ type: 'FETCH_ONE_MOVIE' });
    }

    useEffect(() => {
        getMovie();
    }, []);
    

    return (
        <>
            <button onClick={() => history.push('/')}>Back to List</button>
            <h3>{movies.title}</h3>
        </>
    )
}


export default Details;