package com.mycompany.teste05.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import com.mycompany.teste05.dao.ProdutoDAO;
import com.mycompany.teste05.dao.VendaDAO;
import com.mycompany.teste05.entity.ItemVenda;
import com.mycompany.teste05.entity.Produto;
import com.mycompany.teste05.entity.Venda;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author beatriz.araujo
 */
@Controller
public class VendasController {

    VendaDAO dao = new VendaDAO();
    ProdutoDAO pdao = new ProdutoDAO();
    
    @Inject
    Venda venda; //venda da sessão
    
    @Inject
    Result result;
    
    public void formVenda() {
        result.include("listaProdutos",pdao.lista());
    }

    public List<Venda> lista() {
        return dao.lista();
    }

    public void addItem(ItemVenda item, Result result) {
        Produto p = pdao.buscarProduto(2L);
        item.setProduto(p);
        venda.getItens().add(item);
        result.redirectTo(this).formVenda();
    }
    
    
    public void salvar(Venda venda, Result result) {
        if(venda.getId() == null) {
            dao.add(venda);
        } else {
            dao.update(venda);
        }
        result.redirectTo(this).lista();
    }

    public void editar(Long id, Result result) {
        Venda venda = dao.buscarVenda(id);
        result.include(venda); 
        result.of(this).formVenda();
    }

    public void excluir(Long id, Result result) {
        dao.remove(id);
        result.redirectTo(this).lista();
    }
}
