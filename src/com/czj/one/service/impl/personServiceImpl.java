package com.czj.one.service.impl;

import com.czj.one.bean.person;
import com.czj.one.dao.personDao;
import com.czj.one.service.personService;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Transactional(readOnly = false)
public class personServiceImpl implements personService {
    @Resource
    private personDao personDao;
    @Override
    public void updatePerson(Integer id) {
        person person = findById(id);
        person.setName("csx");
        personDao.saveOrupdatePerson(person);
    }

    @Override
    public void addPerson(person person) {

        personDao.saveOrupdatePerson(person);
    }

    @Override
    public void removePerson(person person) {
        personDao.removePerson(person);
    }

    @Override
    public List<person> findAllPerson() {
        return personDao.getPersons();
    }

    @Override
    public person findById(Integer id) {
        return personDao.getPerson(id);
    }

    @Override
    public List<String> selectPassword(String name) {
        return personDao.getPassword(name);
    }
}
