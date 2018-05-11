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
          <div><img src={this.state.actorInfo.image_url} width="300" height="200" /></div>
          <div>{this.state.actorInfo.name}</div>
          <div className="age">
            {this.state.actorInfo.age}
          </div>
          <div>
            {this.state.actorInfo.description}
          </div>
        </div>


    )
  }

}

export default ActorShow;
