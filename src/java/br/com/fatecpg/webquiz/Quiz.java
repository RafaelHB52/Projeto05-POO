package br.com.fatecpg.webquiz;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

public class Quiz {
    private static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();            
            test.add(new Question("1° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("2° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("3° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("4° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("5° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("6° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("7° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("8° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("9° pergunta", "resposta", new String[]{"A", "B", "C"}));
            test.add(new Question("10° pergunta", "resposta", new String[]{"A", "B", "C"}));
            
            // Embaralhando o quiz
            Collections.shuffle( test );
            
        }
        return test;
    }
}
