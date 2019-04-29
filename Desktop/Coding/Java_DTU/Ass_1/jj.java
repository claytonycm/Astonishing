import java.util.Scanner;

public class jj {

    public static void init_map(String arr[][]) {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 8; j++) {
                if ((i + j) % 2 == 1) {
                    arr[i][j] = "1";
                } else
                    arr[i][j] = " ";

            }
        }
        for (int i = 3; i < 5; i++) {
            for (int j = 0; j < 8; j++) {
                arr[i][j] = " ";
            }
        }
        for (int i = 5; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                if ((i + j) % 2 == 1) {
                    arr[i][j] = "2";
                } else
                    arr[i][j] = " ";

            }
        }
    }

    public static void print_map(String arr[][]) {
        System.out.println("01234567  <-  X-axis");
        System.out.println("--------");
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                System.out.print(arr[i][j]);
                if (j == 7) {
                    System.out.println("|  " + i);
                }

            }
        }
        System.out.println("--------");
        System.out.println("01234567");
    }

    public static void move(String arr[][], String current, Boolean still_play) {
        Scanner s = new Scanner(System.in);

        int nx, ny = 0;
        int dist_x, dist_y = 0;

        System.out.println("Turn of player no." + current);

        System.out.println("Coordinate of piece to move");
        System.out.print("Enter Y: ");
        int x = s.nextInt();
        System.out.print("Enter X: ");
        int y = s.nextInt();

        while (current != arr[x][y]) {
            System.out.println("It is not yours! Coordinate of piece to move");
            System.out.print("Enter Y: ");
            x = s.nextInt();
            System.out.print("Enter X: ");
            y = s.nextInt();
        }

        do {
            System.out.println("Coordinate of new position");
            System.out.print("Enter Y: ");
            nx = s.nextInt();
            System.out.print("Enter X: ");
            ny = s.nextInt();
            dist_x = (nx - x) * (nx - x);
            dist_y = (ny - y) * (ny - y);
        } while (dist_x != 1 || dist_y != 1 || arr[nx][ny] != " " || nx < 0 || nx > 7 || ny < 0 || ny > 7);

        arr[nx][ny] = current;
        arr[x][y] = " ";
        System.out.println("Piece moved!");
        System.out.println();

        
    }

    public static void main(String[] args) {
        String arr[][] = new String[8][8];
        init_map(arr);
        print_map(arr);
        Boolean still_play = true;
        String current;
        int count = 0;
        while (still_play) {
            if (count % 2 == 1) {
                current = "2";
            } else {
                current = "1";
            }
            count++;
            move(arr, current, still_play);
            print_map(arr);
            System.out.println("Ctrl-C if you want to stop.");
            System.out.println();
        }
    }

}