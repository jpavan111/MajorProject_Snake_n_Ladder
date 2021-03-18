

	 var x = document.getElementById("myAudio"); 
     function playAudio() { 
                           x.play();
                    }
     
     
     
     /*/////////////////////////////////////////////////////////// */
     
     
    var position = 1;
    
    
 	var currentPosition = 1;
	var snakeAndLadderPos = [
	
	{old: 19, new: 38},
	{old: 11, new: 28},
	{old: 24, new: 6},
	{old: 15, new: 34},
	{old: 25, new: 44},
	{old: 59, new: 38},
	{old: 32, new: 53},
	{old: 50, new: 30},
	{old: 51, new: 72},
	{old: 68, new: 36},
	{old: 58, new: 65},
	{old: 59, new: 38},
	{old: 60, new: 79},
	{old: 94, new: 75},
	{old: 77, new: 98},
	{old: 76, new: 66},
	{old: 67, new: 88},
	{old: 91, new: 72},
	{old: 99, new: 78}
];



function moveCursor(digits) {
	var cursorElem = document.getElementById("cursor");
	var newPosElem = document.getElementById(position = position + digits);
	newPosElem.children[0].append(cursorElem);
	checkSnakeOrLadder();
	
	
 	document.getElementById("cursor").click(); 
	currentPosition = document.getElementById("cursor");
}




function checkSnakeOrLadder() {
	var cursorElem = document.getElementById("cursor");
	for(var i = 0; i < snakeAndLadderPos.length; i++){
		if(snakeAndLadderPos[i].old === position){
			position = snakeAndLadderPos[i].new;
			break;
		}
	}
	var newPosElem = document.getElementById(position);
	newPosElem.children[0].append(cursorElem);
}