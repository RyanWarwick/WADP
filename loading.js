$(document).ready(function () {
   

    if (sessionStorage.getItem("hasCodeRunBefore") === null) {
        /** Your code here. **/
      
 	var width = $(window).width();
        var height = $(window).height();
if (width>=1000)
{
	$('#loading1').css({"height":"33.3%"});
	$('#loading2').css({"height":"33.3%"});
	$('#loading3').css({"height":"33.3%"});
	$('#loading4').css({"height":"33.3%"});
	$('#loading5').css({"height":"33.3%"});
	$('#loading6').css({"height":"33.3%","top":"33.3%"});
	$('#loading7').css({"height":"33.3%","top":"33.3%"});
	$('#loading8').css({"height":"33.3%","top":"33.3%"});
	$('#loading9').css({"height":"33.3%","top":"33.3%"});
	$('#loading10').css({"height":"33.3%","top":"33.3%"});
	$('#loading11').css({"top":"66.6%","height":"71.5%"});
	$('#loading12').css({"top":"66.6%","height":"71.5%"});
	$('#loading13').css({"top":"66.6%","height":"71.5%"});
	$('#loading14').css({"top":"66.6%","height":"71.5%"});
	$('#loading15').css({"top":"66.6%","height":"71.5%"});

}      
else
{
      $('#loading1').css({"height":"15%"});
	$('#loading2').css({"height":"15%"});
	$('#loading3').css({"height":"15%"});
	$('#loading4').css({"height":"15%"});
	$('#loading5').css({"height":"15%"});
	$('#loading6').css({"height":"15%","top":"15%"});
	$('#loading7').css({"height":"15%","top":"15%"});
	$('#loading8').css({"height":"15%","top":"15%"});
	$('#loading9').css({"height":"15%","top":"15%"});
	$('#loading10').css({"height":"15%","top":"15%"});
	$('#loading11').css({"top":"30%","height":"72.5%"});
	$('#loading12').css({"top":"30%","height":"72.5%"});
	$('#loading13').css({"top":"30%","height":"72.5%"});
	$('#loading14').css({"top":"30%","height":"72.5%"});
	$('#loading15').css({"top":"30%","height":"72.5%"});
	
}

	
$('#logo').css({"width": $('#loading8').width(),"height": $('#loading8').height(),opacity:0.0});

	$('.slider1').animate({width: $('#loading1').width()},{duration: 200,complete: test2 });
	
	$('.slider6').animate({width: $('#loading6').width()},{duration: 200,complete: test7});

	

function test2() {
	$('.sliderup11').animate({height: $('#loading11').height()},{duration: 250,complete: sliderup6 });
        $('.sliderup12').animate({height: $('#loading12').height()},{duration: 250,complete: sliderup7 });
	$('.sliderup13').animate({height: $('#loading13').height()},{duration: 250,complete: sliderup8});
	$('.sliderup14').animate({height: $('#loading14').height()},{duration: 250,complete: sliderup9 });
	$('.slider2').animate({width: $('#loading2').width()},{duration: 200,complete: test3});
	
};

function test3() {
	$('.slider3').animate({width: $('#loading3').width()},{duration: 200,complete: test4});
	};

function test4() {
	$('.slider4').animate({width: $('#loading4').width()},{duration: 200,complete: test5});
	};

function test5() {
	$('.slider5').animate({width: $('#loading5').width()},200);
	};
	
function test7() {
	$('.slider7').animate({width: $('#loading7').width()},{duration: 200,complete: test8});
	};

function test8() {
	$('.slider8').animate({width: $('#loading8').width()},{duration: 200,complete: test9});
        };
function test9() {
	$('.slider9').animate({width: $('#loading9').width()},{duration: 200,complete: test10});
	};

function test10() {
	$('.slider10').animate({width: $('#loading10').width()},200);
	};



function sliderup6() {

	$('.sliderup6').animate({height: $('#loading6').height()},{duration: 250,complete: sliderup1});
	
	};
	
function sliderup1() {

	$('.sliderup1').animate({height: $('#loading1').height()},250);
	
	};


function sliderup7() {

	$('.sliderup7').animate({height: $('#loading7').height()},{duration: 250,complete: sliderup2});
	
	};
function sliderup8() {

	$('.sliderup8').animate({height: $('#loading8').height()},{duration: 250,complete: sliderup3});
	
	};
function sliderup9() {

	$('.sliderup9').animate({height: $('#loading9').height()},{duration: 250,complete: sliderup4});
	
	};
function sliderup2() {

	$('.sliderup2').animate({height: $('#loading2').height()},250);
	
	};
function sliderup3() {

	$('.sliderup3').animate({height: $('#loading3').height()},250);

	
	};
function sliderup4() {

	$('.sliderup4').animate({height: $('#loading4').height()},{duration: 250,complete: logofade});
	
	};

function logofade() {
    $('#logo').css({ "display": "inline" });
    $('#logo').animate({  opacity: 1},{duration: 750,complete: flip1});
	
	
}

function flip1() {
        flip15();
	$('#loading1').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
        setTimeout(flip2,50);
}

function flip15() {
	$('#loading15').css({"transform": "rotateY(-90deg)","transition": "all 0.5s ease-in-out"});
 	setTimeout(flip14,50);
}

function flip2() {
        
	$('#loading2').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	setTimeout(flip3,50);
}


function flip3() {
        
	$('#loading3').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
        setTimeout(flip4,50);
}


function flip4() {
        
	$('#loading4').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(flip5,50);
}


function flip5() {
        
	$('#loading5').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(flip6,50);
}

function flip6() {
        
	$('#loading6').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(flip7,50);
}

function flip7() {
        
	$('#loading7').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(fliplogo,300);
}

function fliplogo() {
	$('#logo').animate({opacity:0.0},150);
        $('#loading8').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	$('#logo').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 
}

function flip12() {
        
	$('#loading12').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	setTimeout(flip11,50);
}


function flip13() {
        
	$('#loading13').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
        setTimeout(flip12,50);
}


function flip14() {
        
	$('#loading14').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(flip13,50);
}


function flip9() {
        
	$('#loading9').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 
}

function flip10() {
        
	$('#loading10').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(flip9,50);
}

function flip11() {
        
	$('#loading11').css({"transform": "rotateY(90deg)","transition": "all 0.5s ease-in-out"});
	 setTimeout(flip10,50);
}
sessionStorage.setItem("hasCodeRunBefore", true);
}

});

$(window).resize(function () {
    if (sessionStorage.getItem("hasCodeRunBefore") === null) {
	var width = $(window).width();
        var height = $(window).height();
if (width>=1000)
{
	$('#loading1').css({"height":"33.3%"});
	$('#loading2').css({"height":"33.3%"});
	$('#loading3').css({"height":"33.3%"});
	$('#loading4').css({"height":"33.3%"});
	$('#loading5').css({"height":"33.3%"});
	$('#loading6').css({"height":"33.3%","top":"33.3%"});
	$('#loading7').css({"height":"33.3%","top":"33.3%"});
	$('#loading8').css({"height":"33.3%","top":"33.3%"});
	$('#loading9').css({"height":"33.3%","top":"33.3%"});
	$('#loading10').css({"height":"33.3%","top":"33.3%"});
	$('#loading11').css({"top":"66.6%"});
	$('#loading12').css({"top":"66.6%"});
	$('#loading13').css({"top":"66.6%"});
	$('#loading14').css({"top":"66.6%"});
	$('#loading15').css({"top":"66.6%"});

}      
else
{
        $('#loading1').css({"height":"15%"});
	$('#loading2').css({"height":"15%"});
	$('#loading3').css({"height":"15%"});
	$('#loading4').css({"height":"15%"});
	$('#loading5').css({"height":"15%"});
	$('#loading6').css({"height":"15%","top":"15%"});
	$('#loading7').css({"height":"15%","top":"15%"});
	$('#loading8').css({"height":"15%","top":"15%"});
	$('#loading9').css({"height":"15%","top":"15%"});
	$('#loading10').css({"height":"15%","top":"15%"});
	$('#loading11').css({"top":"30%"});
	$('#loading12').css({"top":"30%"});
	$('#loading13').css({"top":"30%"});
	$('#loading14').css({"top":"30%"});
	$('#loading15').css({"top":"30%"});

	
}


        $('#logo').css({"width": $('#loading8').width(),"height": $('#loading8').height()});
    	$('.slider1').css({"width": $('#loading1').width()});
        $('.slider2').css({"width": $('#loading2').width()});
	$('.slider3').css({"width": $('#loading3').width()});
	$('.slider4').css({"width": $('#loading4').width()});
	$('.slider5').css({"width": $('#loading5').width()});
	$('.slider6').css({"width": $('#loading6').width()});
	$('.slider1').css({"width": $('#loading7').width()});
	$('.slider7').css({"width": $('#loading8').width()});
	$('.slider9').css({"width": $('#loading9').width()});
	$('.slider10').css({"width": $('#loading10').width()});
	$('.sliderup1').css({"height": $('#loading1').height()});
	$('.sliderup2').css({"height": $('#loading2').height()});
	$('.sliderup3').css({"height": $('#loading3').height()});
	$('.sliderup4').css({"height": $('#loading4').height()});
	$('.sliderup5').css({"height": $('#loading5').height()});
	$('.sliderup6').css({"height": $('#loading6').height()});
	$('.sliderup7').css({"height": $('#loading7').height()});
	$('.sliderup8').css({"height": $('#loading8').height()});
	$('.sliderup9').css({"height": $('#loading9').height()});
	$('.sliderup10').css({"height": $('#loading10').height()});
	$('.sliderup11').css({"height": $('#loading11').height()});
	$('.sliderup12').css({"height": $('#loading12').height()});
	$('.sliderup13').css({"height": $('#loading13').height()});
	$('.sliderup14').css({"height": $('#loading14').height()});
	$('.sliderup15').css({"height": $('#loading15').height()});
	localStorage.setItem("hasCodeRunBefore", true);
}
}); 

