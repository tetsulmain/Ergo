/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ergo.dataacess;

import java.util.List;
import javax.persistence.EntityManager;
import ergo.domainmodel.Client;
/**
 *
 * @author Kimberly Oshiro
 */
public class ClientDB {
    
    //getUser
    public Object getUser(String userName)  {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Object user = em.find(Object.class, userName); //this will need to be fixed because the variable type might not be exactly the same. 3
            return user;
        } finally {
            em.close();    
        }
    }
    
    //update
    public int update(Client client) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(client);
            em.getTransaction().commit();
            return 1;
        } finally {
            em.close();
        }
    }
    
    //getAll
    public List<Client> getAll()  {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            List<Client> clients = em.createNamedQuery("Client.findAll", Client.class).
                    getResultList();
            return clients;
        } finally {
            em.close();    
        }
    }
    
    //delete
    public int delete(Client client)  {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            em.getTransaction().begin();
            em.remove(em.merge(client));
            em.getTransaction().commit();
            return 1;
        } finally {
            em.close();
        }
   }
    
    //insert 
    public int insert(Client client)  {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(client);
            em.getTransaction().commit();
            return 1;
        } finally {
            em.close();
        }
    }
    
    //getEmail
    public Object getUserEmail(String email)
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Client client = em.createNamedQuery("Client.findByEmail", Client.class).setParameter("email", email).getSingleResult();
            return client;
        } finally {
            em.close();    
        } 
    }
    //I can't think of anything else here. 
}
