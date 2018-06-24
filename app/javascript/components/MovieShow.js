import React, { Component } from 'react';
import { Link } from 'react-router';
import ReviewForm from '../containers/ReviewForm'
import ReactPlayer from 'react-player'

class MovieShow extends Component {
  constructor(props){
    super(props);
    this.state = { movieInfo: {}, imdbMovieInfo: {}, imdbPlot: '',actors: [], reviews: [], ratings: [], errorMessage: '' };
    this.addNewReview = this.addNewReview.bind(this);
    this.getImdbdata = this.getImdbdata.bind(this);
    this.addNewFavorite = this.addNewFavorite.bind(this)
  }

  getImdbdata() {
    let imdbId = this.state.movieInfo.imbd_movie_id
    fetch(`https://www.omdbapi.com/?i=${imdbId}&apikey=50903f61`)
    .then(response => response.json())
    .then(body => {
      console.log(body)
      this.setState({
        imdbMovieInfo: body, ratings: body.Ratings, imdbPlot:body.Plot
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
      console.log(responseReview);
      if (responseReview['id'] == 'error message') {
          this.setState({ errorMessage: responseReview['body'] })
        } else {
          let newReviews = this.state.reviews.concat(responseReview)
            this.setState({
            reviews: newReviews,
            errorMessage: ''
          })
        }
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }
  addNewFavorite() {
    let movieId = this.state.movieInfo.id;
    fetch('/api/v1/favorites.json', {
      credentials: 'same-origin',
      method: 'post',
      headers: { 'Content-Type': 'application/json'},
      body: JSON.stringify({movie_id: movieId})
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
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
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
      //console.log(body)
      this.setState({
        movieInfo: body, actors: body.actor_list, reviews: body.reviews
      });
      this.getImdbdata()
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    // console.console.log();(this.state.movieInfo.actor_list)
    let errorDiv = <div className="react-message">{this.state.errorMessage}</div>
    let actors = this.state.actors.map((actor) => {
      return (
        <div key={actor.id}>
        <Link to={`/actors/${actor.id}`}><h6>{actor.name}</h6></Link>
        </div>
      );
    });
    let star = []
    let reviewList = this.state.reviews.map((review) => {
      star = []
      for(let i = 0;i < review.rating; i++) {
        star.push(<i className="fa fa-star"></i>)
      }
      return(
        <div key={review.id}>
          <div>Review by: &nbsp;
          {review.user_name}
        </div>
        <div>
          {/* <i className="fa fa-star">{review.rating}</i> &nbsp; */}
          {star} &nbsp;
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
      <div className="favorites">
        <Link to={`/favorites`} onClick={this.addNewFavorite}><h5 className="button radius"> Add to My Favorites! </h5></Link>
      </div>
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
        <b>  Director : {this.state.imdbMovieInfo.Director} </b>
        </div>
        <div className="panel plot medium-10 columns medium-centered">
        <b>  Awards : {this.state.imdbMovieInfo.Awards}</b>
        </div>
        <div className="panel plot medium-10 columns medium-centered">
         <b>Website : {this.state.imdbMovieInfo.Website}</b>
        </div>

        <div className="panel plot medium-10 columns medium-centered">
          {this.state.imdbPlot}
        </div>
      <div className="cast"><h3>Cast</h3>
        <ul className="panel plot medium-10 columns medium-centered actors">
          {actors}
        </ul>
      </div>
      <div className= "panel  medium-10 columns medium-centered">{reviewList}</div>
      <div className= "medium-8 columns medium-centered">{errorDiv}</div>
        <ReviewForm
          movieId = {this.state.movieInfo.id}
          addNewReview = {this.addNewReview}
        />
      </div>
  )
}
}

export default MovieShow;
