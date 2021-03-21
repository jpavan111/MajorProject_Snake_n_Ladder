package game1;

import java.util.Scanner;


class Player {

int position;
	
	public Player( int position )
	{
		this.position = position;
	}
	
	}
class Snake {

	int initialPosition;
	int finalPosition;
	
	public Snake( int initialPosition, int finalPosition )
	{
		this.initialPosition = initialPosition;
		this.finalPosition = finalPosition;
	}
}
class Ladder {

	int initialPosition;
	int finalPosition;
	
	public Ladder( int initialPosition, int finalPosition )
	{
		this.initialPosition = initialPosition;
		this.finalPosition = finalPosition;
	}
}

class Tile {

	int value;
	Snake snake;
	Ladder ladder;
	
	public Tile( int value, Snake snake, Ladder ladder )
	{
		this.value = value;
		this.snake = snake;
		this.ladder = ladder;
	}
	
}

class Dice {

	int value;
	public Dice()
	{
		this.value = 0;
	}
	
	public int getDiceValue()
	{
		double rand = Math.random();
		this.value = (int)(1+rand*6);
		return this.value;
	}
	
}


class Board {

	
	private Tile[][] tile = new Tile[10][10];
	Player player1;
	Dice dice;
	
	public Board()
	{
		int BlockValue = 100;
			for( int j = 0; j<=9; j++ )
			{
				tile[0][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue-1;
			}
			
			BlockValue = 81;
			for( int j = 0; j<=9; j++ )
			{
				tile[1][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue+1;
			}
			
			BlockValue = 80;
			for( int j = 0; j<=9; j++ )
			{
				tile[2][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue-1;
			}
			
			BlockValue = 61;
			for( int j = 0; j<=9; j++ )
			{
				tile[3][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue+1;
			}
			
			BlockValue = 60;
			for( int j = 0; j<=9; j++ )
			{
				tile[4][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue-1;
			}
			
			BlockValue = 41;
			for( int j = 0; j<=9; j++ )
			{
				tile[5][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue+1;
			}
			
			BlockValue = 40;
			for( int j = 0; j<=9; j++ )
			{
				tile[6][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue-1;
			}
			
			BlockValue = 21;
			for( int j = 0; j<=9; j++ )
			{
				tile[7][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue+1;
			}
			
			BlockValue = 20;
			for( int j = 0; j<=9; j++ )
			{
				tile[8][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue-1;
			}
			
			BlockValue = 1;
			for( int j = 0; j<=9; j++ )
			{
				tile[9][j] = new Tile( BlockValue, null, null );
				BlockValue = BlockValue+1;
			}
		
		Player player1 = new Player( 1 );
		this.player1 = player1;
		
		
		
		Snake snake1 = new Snake( 17, 7 );
		tile[8][3].snake = snake1;
		
		Snake snake2 = new Snake( 64, 60 );
		tile[3][3].snake = snake2;
		
		Snake snake3 = new Snake( 89, 26 );
		tile[1][8].snake = snake3;
		
		Snake snake4 = new Snake( 94, 75 );
		tile[0][5].snake = snake4;
		
		Snake snake5 = new Snake( 99, 78 );
		tile[0][1].snake = snake5;
		
		
		Ladder ladder1 = new Ladder( 4, 14 );
		tile[9][3].ladder = ladder1;
		
		Ladder ladder2 = new Ladder( 20, 38 );
		tile[8][0].ladder = ladder2;
		
		Ladder ladder3 = new Ladder( 28, 84 );
		tile[7][7].ladder = ladder3;
		
		Ladder ladder4 = new Ladder( 51, 67 );
		tile[4][9].ladder = ladder4;
		
		Ladder ladder5 = new Ladder( 63, 81 );
		tile[3][2].ladder = ladder5;
		
		
		Dice dice = new Dice();
		this.dice = dice;
	}
	
	public void display()
	{
		System.out.println( "'=' stands for Ladder's foot" );
		System.out.println( "'*' stands for Snake's Mouth" );
		System.out.println( "" );
		
		for( int i = 0; i<10; i++ )
		{
			for( int j = 0; j<10; j++ )
			{
				if( tile[i][j].snake == null && tile[i][j].ladder == null )
				{
					if( tile[i][j].value == 100 )
						System.out.print( tile[i][j].value+" " );
					else if( tile[i][j].value>=11 && tile[i][j].value<=99  )
						System.out.print( tile[i][j].value+"  " );
					else if( tile[i][0].value == 1 )
						System.out.print( tile[i][j].value+"  " );
				}
				else if( tile[i][j].snake == null && tile[i][j].ladder != null )
				{
						System.out.print( "=   " );
				}
				else if( tile[i][j].snake != null && tile[i][j].ladder == null )
				{
						System.out.print( "*   " );
				}
			}
			System.out.println("");
		}
		System.out.println("");
	}
	
	public boolean gameOver()
	{
		if( this.player1.position == 100 )
		{
			System.out.println( "Congrats! Player1 won!" );
			return true;
		}
		
		else
		{
			return false;
		}
	}
	
	public void throwDice( String plyr )
	{
		int d_value = dice.getDiceValue();
		System.out.println( "Random Dice Value generated = "+d_value );
		System.out.println("");
		
		if( plyr.equals("player1") )
		{
			int temp = this.player1.position;
			if( this.player1.position+d_value>100 )
			{
				temp = this.player1.position;
			}
			else
			{
				temp = this.player1.position+d_value;
			}
				
			int i = iIndexOfTile( temp );
			int j = jIndexOfTile( temp );
			if( ( tile[i][j].ladder == null ) && ( tile[i][j].snake == null ) )
			{
				if( ( this.player1.position+d_value ) <= 100 )
					this.player1.position = this.player1.position+d_value;
		
				System.out.println( "Player1's Current Position = "+this.player1.position );
				System.out.println(" Your Question is ......");
				
			}
			else if( ( tile[i][j].ladder != null ) && ( tile[i][j].snake == null ) )
			{
				System.out.println( "Congrats Player1 You Got Ladder" );
				this.player1.position = tile[i][j].ladder.finalPosition;
				System.out.println( "Player1's Current Position = "+this.player1.position );
				System.out.println(" Your Question is ......");
				
			}
			else if( ( tile[i][j].ladder == null ) && ( tile[i][j].snake != null ) )
			{
				System.out.println( "Oops! Player1 You Got Snake Bite!" );
				this.player1.position = tile[i][j].snake.finalPosition;
				System.out.println( "Player1's Current Position = "+this.player1.position );
				System.out.println(" Your Question is ......");
				
			}
		}
	}
	
	private int iIndexOfTile( int x )
	{
		for( int i = 0; i<10; i++ )
		{
			for( int j = 0; j<10; j++ )
			{
				if( this.tile[i][j].value == x )
				{
					return i;
				}
			}
		}
		return -1;
	}
	
	private int jIndexOfTile( int y )
	{
		for( int i = 0; i<10; i++ )
		{
			for( int j = 0; j<10; j++ )
			{
				if( this.tile[i][j].value == y )
				{
					return j;
				}
			}
		}
		return -1;
	}
	
}
	

public class GamePlay {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Board B = new Board();
		int n;
		
		boolean Player1Turn = true;
		B.display();
		System.out.println( "Player1's Current Position = "+B.player1.position );
		
		while( !B.gameOver() )
		{
			if( Player1Turn )
			{
				Player1Turn = false;
				System.out.println( "To throw dice Enter 1\nTo quit game Enter 0\n" );
				n = sc.nextInt();
				if( n == 1 )
				{
					B.display();
					B.throwDice( "player1" );
				}
				else if( n == 0 )
				{
					System.exit(0);
				}
				else
				{
					System.out.println( "Invalid Response!\n" );
					Player1Turn = true;
				}
			}
			else
			{
				Player1Turn = true;
				System.out.println( "To throw dice Enter 1\nTo quit game Enter 0\n" );
				n = sc.nextInt();
				if( n == 1 )
				{
					B.display();
					B.throwDice( "player1" );
				}
				else if( n == 0 )
				{
					System.exit(0);
				}
				else
				{
					System.out.println( "Invalid Response!" );
					Player1Turn = false;
				}
				
			}
		}
		
	}

}
