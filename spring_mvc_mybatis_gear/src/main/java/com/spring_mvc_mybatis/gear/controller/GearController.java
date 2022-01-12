package com.spring_mvc_mybatis.gear.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_mvc_mybatis.gear.model.GearVO;
import com.spring_mvc_mybatis.gear.service.GearService;

@Controller
public class GearController {
	@Autowired
	GearService service;

	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	@RequestMapping("/gear/listAllGear")
	public String listAllGear(Model model) {
		ArrayList<GearVO> gearList = service.listAllGear();
				model.addAttribute("gearList", gearList);
		return "gear/gearListView";
	}
	//장비등록폼으로 이동
	@RequestMapping("/gear/newGearForm")
	public String newGearForm() {
		return "gear/newGearForm";
	}
	//장비 등록
	@RequestMapping("/gear/insertGear")
	public String	 insertGear(GearVO gear) {
		service.insertGear(gear);
		return "redirect:./listAllGear";
	}
	//상세페이지 이동
	@RequestMapping("/gear/gearDetailView/{gearNo}")
	public String detailViewGear(@PathVariable String gearNo, Model model) {
		GearVO gear = service.detailViewGear(gearNo);
		model.addAttribute("gear", gear);
		return "gear/gearDetailView";
	}
	//수정페이지 이동
	@RequestMapping("/gear/updateGearForm/{gearNo}")
	public String	 updateGearForm(@PathVariable String gearNo, Model model) {
		//장비정보 전달하고, 해당 장비정보 받아오기
		GearVO gear = service.detailViewGear(gearNo);
		model.addAttribute("gear", gear);
		return "gear/updateGearForm";
	}
	//장비정보 수정
	@RequestMapping("/gear/updateGear")
	public String detailViewGear(GearVO gear) {
		service.updateGear(gear);
		return "redirect:./listAllGear";
	}
	//장비정보 삭제
		@RequestMapping("/gear/deleteGear/{gearNo}")
		public String deleteGear(@PathVariable String gearNo) {
			service.deleteGear(gearNo);
			return "redirect:../listAllGear";
		}
	//장비정보 중복확인
		@ResponseBody
		@RequestMapping("gear/gearNoCheck")
		public String gearNoCheck(@RequestParam("gearNo") String gearNo) {
			// 서비스 호출 -> DAO -> Mapper -> gearNo가 존재하면 gearNo 반환
			String gearNo_result = service.gearNoCheck(gearNo);
			
			String result = "use";
			System.out.println(result);
			if(gearNo_result != null) // prdNo_result가 받은 값이 있으면 (널이 아니면)
				result = "no_use";
			
			return result;
		}
		// 장비 검색 폼 이동
		@RequestMapping("/gear/gearSearchForm")
		public String gearSearchForm() {
			return "gear/gearSearchForm";
		}
		//장비 검색
		// 도서 검색
		@ResponseBody
		@RequestMapping("/gear/gearSearch")
		public ArrayList<GearVO> gearSearch(@RequestParam HashMap<String, Object> param, Model model){
		
			System.out.println("a");
			ArrayList<GearVO> gearList = service.gearSearch(param);
			model.addAttribute("gearList", gearList);

			// gearList로 제대로 반화되었는지 확인하기 위한 코드
			for(int i =0; i < gearList.size(); i++) {
				GearVO gear = (GearVO) gearList.get(i);
				System.out.println(gear.getGearNo());
			}
			
			return gearList;
		}
		
		
}
