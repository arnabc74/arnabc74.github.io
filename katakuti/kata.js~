      board = [ [-1,-1,-1], [-1,-1,-1], [-1,-1,-1] ]
      s = 1
      count = 0
      function myfun(row,col) {
	  if (board[row][col] != -1) {
	      alert("WARNING-do not cheat!")
	      return
	  }
	  y = document.getElementById("cell"+row+col)
	  if(s == 1) {
	      y.innerHTML = "<img src=cross.png></img>"
	      board[row][col] = 1
	      s=0
	  } 
	  else{
	      y.innerHTML = "<img src=zero.png></img>"
	      board[row][col] = 0
	      s = 1
	  }
	  count = count + 1
	  if (checkWin() == true) {
	      if( winner == 1){
		  who="cross"
		  player= u
		  
	      }
	      else {
		  who="zero"
		  player= a
	      }
	      
	      a = document.getElementById("line")
	      a.innerHTML = "<img src="+line+"></img>"
	      x = document.getElementById("result")
	      x.innerHTML =  "<font size=+5>CONGRATULATION:"+player+" has won with <img src= "+who+".png width = 50 ></img></font>."
	      m = document.getElementById("music")
	      m.play()
	  }
	  else if (count == 9) {
	      x = document.getElementById("result")
	      x.innerHTML =  "<font size=+5><blink>DRAW</blink></font>."
	  }
	 
      }
      winner = -1
      function checkWin() {
	  if(board[0][0]!=-1 && board[0][0] == board[0][1] &&  board[0][1] == board[0][2]) {
	      winner = board[0][0]
	      line ="winRow0.png"
	      return true 
	  }
          else if(board[1][0]!=-1 && board[1][0] == board[1][1] &&  board[1][1] == board[1][2]) {
	      winner = board[1][1]
	      line ="winRow1.png"
	      return true 
	  }
          else if(board[2][0]!=-1 && board[2][0] == board[2][1] &&  board[2][1] == board[2][2]) {
	      winner = board[2][2]
	      line ="winRow2.png"
	      return true 
	  }
          else if(board[0][0]!=-1 && board[0][0] == board[1][0] &&  board[1][0] == board[2][0]) {
	      winner = board[1][0]
	      line ="wincol0.png"
	      return true 
	  }
          else if(board[0][1]!=-1 && board[0][1] == board[1][1] &&  board[1][1] == board[2][1]) {
	      winner = board[1][1]
	      line ="wincol1.png"
	      return true 
	  }
          else if(board[0][2]!=-1 && board[0][2] == board[1][2] &&  board[1][2] == board[2][2]) {
	      winner = board[1][2]
	      line ="wincol2.png"
	      return true 
	  }
         else if(board[0][0]!=-1 && board[0][0] == board[1][1] &&  board[1][1] == board[2][2]) {
	     winner = board[1][1]
	     line ="windiag2.png"
	     return true 
	  }
          else if(board[0][2]!=-1 && board[0][2] == board[1][1] &&  board[1][1] == board[2][0]) {
	      winner = board[1][1]
	      line ="windiag1.png"
	      return true 
	  }
	  else {
	      return false
	  }
      }
      function getuser() {
          u =  document.getElementById("name1").value
	  a =  document.getElementById('name2').value
      }
