import React from 'react';
import Header from './Header';
import FilteredList from './FilteredList';

export default function TodoList(props) {
    const {list} = props.data;
    const {addNew, changeStatus} = props.actions;
    const items = list;

    return (
        <div className="container">
            <div className="row">
                <div className="todolist">
                    <Header {...{addNew}}/>
                    <FilteredList {...{items, changeStatus}}/>
                </div>
            </div>
        </div>
    );
}
