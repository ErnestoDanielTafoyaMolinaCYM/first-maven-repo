package percistencia;

import Models.User;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import percistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    UserJpaController userJpa = new UserJpaController();
    
    
    public void crearUsuario(User user){
        userJpa.create(user);
    }
    
    
    public User getUser(int id){
        return userJpa.findUser(id);
    }
    
    public List<User> getUsers(){
        return userJpa.findUserEntities();
    }
    
    public void deleteUser(int id){
        try {
            userJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void putUset(User user){
        try {
            userJpa.edit(user);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
