/**
 * 
 */
const imgsUrls = [
	"url('./image/visual/img_1.gif')",
	"url('./image/visual/img_2.jpg')",
	"url('./image/visual/img_3.gif')",
	"url('./image/visual/img_4.jpg')",
	"url('./image/visual/img_5.jpg')",
	"url('./image/visual/img_6.jpg')",
	"url('./image/visual/img_7.jpg')",
	"url('./image/visual/img_8.gif')",
	"url('./image/visual/img_9.gif')",
	"url('./image/visual/img_10.gif')",
	"url('./image/visual/img_11.jpg')",
	"url('./image/visual/img_12.jpg')",
	"url('./image/visual/img_13.jpg')",
	"url('./image/visual/img_14.gif')",
	"url('./image/visual/img_15.gif')"
];
	


var size = 415;
var delay = 3000;
var speed = 1000;
var timeout;
function imgLoading(){
	var lis=$(".imgs li")
	for(var i=0; i<imgsUrls.length; i++){
		lis.eq(i).find("a").css("background-image",imgsUrls[i]);
	}
}
$(function() {

	imgLoading();
	//처음시작은
	start();
	//브라우저의 visibilityState 가 변경될 때 실행되는 이벤트
	document.addEventListener("visibilitychange", function() {
		var state = document.visibilityState;
		console.log(state);
		if (state == "hidden") {
			stop();
		} else if (state == "visible") {
			start();
		}
	});

	timeout = setTimeout(next, delay);//3초후 실행

	$(".imgs").hover(function() {
		stop();
	}, function() {
		timeout = setTimeout(autoPlay, delay);
	});
});

function start() {
	timeout = setTimeout(autoPlay, delay);
}
function autoPlay() {
	console.log("timeout 시작");
	next();
	timeout = setTimeout(autoPlay, delay);
}
function stop() {
	clearTimeout(timeout);
	console.log("timeout 종료");
}

//다음이미지를 왼쪽으로 이동
function next() {
	var imgs = $(".imgs");
	var first = $(".imgs li:first-child");
	var last = $(".imgs li:last-child");
	imgs.animate({ left: -size }, speed, function() {
		//애미메이트가 실행 후에 처리하는 구간...
		last.after(first);//첫번째 이미지를 제일 뒤로 이동
		imgs.css("left", 0);

	});
}