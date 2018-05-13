package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Bd {
    private static ArrayList<Usuario> Users;
    private static ArrayList<Quiz> QuizRealizado;
    
    private static ArrayList<Usuario> getUser(){
        if(Users == null){
            Users = new ArrayList<>();
        }
        return Users;
    }
    
    private static ArrayList<Quiz> getQuizRealizado(){
        if(QuizRealizado == null){
            QuizRealizado = new ArrayList<>();
        }
        return QuizRealizado;
    }
    
    public static boolean addUsuario(Usuario user){
        for(Usuario u: getUser()){
            if(u.getNome().equals(user.getNome()))
                return false;
        }
        Bd.getUser().add(user);
        return true;
    }
    
    public static boolean attMedia(String nomeUsuario, double acertos){
        int i = 0;
        for(Usuario u: getUser()){
            if(u.getNome().equals(nomeUsuario)){
                double media = 0;
                if(u.getMedia() == 0){
                    media = acertos;
                }else{
                    media = (u.getMedia() + acertos)/2;
                }
                u.setMedia(media);
                Bd.getUser().remove(i);
                Bd.getUser().add(i, u);
                return true;
            }
            i++;
        }
        return false;
    }
    
    public static double obterMedia(String nomeUsuario){
        for(Usuario u: getUser()){
            if(u.getNome().equals(nomeUsuario)){
                return u.getMedia();
            }
        }
        return -1;
    }
    
    public static boolean addQuizRealizado(Quiz quiz){
        Bd.getQuizRealizado().add(quiz);
        return true;
    }
    
    public static Usuario getUsuario(int i){
        return Bd.getUser().get(i);
    }
    
    public static int TotalUsuario(){
        return Bd.getUser().size();
    }
    
    public static Quiz getQuizRealizado(int i){
        return Bd.getQuizRealizado().get(i);
    }
    
    public static int totalQuizRealizado(){
        return Bd.getQuizRealizado().size();
    }
}
