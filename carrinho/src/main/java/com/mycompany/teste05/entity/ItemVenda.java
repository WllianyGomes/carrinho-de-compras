package com.mycompany.teste05.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author ana.araujo
 */
@Entity
@Table(name = "tb_itemvenda")
public class ItemVenda implements Serializable {

    @Id
    @GeneratedValue
    private Long id;

    private double quantidade;

    @OneToOne
    @JoinColumn(name = "cod_produto")
    private Produto produto;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(double quantidade) {
        this.quantidade = quantidade;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }
    
    public double total(){
        return produto.getPreco() * quantidade;
    }
}
