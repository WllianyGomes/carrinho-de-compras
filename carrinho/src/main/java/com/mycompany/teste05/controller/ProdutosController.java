package com.mycompany.teste05.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import com.mycompany.teste05.dao.ProdutoDAO;
import com.mycompany.teste05.entity.Produto;
import java.util.List;

/**
 *
 * @author beatriz.araujo
 */
@Controller
public class ProdutosController {

    ProdutoDAO dao = new ProdutoDAO();

    public void form() {

    }

    public List<Produto> lista() {
        return dao.lista();
    }
    
    public void salvar(Produto produto, Result result) {
        if (produto.getId() == null) {
            dao.add(produto);
        } else {
            dao.update(produto);
        }
        result.redirectTo(this).lista();
    }
    
    
    public void editar(Long id, Result result) {
        Produto produto = dao.buscarProduto(id);
        result.include(produto);
        result.of(this).form();
    }
    
    public void excluir(Long id, Result result) {
        dao.remove(id);
        result.redirectTo(this).lista();
    }
    
}
