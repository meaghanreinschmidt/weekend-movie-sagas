import { useHistory, useParams } from 'react-router-dom';
import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import GenreItem from '../GenreItem/GenreItem';
import Button from '@mui/material/Button';
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';

const Details = () => {
    const dispatch = useDispatch();
    const history = useHistory();
    const { id } = useParams();
    const movie = useSelector(store => store.singleMovie);
    const genres = useSelector(store => store.genres);

    const getMovie = () => {
        dispatch({ type: 'FETCH_ONE_MOVIE', payload: id });
    }

    useEffect(() => {
        getMovie();
    }, [id]);


    return (
        <>
            <Button style={{ backgroundColor: 'black', color: 'white' }} onClick={() => history.push('/')}>Back to List</Button>
            <br />
            <br />
            <Card sx={{ display: 'flex', padding: 8, backgroundColor: 'black', color: 'white'}}>
                <Box>
                    <img src={movie.poster} alt={movie.title}></img>
                </Box>
                <Box>
                    <CardContent sx={{ flex: '1 0 auto' }}>
                        <Typography variant="h6">{movie.title}</Typography>
                        <Typography variant="caption">{movie.description}</Typography>
                        <br />
                        <br />
                        <Typography variant="body1">Genres:</Typography>
                        <section className="genres">
                            {genres.map(genre => {
                                return (
                                    <GenreItem genre={genre} />
                                )
                            })}
                        </section>
                    </CardContent>

                </Box>
            </Card>
        </>
    )
}


export default Details;