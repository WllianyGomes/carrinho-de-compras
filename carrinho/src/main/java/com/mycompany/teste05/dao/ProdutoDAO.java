package com.mycompany.teste05.dao;

import com.mycompany.teste05.entity.Produto;
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
public class ProdutoDAO {
    
    @Inject
    EntityManager manager;

    public void add(Produto produto) {
        manager.getTransaction().begin();
        manager.persist(produto);
        manager.getTransaction().commit();
        manager.close();
    }

    public void update(Produto produto) {
        manager.getTransaction().begin();
        //manager.refresh(produto);
        manager.merge(produto);
        manager.getTransaction().commit();
        manager.close();        
    }

    public void remove(Long id) {
        manager.getTransaction().begin();
        Produto produto = manager.find(Produto.class, id);
        manager.remove(produto);
        manager.getTransaction().commit();
        manager.close();
    }

    public List<Produto> lista() {
        manager.getTransaction().begin();
        Query query = manager.createQuery("from Produto");
        return query.getResultList();
    }
    
    public Produto buscarProduto(Long id) {
        manager.getTransaction().begin();
        Produto produto = manager.find(Produto.class, id);
        return produto;
    }
}
