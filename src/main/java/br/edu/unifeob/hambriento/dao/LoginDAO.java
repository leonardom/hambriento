package br.edu.unifeob.hambriento.dao;

import br.edu.unifeob.hambriento.dao.base.DAO;
import br.edu.unifeob.hambriento.entity.Login;
import br.edu.unifeob.hambriento.util.MD5Converter;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO extends DAO<Login> {

    public Login validate(Login login) {

        Query q = super.getEntityManager().createQuery("From Login where usuario = :usuario and senha = :senha");
        q.setParameter("usuario", login.getUsuario());
        q.setParameter("senha", MD5Converter.convert(login.getSenha()));

        try {
           return (Login) q.getSingleResult(); 
        } catch (NoResultException exception) {
            return null;
        }
        
        
    }
}