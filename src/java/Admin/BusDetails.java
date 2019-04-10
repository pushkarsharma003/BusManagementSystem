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
public class BusDetails {
    @Id
    private String Route;
    private int BusNo;
    private int RouteNo;
    private String DriverName;
    private String Drivermobile;
    private String ConductorName;
    private String BusTime;

    public String getRoute() {
        return Route;
    }

    public void setRoute(String Route) {
        this.Route = Route;
    }

    public int getBusNo() {
        return BusNo;
    }

    public void setBusNo(int BusNo) {
        this.BusNo = BusNo;
    }

    public int getRouteNo() {
        return RouteNo;
    }

    public void setRouteNo(int RouteNo) {
        this.RouteNo = RouteNo;
    }

    public String getDriverName() {
        return DriverName;
    }

    public void setDriverName(String DriverName) {
        this.DriverName = DriverName;
    }

    public String getDrivermobile() {
        return Drivermobile;
    }

    public void setDrivermobile(String Drivermobile) {
        this.Drivermobile = Drivermobile;
    }

    public String getConductorName() {
        return ConductorName;
    }

    public void setConductorName(String ConductorName) {
        this.ConductorName = ConductorName;
    }

    public String getBusTime() {
        return BusTime;
    }

    public void setBusTime(String BusTime) {
        this.BusTime = BusTime;
    }
    @Override
    public String toString(){
        return this.Route+" "+this.BusNo+" "+this.RouteNo+" "+this.DriverName+" "+this.Drivermobile+"  "+this.ConductorName+" "+this.BusTime;
    }
}
