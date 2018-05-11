package br.com.fatecpg.webquiz;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

public class Quiz {
    private static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();            
            test.add(new Question("Qual é o maior planeta do Sistema Solar?", "Júpiter", new String[]{"Saturno", "Urano", "Júpiter"}));
            test.add(new Question("Quantos planetas podem ser vistas a olho nu da Terra?", "5", new String[]{"9", "5", "7"}));
            test.add(new Question("Qual é a temperatura aproximadamente da superfície solar?", "5500°C", new String[]{"8000°C", "6500°C", "5500°C"}));
            test.add(new Question("Quantas Luas podem ser vistas de Júpiter, o planeta do Sistema Solar com o maior número de Luas?", "63", new String[]{"62", "63", "65"}));
            test.add(new Question("Qual é o menor planeta do Sistema Solar?", "Mercúrio", new String[]{"Terra", "Mercúrio", "Netuno"}));
            test.add(new Question("Quais são os dois principais componentes do Sol?", "Hidrogênio e Hélio", new String[]{"Gás Carbônico e Hélio", "Ferro e Níquel", "Hidrogênio e Hélio"}));
            test.add(new Question("Quantas estrelas formam a famosa constelação Cruzeiro do Sul?", "54", new String[]{"54", "62", "41"}));
            test.add(new Question("Quantas planetas têm no Sistema Solar atualmente?", "8", new String[]{"8", "9", "7"}));
            test.add(new Question("Em qual planeta está o maior vulcão do universo conhecido pelo homem? Ele tem o nome de 'Monte Olimpo'", "Marte", new String[]{"Vênus", "Marte", "Terra"}));
            test.add(new Question("Quantos anos Netuno leva para completar uma volta em torno do Sol?", "163", new String[]{"177", "163", "220"}));       
        }
        return test;
    }
}
