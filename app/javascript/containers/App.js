import React from 'react';
import { Router, browserHistory, Route, IndexRoute } from 'react-router';

import MovieListContainer from "./MovieListContainer";
import MovieShow from "../components/MovieShow";
import ActorShow from "../components/ActorShow";

const App = props => {
  return(
    <Router history={browserHistory}>
      <Route path='/'>
        <IndexRoute component={MovieListContainer}/>
          <Route path="/movies" component={MovieListContainer}/>
          <Route path="/movies/:id" component={MovieShow}/>
          <Route path="/actors/:id" component={ActorShow}/>
      </Route>
    </Router>
  )
}
export default App;
 
