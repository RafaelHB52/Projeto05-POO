package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Bd {
    private static ArrayList<Usuario> usuario = new ArrayList<>();
    
    public static ArrayList<Usuario> getUsuario() {
        return usuario;
    }
            
}
