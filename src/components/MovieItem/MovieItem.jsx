import { HashRouter as Router, Route, Link, useHistory } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import Grid from '@mui/material/Grid';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';

function MovieItem({movie}) {
    const history = useHistory();

    const handleSingleMovie = () => {
        console.log('clicked on single movie');
        // dispatch({ type: 'FETCH_ONE_MOVIE', payload: movie.id})
        history.push(`/details/${movie.id}`);
    }

    return (
        <Grid>
                <img className="movie-poster" src={movie.poster} alt={movie.title} onClick={handleSingleMovie}/>
        </Grid>

    )
}

export default MovieItem;