import { HashRouter as Router, Route, Link, useHistory } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';

function MovieItem({movie}) {
    const dispatch = useDispatch();
    const history = useHistory();

    const handleSingleMovie = () => {
        console.log('clicked on single movie');
        // dispatch({ type: 'FETCH_ONE_MOVIE', payload: movie.id})
        history.push(`/details/${movie.id}`);
    }

    return (
        <section className="movies">
            <Card>
            <CardContent>
            <h3>{movie.title}</h3>
                <CardMedia component="img" key={movie.id} image={movie.poster} alt={movie.title} onClick={handleSingleMovie}/>
            </CardContent>
            </Card>
        </section>

    )
}

export default MovieItem;