package Models;

import java.util.List;
import percistencia.ControladoraPersistencia;


public class Controladora {
    ControladoraPersistencia controladoraPersis = new ControladoraPersistencia();
    
    public void createUser(User user){
        controladoraPersis.crearUsuario(user);
    }
    public User getUser(int id){
        return controladoraPersis.getUser(id);
    }
    
    public List<User> getUsers(){
        return controladoraPersis.getUsers();
    }
    
    public void deleteUser(int id){
        controladoraPersis.deleteUser(id);
    }
    
    public void editUser(User user){
        controladoraPersis.putUset(user);
    }
}
