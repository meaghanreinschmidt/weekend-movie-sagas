import { HashRouter as Router, Route, Link, useHistory } from 'react-router-dom';
import './MovieItem.css';
import Grid from '@mui/material/Grid';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';

function MovieItem({movie}) {
    const history = useHistory();

    const handleSingleMovie = () => {
        console.log('clicked on single movie');
        // dispatch({ type: 'FETCH_ONE_MOVIE', payload: movie.id})
        history.push(`/details/${movie.id}`);
    }

    return (
        <Grid>
            <Card style={{backgroundColor: 'black', borderRadius: '1em'}} className="card">
                <CardContent>
                <img className="movie-poster" src={movie.poster} alt={movie.title} onClick={handleSingleMovie} />
                </CardContent>
            </Card>
        </Grid>

    )
}

export default MovieItem;