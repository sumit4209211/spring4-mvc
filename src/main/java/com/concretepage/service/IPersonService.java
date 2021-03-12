package com.concretepage.service;

import java.util.List;

import com.concretepage.entity.Person;

public interface IPersonService {
     List<Person> getAllPersons();
     Person getPersonById(int msisdn);
     boolean addPerson(Person person);
     void updatePerson(Person person);
     void deletePerson(int msisdn);
}
