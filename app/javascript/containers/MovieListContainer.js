import React, { Component } from 'react';

import { Link } from 'react-router';

class MovieListContainer extends Component {
  constructor(props) {
    super(props);
    this.state = { movies: []};
    this.getMovies = this.getMovies.bind(this);
  }

  getMovies() {
    fetch('/api/v1/movies.json')
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ movies: body.movies });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount(){
    this.getMovies();
  }

  render(){
    let movieComponents = this.state.movies.map((movie) => {
      return (
        <div key={movie.id}>
          <Link to={`movies/${movie.id}`}>{ movie.title }</Link>
        </div>
          );
    });

  return(
      <div><h1>List of Movies</h1>
        <div>
        {movieComponents}
      </div>
      </div>
    )
  }
}

export default MovieListContainer;
