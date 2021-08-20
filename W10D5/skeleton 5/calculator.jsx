import React from "react";

class Calculator extends React.Component {  // "ApplicationController"
    constructor(props) {                    // Passed into React components
        super(props);                       
        this.state = {
            num1: "",
            num2: "",
            result: 0
        };          // info to persist across renders, doesnt stay when u refresh browser
    }
    
    setNum1(e) {
        const num1 = e.target.value ? parseInt(e.target.value) : "";
        this.setState({num1});                    // ASYNCHRONOUS
    }

    setNum2(e) {
        const num2 = e.target.value ? parseInt(e.target.value) : "";
        this.setState({ num2 });                    // ASYNCHRONOUS
    }

    add(e) {                    
        e.preventDefault();
        this.setState({ result: this.state.num1 + this.state.num2 });
    }

    subtract(e) {
        e.preventDefault();
        this.setState({ result: this.state.num1 - this.state.num2 });
    }

    multiply(e) {
        e.preventDefault();
        this.setState({ result: this.state.num1 * this.state.num2 });
    }

    divide(e) {
        e.preventDefault();
        this.setState({ result: this.state.num1 / this.state.num2 });
    }

    clear(e) {
        e.preventDefault();
        this.setState({
            num1: "",
            num2: "",
            result: 0
        })
    }

      // this render method is for React
    render() {  // curly braces for JS inside return. explicit return.
        const {num1, num2, result} = this.state
        return (
            <div>
                <h1>{this.state.result}</h1>
                <input onChange={e => this.setNum1(e)} value={num1}/> 
                <input onChange={e => this.setNum2(e)} value={num2}/>
                <button onClick={e => this.add(e)}>Plus</button>
                <button onClick={e => this.subtract(e)}>Minus</button>
                <button onClick={e => this.multiply(e)}>Times</button>
                <button onClick={e => this.divide(e)}>Divide</button>
                <button onClick={e => this.clear(e)}>Megan</button>
            </div>
        );
    };


};

export default Calculator;