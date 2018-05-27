import React from 'react'
import RatingField from '../components/RatingField'
import BodyField from '../components/BodyField'


class ReviewForm extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      reviewRating: '1',
      reviewBody: ''
    }
      this.handleRatingInput = this.handleRatingInput.bind(this)
      this.handleBodyInput = this.handleBodyInput.bind(this)
      this.handleSubmit = this.handleSubmit.bind(this)
      this.handleClearForm = this.handleClearForm.bind(this)
    }

  handleRatingInput(event) {
    this.setState({ reviewRating: event.target.value })
  }

  handleBodyInput(event) {
    this.setState({ reviewBody: event.target.value })
  }

  handleSubmit(event) {
    event.preventDefault()

      let formPayload = {
        rating: this.state.reviewRating,
        body: this.state.reviewBody,
        movie_id: this.props.movieId
      }
      this.props.addNewReview(formPayload)
  }

  handleClearForm(event) {
    event.preventDefault()
    this.setState({ reviewRating: '1' }),
    this.setState({ reviewBody: '' })
  }

  render(){
    return(
      <div>
        <form  className="field  medium-8 columns medium-centered" onSubmit={this.handleSubmit}>
        <RatingField
          content={this.state.reviewRating}
          label="Movie Rating"
          name="review-rating"
          handleInput={this.handleRatingInput}
        />
        <BodyField
            content={this.state.reviewBody}
            label="Review:"
            name="review-body"
            handleInput={this.handleBodyInput}
          />
        <div className= "small-12 medium-8 columns">
        <div className="button-group">
          <input type="submit" className="button radius round" value="Clear" onClick={this.handleClearForm}/>
          &nbsp;
          <input className="button radius round" type="submit" value="Submit" />
        </div>
      </div>
      </form>
      </div>
    );
  }

}

export default ReviewForm;
