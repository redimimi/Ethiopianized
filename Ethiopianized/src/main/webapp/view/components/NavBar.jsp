
<link href ="webjars/bootstrap/2.2.1/js/bootstrap.min.js"/>
<link href ="webjars/bootstrap/2.2.1/js/bootstrap.min.css"/>
<link href="/css/NavBar.css" rel="stylesheet"/>

<div>
            <nav id="mainNav">
                <ul>
                
                    <li onClick={props.click} className={props.currentPage === "Home" ? "active" : ""}>
                        <a href="/">Home</a></li>
                        
                    <li onClick={props.click} className={props.currentPage === "About" ? "active" : ""}>
                        <Link> About </Link> </li>
                        
                    <li onClick={props.click} className={props.currentPage === "Contact Us" ? "active" : ""}>
                        <Link>  Contact Us </Link> </li>
                        
                    <li onClick={props.click} className={props.currentPage === "login" ? "active" : ""}>
                        <a href="/signup">Signup</a></li>
                   

                </ul>
                <div id="cart">
                    <div>
                        <img src="./images/basket.jpg" id="basket" />
                    </div>
                    <ul>
                        <li onClick={props.click} className={props.currentPage === "My Cart (0)" ? "active" : ""}> My Cart (0)</li>
                    </ul>
                </div>
            </nav>
        </div>

