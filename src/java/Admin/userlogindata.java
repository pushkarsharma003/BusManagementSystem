/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author PushkarSharma
 */
@Entity
public class userlogindata {
    private String username;
    private String password;
    @Id
    private int id;
    private int batch;
    private String mobileno;
    private String email;
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBatch() {
        return batch;
    }

    public void setBatch(int batch) {
        this.batch = batch;
    }
    
    public void setMobileno(String mobileno){
        this.mobileno=mobileno;
    }
    
    public String getMobileno(){
        return mobileno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    @Override
    public String toString(){
        return this.username+" "+this.password+" "+this.id+" "+this.batch+" "+this.mobileno+" "+this.email;
    }
}
