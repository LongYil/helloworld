package cn.lyl.ssm.daoImpl;

import org.springframework.stereotype.Component;

import cn.lyl.ssm.dao.PtzhDao;
import cn.lyl.ssm.po.Ptzh;

@Component(value="ptzhDaoImpl")
public class PtzhDaoImpl extends CommonDaoImpl<Ptzh> implements PtzhDao {

	@Override
	public void save(Ptzh entity) {
		ht.save(entity);		
	}

	@Override
	public void update(Ptzh entity) {
		//
		
	}

	@Override
	public void delete(Ptzh entity) {
		//
		
	}

	@Override
	public Ptzh find(String arg) {
		//
		return null;
	}

}