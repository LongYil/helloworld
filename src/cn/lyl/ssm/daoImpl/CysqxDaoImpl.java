package cn.lyl.ssm.daoImpl;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import cn.lyl.ssm.dao.CysqxDao;
import cn.lyl.ssm.po.Cysqx;

@Component(value="cysqxDaoImpl")
@Scope(value="prototype")
public class CysqxDaoImpl extends CommonDaoImpl<Cysqx> implements CysqxDao{

	@Override
	public void save(Cysqx entity) {
		ht.saveOrUpdate(entity);		
	}

	@Override
	public void update(Cysqx entity) {
		//
		
	}

	@Override
	public void delete(Cysqx entity) {
		//
		
	}

	@Override
	public Cysqx find(String arg) throws Exception {
		return (Cysqx) getEntity.getEntity("Cysqx", "jsbh", arg, Cysqx.class);
	}

}
