package com.test.easyui.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

public class BaseDao {

	@Autowired
	private SessionFactory sf;

	@Transactional
	public void add(Object obj) {
		sf.getCurrentSession().save(obj);
	}

	@Transactional
	public void update(Object obj) {
		sf.getCurrentSession().update(obj);
	}

	@Transactional
	public void saveOrUpdate(Object obj) {
		sf.getCurrentSession().saveOrUpdate(obj);
	}

	@Transactional
	public void delete(Object obj) {
		sf.getCurrentSession().delete(obj);
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public <T> List<T> list(Class<T> clazz) {
		return sf.getCurrentSession().createQuery("from " + clazz.getName()).list();
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public <T> List<T> list2(Class<T> clazz, int firstResult, int maxResults) {
		return sf.getCurrentSession().createQuery("from " + clazz.getName())
				.setFirstResult(firstResult).setMaxResults(maxResults).list();
	}
	
	@Transactional
	public <T> int total(Class<T> clazz) {
		return Integer.parseInt(sf.getCurrentSession().createQuery(
				"select count(*) from " + clazz.getName()).list().get(0).toString());
	}

}
