import ASS_3.Checker;
import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.Test;
import Checker.Position;

public class CheckerTest {

	public int x, y, newX, newY, turn;
	public boolean end;

	//isOnBoard
	@Test
	public void isOnBoard1() {
		x = 1;
		y = 2;
		// newX = 1;
		// newY = 1;
		Position currentPosition = new Position(x, y);
		// Position newPosition = new Position(newX,newY);
		assertTrue("It is not on board.", currentPosition.isOnBoard());
	}

	/*
	@Test
	public void isOnBoard2() {
		x = -1;
		y = 1;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void isOnBoard3() {
		x = 1;
		y = -1;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void isOnBoard4() {
		x = 1;
		y = 99;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void isOnBoard5() {
		x = 99;
		y = 1;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void isOnBoard6() {
		x = 99;
		y = 99;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void isOnBoard7() {
		x = -1;
		y = -1;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void isOnBoard8() {
		x = -1;
		y = 99;
		Position currentPosition = new Position(x, y);
		assertFalse("It is on board.", currentPosition.isOnBoard());
	}

	@Test
	public void returnxy() {
		x = 1;
		y = 2;
		Position currentPosition = new Position(x, y);
		assertEquals(1, currentPosition.x());
		assertEquals(2, currentPosition.y());

	}

	@Test
	public void turnOfPlayer() {
		turn = 0;
		Player.turn = turn;
		assertEquals(0, Player.turn);
		// assertFalse("//", Player.turnOfPlayer());

		turn = 1;
		Player.turn = turn;
		assertEquals(1, Player.turn);
		turn = 2;
		Player.turn = turn;
		assertEquals(2, Player.turn);
		turn = 3;
		Player.turn = turn;
		assertEquals(3, Player.turnOfPlayer());
		turn = 4;
		Player.turn = turn;
		assertEquals(4, Player.turnOfPlayer());

		// turn = (Integer) null;
		// Player.turn = turn;
		// assertFalse("It is true", Player.turnOfPlayer());
	}

	@Test
	public void endGame() {
		end = false;
		Checker.end = end;
		Board.printInitialBoard();
		turn = 1;
		Player.turn = turn;
		x = 9;
		assertTrue("The game is not ended.", Checker.end = true);
		Checker.end = false;
		y = 9;
		assertTrue("The game is not ended.", Checker.end = true);
		Checker.end = false;
		newX = 9;
		assertTrue("The game is not ended.", Checker.end = true);
		Checker.end = false;
		newY = 9;
		assertTrue("The game is not ended.", Checker.end = true);

	}

	// Turn of PLayer 1
	@Test
	public void Turn1Piece1() {
		Board.printInitialBoard();
		turn = 1;
		Player.turn = turn;
		x = 3;
		y = 2;
		newX = 2;
		newY = 3;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(1, AbstractPiece.checkTurn());
		assertTrue("It is not owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertTrue("It is not a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertTrue("It is not a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();

	}

	@Test
	public void Turn1Piece2() {
		Board.printInitialBoard();
		turn = 1;
		Player.turn = turn;
		x = -1;
		y = 1;
		newX = -1;
		newY = 1;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(1, AbstractPiece.checkTurn());
		assertFalse("It is owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();
	}

	@Test
	public void Turn1Piece3() {
		Board.printInitialBoard();
		turn = 1;
		Player.turn = turn;
		x = 99;
		y = 1;
		newX = 99;
		newY = 1;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(1, AbstractPiece.checkTurn());
		assertFalse("It is owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();
	}

	@Test
	public void Turn1Piece4() {
		Board.printInitialBoard();
		turn = 1;
		Player.turn = turn;
		x = -1;
		y = 1;
		newX = 2;
		newY = 3;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(1, AbstractPiece.checkTurn());
		assertFalse("It is not owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();

	}

	@Test
	public void Turn1Piece5() {
		Board.printInitialBoard();
		turn = 1;
		Player.turn = turn;
		x = 2;
		y = 5;
		newX = 2;
		newY = 3;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(1, AbstractPiece.checkTurn());
		assertFalse("It is not owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();

	}

	// Turn of PLayer 2
	@Test
	public void Turn2Piece1() {
		Board.printInitialBoard();
		turn = 2;
		Player.turn = turn;
		x = 2;
		y = 5;
		newX = 1;
		newY = 4;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(2, AbstractPiece.checkTurn());
		assertTrue("It is not owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertTrue("It is not a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertTrue("It is not a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();

	}

	@Test
	public void Turn2Piece2() {
		Board.printInitialBoard();
		turn = 2;
		Player.turn = turn;
		x = -1;
		y = 1;
		newX = -1;
		newY = 1;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(2, AbstractPiece.checkTurn());
		assertFalse("It is owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();
	}

	@Test
	public void Turn2Piece3() {
		Board.printInitialBoard();
		turn = 2;
		Player.turn = turn;
		x = 99;
		y = 1;
		newX = 99;
		newY = 1;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(2, AbstractPiece.checkTurn());
		assertFalse("It is owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();
	}

	@Test
	public void Turn2Piece4() {
		Board.printInitialBoard();
		turn = 2;
		Player.turn = turn;
		x = -1;
		y = 1;
		newX = 1;
		newY = 4;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(2, AbstractPiece.checkTurn());
		assertFalse("It is not owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();

	}

	@Test
	public void Turn2Piece5() {
		Board.printInitialBoard();
		turn = 2;
		Player.turn = turn;
		x = 3;
		y = 2;
		newX = 1;
		newY = 4;
		Position currentPosition = new Position(x, y);
		Position newPosition = new Position(newX, newY);
		assertEquals(2, AbstractPiece.checkTurn());
		assertFalse("It is not owned by player 1.", AbstractPiece.checkPieceOwner(currentPosition));
		assertFalse("It is a valid positon.", AbstractPiece.isValidPosition(newPosition, currentPosition));
		assertFalse("It is a valid move.", AbstractPiece.move(newPosition, currentPosition));
		Board.printboard();

	}*/

}
