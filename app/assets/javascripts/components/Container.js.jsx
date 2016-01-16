class Container extends React.Component{
	constructor(props){

		super(props)
		this.state = { data : props['data'] }
		this.showBeers = this.showBeers.bind(this);
	}
	showBeers(){
		console.log('df')
		beers = this.state.data.beers
		beers.map( beer => {
			let key = "Beer-" + beer.id
			return <Beer key={key} {...beer} />
		})
		console.log(beers)
		{<Beers beers={beers} />}

	}
	render(){ return(<div>
		<Navbar state={this.state}/>
		<Beers  state={this.state}/>
		
		<Stations  state={this.state}/>

		</div>)
	}
}
