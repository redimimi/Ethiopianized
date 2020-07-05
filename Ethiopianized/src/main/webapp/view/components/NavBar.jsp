
<link href ="webjars/bootstrap/2.2.1/js/bootstrap.min.js"/>
<link href="/css/NavBar.css" rel="stylesheet"/>

<div>
            <nav id="mainNav">
                <ul>
                    <li onClick={props.click} className={props.currentPage === "Home" ? "active" : ""}>
                        <Link to="/">Home</Link></li>
                    <li onClick={props.click} className={props.currentPage === "About" ? "active" : ""}>
                        <Link> About </Link> </li>
                    <li onClick={props.click} className={props.currentPage === "Contact Us" ? "active" : ""}>
                        <Link>  Contact Us </Link> </li>
                    <li onClick={props.click} className={props.currentPage === "login" ? "active" : ""}>
                        <Link to="/Login">login</Link></li>
                    <li onClick={props.click} className={props.currentPage === "Try it on" ? "active" : ""}>
                        <Link>Try it on </Link> </li>

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

