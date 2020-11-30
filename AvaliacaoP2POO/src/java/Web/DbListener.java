/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import disciplinaPkg.Disciplina;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author Daniel
 */
public class DbListener implements ServletContextListener {

    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String DB_URL = "jdbc:sqlite:disciplinas0.db";
    
    public static String exceptionMessage = null;

  
    Connection con = null;
    Statement stmt = null;
    Exception methodEx = null;
    ResultSet rs = null;
    
    
    
    public static Connection getConection() throws Exception{
        return DriverManager.getConnection(DB_URL);
    }
    
    @Override
    public void contextInitialized(ServletContextEvent sce) { 
        String etapa = "inicializando";
        
        
        try {
            etapa="registrando a classe do drive";
            Class.forName(CLASS_NAME);
            etapa = "conectando com o banco de dados";
            con = getConection();;
            stmt = con.createStatement();
            etapa = "criar tabela";
            stmt.execute(Disciplina.getCreatStatement());
            if(Disciplina.getList().isEmpty()){
                etapa = "criar disciplinas";
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Banco de Dados',"
                        +"'Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional,  Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.',"
                        +"4,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Sociedade e Tecnologia',"
                        +"'Comunicação e Informação – conceitos e implicações no mundo contemporâneo; Da Cultura de Massa à Cultura Digital – novas formas de socialização da informação e  novos desafios na comunicação. Tecnologia e Sociedade - Problemas humanos e sociais referentes à utilização da tecnologia da informação e da computação: aspectos humanos da segurança e privacidade das informações e aspectos econômicos e éticos da utilização dos computadores.',"
                        +"3,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Programação Orientada a Objetos',"
                        +"'Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.',"
                        +"4,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Engenharia de Software 3',"
                        +"'Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.',"
                        +"4,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Linguagem de Programação 4',"
                        +"'Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional,  Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.',"
                        +"4,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Sistemas Operacionais 2',"
                        +"'Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.  Elaboração de projetos de seleção e implantação de um sistema operacional.',"
                        +"4,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Metodologia da Pesquisa',"
                        +"'O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa experimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da ABNT.',"
                        +"4,"
                        +"10"
                        +")"
                );
                stmt.execute("INSERT INTO disciplinas values ("
                        +"'Segurança da Informação',"
                        +"'Requisitos de segurança de aplicações, de base de dados e de comunicações. Segurança de dispositivos móveis. Políticas de segurança. Criptografia. Firewalls. Vulnerabilidades e principais tecnologias de segurança.',"
                        +"4,"
                        +"10"
                        +")"
                );
            }
    
        } catch (Exception ex) {
            exceptionMessage = etapa + ": " + ex.getLocalizedMessage();
        }finally{
            try {stmt.close();con.close();}catch (Exception e) { }
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}