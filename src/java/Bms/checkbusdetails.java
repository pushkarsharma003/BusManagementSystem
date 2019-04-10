/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bms;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author PushkarSharma
 */
@Entity
public class checkbusdetails {
    @Id
    private int Routeno;
    private String route;
    private int busno;
    private String drivername;
    @Column(name="")
    private String drivermob;
    private String conductorname;
    private String time;

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public int getBusno() {
        return busno;
    }

    public void setBusno(int busno) {
        this.busno = busno;
    }

    public String getDrivername() {
        return drivername;
    }

    public void setDrivername(String drivername) {
        this.drivername = drivername;
    }

    public String getDrivermob() {
        return drivermob;
    }

    public void setDrivermob(String drivermob) {
        this.drivermob = drivermob;
    }

    public String getConductorname() {
        return conductorname;
    }

    public void setConductorname(String conductorname) {
        this.conductorname = conductorname;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
    public void setRouteno(int Routeno){
        this.Routeno=Routeno;
    }
    public int getRouteno(){
        return this.Routeno;
    }
}
