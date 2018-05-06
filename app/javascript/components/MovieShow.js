import React, { Component } from 'react';
import { Link } from 'react-router';


class MovieShow extends Component {
  constructor(props){
    super(props);
    this.state = { movieInfo: {}, actors: [] };

  }

  componentDidMount(){
    let movieId = this.props.params.id
    fetch(`/api/v1/movies/${movieId}`)
    .then(response => {

      if (response.ok) {
        console.log(response)
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())

    .then(body => {

        this.setState({
        movieInfo: body, actors: body.actor_list
      });

    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


  render(){
    console.log(this.state.movieInfo.actor_list)
    let actors = this.state.actors.map((actor) => {
      return (
        <div key={actor.id}>
          <Link to={`actors/${actor.id}`}>{actor.name}</Link>
        </div>
          );
    });
    return(
      <div><h1>Movie details:</h1>
        <p><h2>{this.state.movieInfo.title}</h2></p>
        <p>{this.state.movieInfo.plot}</p>
        <div><h3>Actors:</h3>{actors}</div>
        </div>
    )
  }


}

export default MovieShow;
