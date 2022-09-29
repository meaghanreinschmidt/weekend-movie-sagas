import { useHistory, useParams } from 'react-router-dom';
import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';


const Details = () => {
    const dispatch = useDispatch();
    const history = useHistory();
    const movie = useSelector(store => store.singleMovie);
    const {id} = useParams();

    const getMovie = () => {
        dispatch({ type: 'FETCH_ONE_MOVIE', payload: id });
    }

    useEffect(() => {
        getMovie();
    }, []);
    

    return (
        <div>
            <button onClick={() => history.push('/')}>Back to List</button>
            <h3>{movie.title}</h3>
        </div>
    )
}


export default Details;