package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Bd {
    
    private static ArrayList<Usuarios> usuarios = new ArrayList<>();
    public static ArrayList<Usuarios> getUsuarios() {
        return usuarios;
    }
    
    private static ArrayList<Usuarios> ponto = new ArrayList<>();
    public static ArrayList<Usuarios> getPonto() {
        return ponto;
    }
    
    private static ArrayList<Usuarios> total = new ArrayList<>();
    public static ArrayList<Usuarios> getTotal() {
        return total;
    }
    
}