
//package week2;

import java.util.Random;

// ...
// write here all missing classes
//car, score, random(), obstacle(truck/ pillar/ life/ setintensity)
// ...

public class CarCollisionGame {
	public static class Obstacle {

		public int effect = 1;
		public int after_effect;

		public void setIntensity(int input) {
			after_effect = this.effect * input;

		}
	}

	public static class Truck extends Obstacle {
		Truck() {
			this.effect = -1;
		}
	}

	public static class Pillar extends Obstacle {
		Pillar() {
			this.effect = -1;
		}
	}

	public static class Life extends Obstacle {
		Life() {
			this.effect = 1;
		}
	}

	public static class Car {
		public int lives;

		public void setLives(int set_lives) {
			lives = set_lives;
		}

		public Boolean hasLives() {
			if (lives > 0) {
				return true;
			}
			return false;
		}

		public int getLives() {
			return lives;
		}

		public void hit(Obstacle temp) {
			this.lives = this.lives + temp.after_effect;
		}
	}

	public static class Score {
		int score = 0;

		public void increment() {
			score++;
		}

	}

	public static void main(String[] args) {

		Random random = new Random();
		Car c = new Car();
		c.setLives(10);
		Score s = new Score();
		while (c.hasLives()) {
			if (random.nextDouble() < .75) {
				System.out.println("Ouch! Obstacle hit!");
				Obstacle o = null;
				double r = random.nextDouble();
				if (r < 0.4) {
					o = new Truck(); // this should decrease the number of lives
					System.out.println("  That was a truck!");
				} else if (r > 0.6) {
					o = new Pillar(); // this should decrease the number of lives
					System.out.println("  That was a pillar!");
				} else {
					o = new Life(); // this should increase the number of lives
					System.out.println("  That was a new life! Hurray :)");
				}
				o.setIntensity(1 + random.nextInt(3));
				c.hit(o);
				System.out.println("  Car has now " + c.getLives() + " lives");
			} else {
				System.out.println("No obstacles hit");
			}
			s.increment();
		}

		System.out.println("Game over");
		// System.out.println("Final score is " + s);
	}
}