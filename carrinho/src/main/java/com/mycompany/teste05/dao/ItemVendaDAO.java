package com.mycompany.teste05.dao;

import com.mycompany.teste05.entity.ItemVenda;
import com.mycompany.teste05.util.JpaUtil;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author beatriz.araujo
 */

public class ItemVendaDAO {

    EntityManager manager;

    public void add(ItemVenda item) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        manager.persist(item);
        manager.getTransaction().commit();
        manager.close();
    }

    public void update(ItemVenda item) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        manager.merge(item);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public void remove(Long id) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        manager.remove(id);
        manager.getTransaction().commit();
        manager.close();
    }
    
    public List<ItemVenda> lista() {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        Query query = manager.createQuery("from ItemVenda");
        return query.getResultList();
    }
    
    public ItemVenda buscarItem(Long id) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        ItemVenda item = manager.find(ItemVenda.class, id);
        return item;
    }
}
