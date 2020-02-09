package com.czj.one.service.impl;


import com.czj.one.bean.person;
import com.czj.one.dao.personDao;
import org.springframework.orm.hibernate4.HibernateTemplate;

import java.util.List;

public class personDaoImpl implements personDao {

    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public List<person> getPersons() {
        return (List<person>) hibernateTemplate.find("from person");
    }

    @Override
    public person getPerson(Integer id) {
        return hibernateTemplate.get(person.class,id);
    }

    @Override
    public void saveOrupdatePerson(person person) {
        hibernateTemplate.saveOrUpdate(person);
    }

    @Override
    public void removePerson(person person) {
        hibernateTemplate.delete(person);
    }

    @Override
    public List<String> getPassword(String name) {
        return (List<String>) hibernateTemplate.find("select p.password from person p where p.name='"+name+"'");

    }
}
