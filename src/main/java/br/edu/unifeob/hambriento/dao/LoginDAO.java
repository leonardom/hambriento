package br.edu.unifeob.hambriento.dao;

import br.edu.unifeob.hambriento.dao.base.DAO;
import br.edu.unifeob.hambriento.entity.Login;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO extends DAO<Login>{
    
    @PersistenceContext
    private EntityManager entityManager;
    
}