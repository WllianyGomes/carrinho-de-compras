package com.mycompany.teste05.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author beatriz.araujo
 */
public class JpaUtil {
    static EntityManagerFactory factory;
    
    static {
        factory = Persistence.createEntityManagerFactory("teste05");
    }
    
    public static EntityManager getEntityManager(){
        return factory.createEntityManager();
    }
    
    public static void close() {
        factory.close();
    }
}
