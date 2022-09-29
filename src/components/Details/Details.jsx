import { useHistory } from 'react-router-dom';

const Details = () => {
    const history = useHistory();


    return (
        <>
            <button onClick={() => history.push('/')}>Back to List</button>
        </>
    )
}


export default Details;