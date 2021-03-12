package com.concretepage.dao;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.concretepage.entity.Person;
@Transactional
@Repository
public class PersonDAO implements IPersonDAO {
	@Autowired
	private HibernateTemplate  hibernateTemplate;
	@Override
	public Person getPersonById(int msisdn) {
		return hibernateTemplate.get(Person.class, msisdn);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Person> getAllPersons() {
		String hql = "FROM Person as p ORDER BY p.msisdn";
		return (List<Person>) hibernateTemplate.find(hql);
	}	
	@Override
	public void addPerson(Person person) {
		hibernateTemplate.save(person);
	}
	@Override
	public void updatePerson(Person person) {
		Person p = getPersonById(person.getmsisdn());
		p.setSimtype(person.getSimtype());
		p.setName(person.getName());
		p.setDateofbirth(person.getDateofbirth());
		p.setGender(person.getGender());
		p.setAddress(person.getAddress());
		p.setIdnumber(person.getIdnumber());
		hibernateTemplate.update(p);
	}
	@Override
	public void deletePerson(int msisdn) {
		hibernateTemplate.delete(getPersonById(msisdn));
	}
	@SuppressWarnings("unchecked")
	@Override
	public boolean personExists(String status) {
		String hql = "FROM Person as p WHERE p.status = ?";
		List<Person> persons = (List<Person>) hibernateTemplate.find(hql, status);
		return persons.size() > 0 ? true : false;
	}
}
