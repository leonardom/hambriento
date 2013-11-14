package br.edu.unifeob.hambriento.dao.base;

import java.util.Set;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

public abstract class DAO<T> {
    
    @PersistenceContext
    private EntityManager entityManager;

    public T load(Class<T> clazz, Integer id){
        return entityManager.find(clazz, id);
    }
    
    public T save(T entity){
        T saved = null;
        entityManager.getTransaction().begin();
        saved = entityManager.merge(entity);
        entityManager.getTransaction().commit();
        return saved;
    }
    
    public void remove(T entity){
        entityManager.getTransaction().begin();
        entityManager.remove(entity);
        entityManager.getTransaction().commit();
    }
    
    public void list(Class<T> clazz){
        
    }
    
    public EntityManager getEntityManager() {
        return entityManager;
    }
            
            
}
