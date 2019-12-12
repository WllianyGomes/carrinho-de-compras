package com.mycompany.teste05.dao;

import com.mycompany.teste05.entity.Venda;
import java.util.List;
import javax.enterprise.context.Dependent;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author beatriz.araujo
 */
@Dependent
public class VendaDAO {
    
    @Inject
    EntityManager manager;
    
    public void add(Venda venda) {
        manager.getTransaction().begin();
        manager.persist(venda);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public void update(Venda venda) {
        manager.getTransaction().begin();
        manager.merge(venda);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public void remove(Long id) {
        manager.getTransaction().begin();
        Venda venda = manager.find(Venda.class, id);
        manager.remove(venda);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public List<Venda> lista() {
        manager.getTransaction().begin();
        Query query = manager.createQuery("from Venda");
        return query.getResultList();
    }
    
    public Venda buscarVenda(Long id){
        manager.getTransaction().begin();
        Venda venda = manager.find(Venda.class, id);
        return venda;
    }
}
