
package br.edu.unifeob.hambriento.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.core.GenericTypeResolver;

/**
 *
 * @author Ivan
 * @param <T>
 */
public abstract class GenericDao<T> {
    
    @PersistenceContext
    EntityManager em;
    
    private Class<T> type;
    
    public void save(T object){
        em.merge(object);
    }
    
    public void delete(T object){
        em.remove(object);
    }
    
    public T update(T object){
        return em.merge(object);
    }
    
    public T find(Long id){
        this.type = (Class<T>) GenericTypeResolver.resolveTypeArgument(getClass(), GenericDao.class);
        return (T) em.find(type, id);
    }
    
   
}
