package com.mycompany.teste05.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Venda.class)
public abstract class Venda_ {

	public static volatile ListAttribute<Venda, ItemVenda> itens;
	public static volatile SingularAttribute<Venda, Date> dataVenda;
	public static volatile SingularAttribute<Venda, Long> id;

}

