import { HashRouter as Router, Route, Link, useHistory } from 'react-router-dom';
import './MovieItem.css';
import Grid from '@mui/material/Grid';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';

function MovieItem({movie}) {
    const history = useHistory();

    // button click to go to details page
    const handleSingleMovie = () => {
        console.log('clicked on single movie');
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