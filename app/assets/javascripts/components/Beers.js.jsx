class Beers extends React.Component{
	constructor(props){
	
		super(props)

		
	}
	render(){
		let beers = this.props.state.data.beers.map( beer => {
			let key = "Beer-" + beer.id
			return(<Beer key={key} {...beer}/>)
		})
	
		return(<div>
							this is from beers.js.jsx
							{beers}
						</div>)
	}
}