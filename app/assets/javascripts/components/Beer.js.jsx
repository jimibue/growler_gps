class Beer extends React.Component{
	constructor(props){
		
		super(props)

	
	}
	render(){
		return( <div>
							<div className='card blue'>
								<div className='card-content'>
									<span className="card-title">{this.props.name}</span>
									<p>{this.props.description}</p>
								</div>
								
							</div>
						</div>)
	}
}