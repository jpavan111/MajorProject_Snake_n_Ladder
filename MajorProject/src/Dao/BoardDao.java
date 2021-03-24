package Dao;

import Entity.Cell;
import Entity.Ladder;
import Entity.Snake;

public class BoardDao {
	
	@SuppressWarnings("null")
	public Cell[] cellCreation()
	{
		Cell cells[] = new Cell[101];
		
		for (int i = 1; i < cells.length; i++)
		{ 
			cells[i] = new Cell(i);
		}
		
			cells[11].setLadder(new Ladder(11,28));
			
			cells[15].setLadder(new Ladder(15,34));
			
			cells[25].setLadder(new Ladder(25,44));
			
			cells[19].setLadder(new Ladder(19,38));
			
			cells[32].setLadder(new Ladder(32,53));
			
			cells[51].setLadder(new Ladder(51,72));
			
			cells[58].setLadder(new Ladder(58,65));
			
			cells[60].setLadder(new Ladder(60,79));
			
			cells[67].setLadder(new Ladder(67,88));
			
			cells[77].setLadder(new Ladder(77,98));
			
					
	
	
			cells[24].setSnake(new Snake(24,6));
			
			cells[50].setSnake(new Snake(50,30));
			
			cells[59].setSnake(new Snake(59,38));
			
			cells[68].setSnake(new Snake(68,36));
			
			cells[76].setSnake(new Snake(76,66));
			
			cells[91].setSnake(new Snake(91,72));
			
			cells[94].setSnake(new Snake(94,75));
			
			cells[99].setSnake(new Snake(99,78));
			
			
	
			return cells;
	}
}
