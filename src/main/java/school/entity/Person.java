/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package school.entity;

/**
 *
 * @author Labs Admin
 */
public class Person {
    
    private int userID,cellnumber,previousgrade;
    private String name, surname,gender,schoolname,schoolcode,subjectcode,username,password,emailaddress;

    public Person() {
    }

    public Person(int userID,int cellnumber, int previousgrade, String name, String surname, String gender, 
            String schoolname, String schoolcode, String subjectcode, String username, String password, 
            String emailaddress) {
        this.userID = userID;
        this.cellnumber = cellnumber;
        this.previousgrade = previousgrade;
        this.name = name;
        this.surname = surname;
        this.gender = gender;
        this.schoolname = schoolname;
        this.schoolcode = schoolcode;
        this.subjectcode = subjectcode;
        this.username = username;
        this.password = password;
        this.emailaddress = emailaddress;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getCellnumber() {
        return cellnumber;
    }

    public void setCellnumber(int cellnumber) {
        this.cellnumber = cellnumber;
    }

    public int getPreviousgrade() {
        return previousgrade;
    }

    public void setPreviousgrade(int previousgrade) {
        this.previousgrade = previousgrade;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSchoolname() {
        return schoolname;
    }

    public void setSchoolname(String schoolname) {
        this.schoolname = schoolname;
    }

    public String getSchoolcode() {
        return schoolcode;
    }

    public void setSchoolcode(String schoolcode) {
        this.schoolcode = schoolcode;
    }

    public String getSubjectcode() {
        return subjectcode;
    }

    public void setSubjectcode(String subjectcode) {
        this.subjectcode = subjectcode;
    }

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

    public String getEmailaddress() {
        return emailaddress;
    }

    public void setEmailaddress(String emailaddress) {
        this.emailaddress = emailaddress;
    }
    
    
}







