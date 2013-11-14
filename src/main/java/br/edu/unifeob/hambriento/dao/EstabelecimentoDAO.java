package br.edu.unifeob.hambriento.dao;

import br.edu.unifeob.hambriento.dao.base.DAO;
import br.edu.unifeob.hambriento.entity.Estabelecimento;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

/*    
 @author Ivan Simionato
 */
@Repository
public class EstabelecimentoDAO extends DAO<Estabelecimento> {

    public List<Estabelecimento> listaComFiltros(String cidade, List<Integer> especialidades) {

        String sql = "SELECT es From Estabelecimento AS es "
                + " INNER JOIN es.endereco en"
                + " JOIN FETCH es.especialidades"
                + " WHERE 1 = 1";

        if (cidade != null) {
            sql += " AND en.cidade = :cidade";
        }

        if (especialidades != null && especialidades.size() > 0) {
            sql += " AND ep IN (:especialidades)";
        }

        Query q = super.getEntityManager().createQuery(sql);

        if (cidade != null) {
            q.setParameter("cidade", cidade);
        }

        if (especialidades != null && especialidades.size() > 0) {
            q.setParameter("especialidades", especialidades);
        }

        try {
            return q.getResultList();
        } catch (NoResultException e) {
            return null;
        }
    }
}
