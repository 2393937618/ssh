package com.czj.one.service;

import com.czj.one.bean.person;

import java.util.List;

public interface personService {
    public void updatePerson(Integer id);
    public void addPerson(person person);
    public void removePerson(person person);
    public List<person> findAllPerson();
    public person findById(Integer id);
    public List<String> selectPassword(String name);
}
