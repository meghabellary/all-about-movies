import React, { Component } from 'react';
import { Link } from 'react-router';



class FavoriteListContainer extends Component {
  constructor(props) {
    super(props);
    this.state = { favoriteMovies: []};
  }

  componentDidMount(){
    fetch('/api/v1/favorites.json', {
    credentials: 'same-origin',
  })
    .then(response => {
      if (response.ok) {
        // console.log(response)
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())

    .then(body => {
      console.log(body)
      this.setState({
        favoriteMovies: body.movies
      });

    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    let favoriteMovieComponents = this.state.favoriteMovies.map((movie) => {
      return (
        <li key={movie.id}>
          <Link to={`movies/${movie.id}`}><img src={movie.image_url} width="300" height="200" />
          </Link>
        </li>
          );
    });

  return(
      <div><h1></h1>
      <ul className="small-block-grid-2 medium-block-grid-3 large-block-grid-4 movies">
          {favoriteMovieComponents}
        </ul>
      </div>
    )
  }
}

export default FavoriteListContainer;
