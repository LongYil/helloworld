package cn.lyl.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.ssm.daoImpl.YscdDaoImpl;
import cn.lyl.ssm.po.Cysgly;
import cn.lyl.ssm.po.Yscd;

@Service(value="yscdServc")
@Transactional
public class YscdServc extends CommonSevc<Yscd, YscdDaoImpl> {
	
	private List<Yscd> listcd = new ArrayList<Yscd>();
	private Yscd yscd;

	private List<Cysgly> listCysgly = new ArrayList<Cysgly>();
	private List<Yscd> listYscd = new ArrayList<Yscd>();
	private List<Yscd> templistYscd = new ArrayList<Yscd>();
	
	@Autowired
	private HyglyServc hyglyServc;
	@Autowired
	private CysglyServc cysglyServc;
	
	
	@Override
	public void save(Yscd arg) {
		daoImpl.save(arg);		
	}

	@Override
	public Yscd find(String arg) throws Exception {
		return daoImpl.find(arg);
	}

	@Override
	public List<Yscd> findAll(String arg) {
		//
		return null;
	}
	public List<Yscd> cysFindAll(String arg){
		return daoImpl.cysFindAll(arg);
	}
	public List<Yscd> jbyhFindAll(String arg){
		return daoImpl.jbyhFindAll(arg);
	}
	@Override
	public void delete(Yscd arg) {
		//	
	}
	
	public List<Yscd> cysFindByGlyid(String arg){
		return daoImpl.cysFindByGlyid(arg);
	}
	
	public void jbyhAddCdToGly(String[] arg1,String arg2) throws Exception{
		listcd.clear();
		for(int i=0;i<arg1.length;i++){
			yscd = daoImpl.find(arg1[i]);
			listcd.add(yscd);
		}
		daoImpl.jbyhAddCdToGly(listcd,arg2);
	}
	
	public List<Yscd> hyFindAllYscd(String yhbh) throws Exception{//货运代理点:用户查找所有运输车队
		listYscd.clear();
		templistYscd.clear();
		listCysgly.clear();
		listCysgly = cysglyServc.hyglyFindAllCys(yhbh);
		for(int i=0;i<listCysgly.size();i++){
			templistYscd.clear();
			templistYscd = this.cysFindByGlyid(String.valueOf(listCysgly.get(i).getCysbh()));
			if(templistYscd.size()>0){
				listYscd.addAll(templistYscd);
			}else{
				;
			}
		}
		return listYscd;
	}
	
}
