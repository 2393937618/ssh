package com.czj.one.dao;

import com.czj.one.bean.person;

import java.util.List;

public interface personDao {
    public List<person> getPersons();
    public person getPerson(Integer id);
    public void saveOrupdatePerson(person person);
    public void removePerson(person person);
    public List<String> getPassword(String name);
}
