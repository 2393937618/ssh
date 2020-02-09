package com.czj.one.action;

import com.czj.one.bean.person;
import com.czj.one.service.personService;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.List;

public class personAction extends ActionSupport{
    @Resource
    private personService personService;
    private String message;
    private List<person> persons;
    private person person;
    private String name;
    private String password;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


    public List<person> getPersons() {
        return persons;
    }

    public void setPersons(List<person> persons) {
        this.persons = persons;
    }

    public person getPerson() {
        return person;
    }

    public void setPerson(person person) {
        this.person = person;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public com.czj.one.service.personService getPersonService() {
        return personService;
    }

    public void setPersonService(com.czj.one.service.personService personService) {
        this.personService = personService;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //注册操作
    public String add(){
        personService.addPerson(person);
        return "add";
    }



}
