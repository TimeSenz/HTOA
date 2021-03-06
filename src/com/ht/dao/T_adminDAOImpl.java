package com.ht.dao;

import com.ht.bean.T_admin;
import com.ht.util.Pager;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;

import java.util.List;

/**
 * Created by please fresh on 2016/8/12.
 */
public class T_adminDAOImpl implements T_adminDAO {
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    private Session session;

    @Override
    public T_admin save(T_admin t_admin) {
        session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.save(t_admin);
        session.getTransaction().commit();
        return t_admin;
    }

    @Override
    public void delete(T_admin t_admin) {
        session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.delete(t_admin);
        session.getTransaction().commit();
    }

    @Override
    public T_admin update(T_admin t_admin) {
        System.out.println("修改===========");
        session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        System.out.println(t_admin);
        session.saveOrUpdate(t_admin);
        session.getTransaction().commit();
        return t_admin;
    }

    @Override
    public List<T_admin> queryAll() {
        session = sessionFactory.openSession();
        Query query = session.createQuery("from T_admin");
        List<T_admin> list = query.list();
        return list;
    }

    @Override
    public T_admin query(String p) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from T_admin t where t_adm_identity=:p");
        query.setString("p",p);
        T_admin t_admin = (T_admin) query.uniqueResult();
        session.getTransaction().commit();
        return t_admin;
    }

    @Override
    public void close() {
        session.close();
    }

    @Override
    public int count() {
        session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(T_admin.class);
        criteria.setProjection(Projections.rowCount());
        Object object = criteria.uniqueResult();
        session.getTransaction().commit();
        return Integer.valueOf(object.toString());
    }

    @Override
    public Pager<T_admin> pagerList(Pager Pager) {
        session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from T_admin ");
        query.setFirstResult(Pager.getBeginIndex());
        query.setMaxResults(Pager.getPageSize());
        Pager.setRows(query.list());
        Pager.setTotal(count());
        System.out.println(Pager.getRows()+"================="+Pager.getTotal());
        return Pager;
    }


}
