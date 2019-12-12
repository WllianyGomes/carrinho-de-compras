package com.mycompany.teste05.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import com.mycompany.teste05.dao.ProdutoDAO;
import com.mycompany.teste05.entity.Produto;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author beatriz.araujo
 */
@Controller
public class ProdutosController {
    
    @Inject
    ProdutoDAO dao;

    @Inject
    Result result;
    public void form() {

    }

    public List<Produto> lista() {
        return dao.lista();
    }
    
    public void salvar(Produto produto) {
        if (produto.getId() == null) {
            dao.add(produto);
        } else {
            dao.update(produto);
        }
        result.redirectTo(this).lista();
    }
    
    public void editar(Long id) {
        Produto produto = dao.buscarProduto(id);
        result.include(produto);
        result.of(this).form();
    }
    
    public void excluir(Long id) {
        dao.remove(id);
        result.redirectTo(this).lista();
    }
    
}
