import React, { Component } from 'react';
import { Link } from 'react-router';
import ReviewForm from '../containers/ReviewForm'
import ReactPlayer from 'react-player'

class MovieShow extends Component {
  constructor(props){
    super(props);
    this.state = { movieInfo: {}, imdbMovieInfo: {}, actors: [], reviews: [], ratings: [] };
    this.addNewReview = this.addNewReview.bind(this);
    this.getImdbdata = this.getImdbdata.bind(this);
  }

  getImdbdata() {
    let imdbId = this.state.movieInfo.imbd_movie_id
    fetch(`http://www.omdbapi.com/?i=${imdbId}&apikey=50903f61`)
    .then(response => response.json())
    .then(body => {
      console.log(body)
      this.setState({
        imdbMovieInfo: body, ratings: body.Ratings
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  addNewReview(formPayload) {
    fetch('/api/v1/reviews.json', {
      credentials: 'same-origin',
      method: 'post',
      headers: { 'Content-Type': 'application/json'},
      body: JSON.stringify(formPayload)
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
    .then(responseReview => {
      let newReviews = this.state.reviews.concat(responseReview)
      this.setState({
        reviews: newReviews
      })

    })
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
      this.getImdbdata()
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    // console.log(this.state.movieInfo.actor_list)
    let actors = this.state.actors.map((actor) => {
      return (
        <li key={actor.id}>
          <Link to={`/actors/${actor.id}`}>{actor.name}</Link>
        </li>
      );
    });

    let reviewList = this.state.reviews.map((review) => {
      return(
        <div key={review.id}>
          <div>Review by: &nbsp;
          {review.user_name}
        </div>
        <div>
          <i className="fa fa-star">{review.rating}</i> &nbsp;
          {review.body}
        </div>
        </div>
      )
    })

    let ratingList = this.state.ratings.map((rating) =>{
      return(
        <li key={rating.Source}>
          {rating.Source} &nbsp;
          {rating.Value}
        </li>
      )
    })
    return(
      <div>
        <div><h2>{this.state.movieInfo.title}</h2></div>
          <div className="row">
            <div className="small-12 medium-8 columns medium-centered">
              <ReactPlayer url={this.state.movieInfo.trailer_url} playing />
            </div>
          {/* <div className="small-2 medium-3 large-4 columns">
          <img src={this.state.movieInfo.image_url} width="300" height="150" />
        </div> */}
          </div>
        <div className="rating">
          <ul className="rating-tiles">
            {ratingList}
          </ul>
        </div>
        <div className="panel plot medium-10 columns medium-centered">
          {this.state.movieInfo.plot}
        </div>
      <div className="cast"><h3>Cast</h3>
        <ul className="panel plot medium-10 columns medium-centered actors">
          {actors}
        </ul>
      </div>
      <div className= "panel  medium-10 columns medium-centered">{reviewList}</div>
        <ReviewForm
          movieId = {this.state.movieInfo.id}
          addNewReview = {this.addNewReview}
        />
      </div>
  )
}
}

export default MovieShow;
