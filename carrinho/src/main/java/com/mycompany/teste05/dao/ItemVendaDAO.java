package com.mycompany.teste05.dao;

import com.mycompany.teste05.entity.ItemVenda;
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
public class ItemVendaDAO {
    
    @Inject
    EntityManager manager;

    public void add(ItemVenda item) {
        manager.getTransaction().begin();
        manager.persist(item);
        manager.getTransaction().commit();
        manager.close();
    }

    public void update(ItemVenda item) {
        manager.getTransaction().begin();
        manager.merge(item);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public void remove(Long id) {
        manager.getTransaction().begin();
        manager.remove(id);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public List<ItemVenda> lista() {
        manager.getTransaction().begin();
        Query query = manager.createQuery("from ItemVenda");
        return query.getResultList();
    }
    
    public ItemVenda buscarItem(Long id) {
        manager.getTransaction().begin();
        ItemVenda item = manager.find(ItemVenda.class, id);
        return item;
    }
}
