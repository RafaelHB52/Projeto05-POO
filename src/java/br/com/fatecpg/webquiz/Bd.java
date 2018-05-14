package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Bd {
    private static ArrayList<Usuario> user = new ArrayList<>();

    public static ArrayList<Usuario> getUser() {
        return user;
    }
}