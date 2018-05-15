import React, { Component } from 'react';

class ActorShow extends Component {

  constructor(props){
    super(props);
    this.state = {actorInfo: {}}
  }

  componentDidMount(){
    let actorId = this.props.params.id
    fetch(`/api/v1/actors/${actorId}`)
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
        actorInfo: body.actor
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    return(

      <div className="panel medium-10 columns medium-centered">
        <div className="row">
          <div className="medium-4 columns"><img src={this.state.actorInfo.image_url} width="300" height="200" />
        </div>
        <div className="medium-8 columns">
          <h6>Name: {this.state.actorInfo.name}</h6>
          <h6 className="age">Age: {this.state.actorInfo.age}</h6>
          <h6 className="description">Description: {this.state.actorInfo.description}</h6>
      </div>
      </div>
    </div>

      )
  }

}

export default ActorShow;
