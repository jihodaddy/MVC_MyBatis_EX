package com.spring_mvc_mybatis.gear.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_mvc_mybatis.gear.dao.IGearDAO;
import com.spring_mvc_mybatis.gear.model.GearVO;

@Service
public class GearService implements IGearService {
	@Autowired
	@Qualifier("IGearDAO")
	IGearDAO dao;
	
	@Override
	public ArrayList<GearVO> listAllGear() {
		// TODO Auto-generated method stub
		return dao.listAllGear();
	}

	@Override
	public void insertGear(GearVO gearVo) {
		// TODO Auto-generated method stub
		dao.insertGear(gearVo);
	}

	@Override
	public void updateGear(GearVO gearVo) {
		// TODO Auto-generated method stub
		dao.updateGear(gearVo);
	}

	@Override
	public void deleteGear(String gearNo) {
		// TODO Auto-generated method stub
		dao.deleteGear(gearNo);
	}

	@Override
	public GearVO detailViewGear(String gearNo) {
		// TODO Auto-generated method stub
		return dao.detailViewGear(gearNo);
	}

	@Override
	public String gearNoCheck(String gearNo) {
		// TODO Auto-generated method stub
		return dao.gearNoCheck(gearNo);
	}

	@Override
	public ArrayList<GearVO> gearSearch(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.gearSearch(map);
	}

}
