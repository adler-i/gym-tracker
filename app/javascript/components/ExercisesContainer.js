import React from "react"
import PropTypes from "prop-types"
import axios from 'axios';
import ExerciseList from './ExerciseList'

class ExercisesContainer extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      exercises: null
    };
  }

  componentDidMount() {
    axios
	.get('/api/v1/exercises.json')
	.then(response => this.setState({ exercises: response.data }))
	.catch((error) => {
          console.log(error);
	})
  }

    render() {
        const { exercises } = this.state;
        if (exercises === null) return null;

        return (
            <div>
                <ExerciseList exercises={exercises} />
            </div>
        );
    }

}

export default ExercisesContainer
