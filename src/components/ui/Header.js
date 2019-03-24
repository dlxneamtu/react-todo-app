import React from 'react';
import InputBox from './InputBox';

export default function Header(props) {
    const {addNew} = props;
    return (
        <header>
            <h1>Things To Do</h1>
            <InputBox {...{addNew}}/>
        </header>
    );
}
