import React, { Component } from 'react';
import { Link } from 'react-router';



class FavoriteListContainer extends Component {
  constructor(props) {
    super(props);
    this.state = { favoriteMovies: [], favorites: []};
    this.getFavorites = this.getFavorites.bind(this);
    this.removeFavorite = this.removeFavorite.bind(this);
  }

  getFavorites() {
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
        favoriteMovies: body.movies,
        favorites : body.favorites
      });

    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }
  componentDidMount(){
    this.getFavorites();
  }

  removeFavorite(id) {
    // let movieId = 1
    fetch(`/api/v1/favorites/${id}`, {
      credentials: 'same-origin',
      method: 'DELETE',
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`, error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(responseFavorite => {
      console.log(responseFavorite)
      this.getFavorites();
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    let favoriteMovieComponents = this.state.favorites.map((favorite) => {
      return (
        <li key={favorite.id}>
          <Link to={`movies/${favorite.movie.id}`}><img src={favorite.movie.image_url} width="300" height="200" />
          </Link>
          <Link to={`/favorites`} onClick={this.removeFavorite.bind(this, favorite.id)}><h6> Remove </h6></Link>
        </li>
          );
    });

  return(
      <div><h3>My Favorites list!</h3>
      <div className="panel medium-10 columns medium-centered">
      <ul className="small-block-grid-2 medium-block-grid-3 large-block-grid-4 movies">
          {favoriteMovieComponents}
        </ul>
      </div>
    </div>
    )
  }
}

export default FavoriteListContainer;
