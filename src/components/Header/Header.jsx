// import { Link, useLocation } from 'react-router-dom';
import './Header.css';

const Header = () => {
    // location for conditional and styling
    // const location = useLocation();

    return (
        <>
            <header className="App-header">
                <h1 className="App-title">NOW SHOWING</h1>
            </header>
            <h2 className="App-subtitle">October Fest</h2>
            {/* <ul>
                <li>
                    <Link to="/add/movie" className={location.pathname === '/add/movie' ? 'active' : undefined}>
                        Admin
                    </Link>
                </li>
            </ul> */}
        </>
    );
};

export default Header;