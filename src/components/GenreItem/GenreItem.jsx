function GenreItem({genre}) {
    return (
        <>
            <p key={genre.id}>{genre.name}</p>
        </>
    )
}

export default GenreItem;