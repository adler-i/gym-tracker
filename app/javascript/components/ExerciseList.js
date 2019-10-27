import React from 'react';
import PropTypes from 'prop-types';

class EventList extends React.Component {
    renderEvents() {
        const { exercises } = this.props;
        exercises.sort(
            (a, b) => new Date(b.created_at) - new Date(a.created_at),
        );

        return exercises.map(exercise => (
            <li key={exercise.id}>
                {exercise.id}
                {' - '}
                {exercise.name}
            </li>
        ));
    }

    render() {
        return (
            <section>
                <h2>Events</h2>
                <ul>{this.renderEvents()}</ul>
            </section>
        );
    }
}

EventList.propTypes = {
    exercises: PropTypes.arrayOf(PropTypes.object),
};

EventList.defaultProps = {
    exercises: [],
};

export default EventList;