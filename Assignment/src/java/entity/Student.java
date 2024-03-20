/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author sonnt
 */
public class Student {
    private int sid;
    private String sname;
    private boolean sgender;
    private Date sdate;
    private String semail;
    private String sphone;
    private String PersonalID;
    private String SpecialtyID;
    private ArrayList<StudentGroup> groups = new ArrayList<>();

    public ArrayList<StudentGroup> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<StudentGroup> groups) {
        this.groups = groups;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public boolean isSgender() {
        return sgender;
    }

    public void setSgender(boolean sgender) {
        this.sgender = sgender;
    }

    public Date getSdate() {
        return sdate;
    }

    public void setSdate(Date sdate) {
        this.sdate = sdate;
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getPersonalID() {
        return PersonalID;
    }

    public void setPersonalID(String PersonalID) {
        this.PersonalID = PersonalID;
    }

    public String getSpecialtyID() {
        return SpecialtyID;
    }

    public void setSpecialtyID(String SpecialtyID) {
        this.SpecialtyID = SpecialtyID;
    }
    

    
    
}
