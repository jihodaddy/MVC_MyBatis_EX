package com.spring_mvc_mybatis.gear.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_mvc_mybatis.gear.model.GearVO;

public interface IGearService {
	
	ArrayList<GearVO> listAllGear();
	void insertGear(GearVO gearVo);
	void updateGear(GearVO gearVo);
	void deleteGear(String gearNo);
	GearVO detailViewGear(String gearNo);
	String gearNoCheck(String gearNo);
	ArrayList<GearVO> gearSearch(HashMap<String, Object> map);
}
