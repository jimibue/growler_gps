class Stations extends React.Component{
		constructor(props){
		super(props)
	}
	render(){

		let stations = this.props.state.data.stations.map( station => {
			let key = "Station-" + station.id
			return(<Station key={key} {...station}/>)
		})
	
		return(<div>
							this is from stations.js.jsx
							{stations}
						</div>)
	}

}
