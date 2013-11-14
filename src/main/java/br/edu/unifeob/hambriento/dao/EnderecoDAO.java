/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.unifeob.hambriento.dao;

import br.edu.unifeob.hambriento.dao.base.DAO;
import br.edu.unifeob.hambriento.entity.Endereco;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author osvaldogusmao
 */
@Repository
public class EnderecoDAO extends DAO<Endereco>{
    
     public List<String> listaCidadeDiferentes(){
         Query q = super.getEntityManager().createQuery("SELECT DISTINCT e.cidade FROM Endereco e");
         try {
             return q.getResultList();
         } catch (NoResultException e) {
             return null;
         }
    }
    
}
