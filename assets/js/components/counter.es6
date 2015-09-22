class Counter extends React.Component {
  constructor() {
    super()
    this.state = {count: 0}

    //js sucks:
    this.handleClick = this.handleClick.bind(this);
    this.render = this.render.bind(this);
  }

  handleClick() {
    console.log("clicking" + this.state.count + 1)
    this.setState({count: this.state.count + 1})  
  }

  render() {
    console.log("rendering" + this.state.count)
    return <h1 onClick={this.handleClick}>{this.state.count}</h1>
  }
}
