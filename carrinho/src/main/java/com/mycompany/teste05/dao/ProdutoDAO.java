package com.mycompany.teste05.dao;

import com.mycompany.teste05.entity.Produto;
import com.mycompany.teste05.util.JpaUtil;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author beatriz.araujo
 */
public class ProdutoDAO {

    EntityManager manager;

    public void add(Produto produto) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        manager.persist(produto);
        manager.getTransaction().commit();
        manager.close();
    }

    public void update(Produto produto) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        //manager.refresh(produto);
        manager.merge(produto);
        manager.getTransaction().commit();
        manager.close();        
    }

    public void remove(Long id) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        Produto produto = manager.find(Produto.class, id);
        manager.remove(produto);
        manager.getTransaction().commit();
        manager.close();
    }

    public List<Produto> lista() {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        Query query = manager.createQuery("from Produto");
        return query.getResultList();
    }
    
    public Produto buscarProduto(Long id) {
        manager = JpaUtil.getEntityManager();
        manager.getTransaction().begin();
        Produto produto = manager.find(Produto.class, id);
        return produto;
    }
}
