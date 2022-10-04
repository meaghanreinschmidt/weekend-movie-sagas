import {HashRouter as Router, Route, Link} from 'react-router-dom';
import './App.css';
import Header from '../Header/Header';
import MovieList from '../MovieList/MovieList';
import Details from '../Details/Details';
import MovieForm from '../MovieForm/MovieForm';

function App() {
  return (
    <div className="App">
      <Header />
      <Router>   
        {/* Movies page */}     
        <Route path="/" exact>
          <MovieList />
        </Route>
        {/* Details page */}
        <Route path="/details/:id" exact>
          <Details />
        </Route>
        {/* Add Movie page */}
        {/* <Route path="/add/movie" exact>
          <MovieForm />
        </Route> */}
      </Router>
    </div>
  );
}


export default App;
