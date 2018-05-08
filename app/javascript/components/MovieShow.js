import React, { Component } from 'react';
import { Link } from 'react-router';
import ReactPlayer from 'react-player'

class MovieShow extends Component {
  constructor(props){
    super(props);
    this.state = { movieInfo: {}, actors: [], reviews: [] };

  }

  componentDidMount(){
    let movieId = this.props.params.id
    fetch(`/api/v1/movies/${movieId}`)
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
        movieInfo: body, actors: body.actor_list, reviews: body.reviews
      });

    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }


  render(){
    // console.log(this.state.movieInfo.actor_list)
    let actors = this.state.actors.map((actor) => {
      return (
        <div key={actor.id}>
          <Link to={`actors/${actor.id}`}>{actor.name}</Link>
        </div>
          );
    });

    let reviewList = this.state.reviews.map((review) => {
      return(
        <div key={review.id}>
          {review.rating}
          {review.body}
        </div>
      )
    })
    return(
      <div><h1>Movie details:</h1>
        <div><h2>{this.state.movieInfo.title}</h2></div>
        <p>{this.state.movieInfo.plot}</p>
        <div><h3>Actors:</h3>{actors}</div>
        <div><h2>Reviews:</h2>{reviewList}</div>
        <div>
          <ReactPlayer url={this.state.movieInfo.trailer_url} playing />
        </div>
      </div>
    )

  }
}

export default MovieShow;
