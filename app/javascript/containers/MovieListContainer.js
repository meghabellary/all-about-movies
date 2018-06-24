import React, { Component } from 'react';

import { Link } from 'react-router';

class MovieListContainer extends Component {
  constructor(props) {
    super(props);
    this.state = { movies: []};
    this.getMovies = this.getMovies.bind(this);
    this.handleChange = this.handleChange.bind(this);
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

  handleChange(event) {
    let input = event.target.value;
    let tempResults = []
    if(input != "")  {

      this.state.movies.forEach((movie) => {
        if (movie.title.toLowerCase().includes(input.toLowerCase())) {
          tempResults.push(movie)
        }
      })
    } else {
      tempResults = this.getMovies();
    }
    this.setState({
      movies: tempResults
    })
  }

  render(){

    let movieComponents = this.state.movies.map((movie) => {
      return (
        <li key={movie.id}>
          <Link to={`movies/${movie.id}`}><img src={movie.image_url} width="300" height="200" />
          </Link>
        </li>
          );
    });

  return(

      <div><h1></h1>
    <div className="searchapp small-8 medium-4 columns">
        <input type='text' onChange={this.handleChange} placeholder="Search movie!"/>
      </div>
      <div className="favorites">
        <Link to={`/favorites`}> <h4 className="button radius">My Favorites!</h4></Link>
      </div>
      <ul className="small-block-grid-2 medium-block-grid-3 large-block-grid-4 movies">
          {movieComponents}
        </ul>
      </div>
    )
  }
}

export default MovieListContainer;
