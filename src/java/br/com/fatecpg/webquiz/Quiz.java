package br.com.fatecpg.webquiz;

import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
            test.add(new Question("1+1", "2", new String[]{"1", "2", "3"}));
        }
        return test; 
    }
}
