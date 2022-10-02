import Typography from '@mui/material/Typography';

function GenreItem({genre}) {
    return (
        <>
            <Typography variant="body2" key={genre.id}>{genre.name}</Typography>
        </>
    )
}

export default GenreItem;