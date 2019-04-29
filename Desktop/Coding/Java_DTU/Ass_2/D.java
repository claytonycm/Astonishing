
class A {
    public int m() {
        return 1;
    }

    public char n() {
        return 'A';
    }
}

class B extends A {

    public char n() {
        return 'B';
    }
}

class C extends B {

    public int m() {
        return 3;
    }
}

public class D extends C {
    public int m() {
        return super.m();
    }

    public char n() {
        return super.n();
    }

    public static void main(String args[]) {
        A ref = new D();
        System.out.println(ref.m() + " " + ref.n()); // prints 3 B
        ref = new C();
        System.out.println(ref.m() + " " + ref.n()); // prints 3 B
        ref = new B();
        System.out.println(ref.m() + " " + ref.n()); // prints 1 B
    }
}