<head>
<jsp:include page="./header.jsp"></jsp:include>
</head>

<div class="slider center">
  <div class="slider-div"><img src="/images/DRESS1.jpg" class="slider-picture" alt="dress1">${product.get(0).color} <br >${product.get(0).image}</div>
  <div class="slider-div"><img src="/images/DRESS2.jpg" class="slider-picture" alt="dress2"></div>
  <div class="slider-div"><img src="/images/DRESS3.jpg" class="slider-picture" alt="dress3"></div>
  <div class="slider-div"><img src="/images/DRESS1.jpg" class="slider-picture" alt="dress1"></div>
  <div class="slider-div"><img src="/images/DRESS2.jpg" class="slider-picture" alt="dress2"></div>
</div>
  
<div class="pricecontainer" >
<img id="pricelog" src="/images/top.png">
<div id="price-content">
	<img src="/images/bottom.png">
	<div class="info">
		<p id="dress-color"></p>
		<p id="dress-pid"></p> 
	</div>
	
</div>
 
</div>
   


<script>
$('.center').slick({
	  centerMode: true,
	  centerPadding: '60px',
	  slidesToShow: 3,
	  focusOnSelect: true,
	  arrows: false,
	  infinite:true,
	  responsive: [
	    {
	      breakpoint: 768,
	      settings: {
	        arrows: false,
	        centerMode: true,
	        centerPadding: '40px',
	        slidesToShow: 3,
	        dots:false ,
	  
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
	        arrows: false,
	        centerMode: true,
	        centerPadding: '40px',
	        slidesToShow: 1
	      }
	    }
	  ]
	});
	

$(".slider-picture").click(function(e) {
	var imagNmae = e.target.src;
	var image = imagNmae.replace("http://localhost:8081/images/","")
	  //Create onclick method with jquery on slider div
	  
	  $.get({
		  url: "http://localhost:8081/api/images/" + image
	  }).then(function(response){
		  
		  var dress = response[0];
		  
		  $("#dress-color").text(dress.color);
		  $("#dress-pid").text(dress.pid);
		  
		  $("#price-content").animate({top: "-265px"}, 100).animate({top: "-15px"}, 300);
		  
		  
	  })
	});
	
	
	
	                                       //using e argument in on click method, retrive image name by getting it from src attribute
	//after getting image name, trim out the /images/ part 
	//create ajax get request to java get url
	//send image name in to for java to findByImage
	//update dom and display information retrieved from database	

</script>


 <style>
#pricelog{
    width: 25%;
    height: auto;
    max-height: 300px;
    position: relative;
    z-index: 1;
    background: #fff;
   
}
.info
{
    position: absolute;
    top: 20px;
    left: 50%;
    transform: translateX(-50%);
 
}

#price-content {
	position: relative;
	top: -265px;	
}

#price-content img{
	width: 25%;
	height: auto;
	max-height: 300px;
}

.pricecontainer {
	overflow: hidden;
}
</style>
























