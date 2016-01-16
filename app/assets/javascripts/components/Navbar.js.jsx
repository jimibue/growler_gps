class Navbar extends React.Component{
		constructor(props){

		super(props)
		
		this.toogleBeerView = this.toogleBeerView.bind(this);
	}
	toogleBeerView(){
		
	}
	render(){
	
		return(<nav>
						   <div className="nav-wrapper">
					      <a href="#" className="brand-logo">Logo</a>
					      <ul id="nav-mobile" className="right hide-on-med-and-down">
					        <li onClick={this.toogleBeerView}>Beers</li>
					      
					      </ul>
					    </div>
					  </nav>
				
  					)

		
	}
}
