package br.edu.unifeob.hambriento.dao.base;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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
    
    public List<T> list(Class<T> clazz){
        
        Query q = this.entityManager.createQuery("From "+clazz.getSimpleName());
        
        try {
            return q.getResultList();
        } catch (NoResultException e) {
            return null;
        }
        
        
    }
    
    public EntityManager getEntityManager() {
        return entityManager;
    }
            
            
}
