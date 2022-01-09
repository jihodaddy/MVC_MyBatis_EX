package com.spring_mvc.mybatis.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_mvc.mybatis.model.ProductVO;
import com.spring_mvc.mybatis.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	//인덱스 페이지 이동
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	//전체 상품 조회
	@RequestMapping("/product/listAllProduct")
	public String listAllProduct(Model model) {
		ArrayList<ProductVO> prdList = service.listAllProduct();
				model.addAttribute("prdList", prdList);
		return "product/productListView";
	}
	//상품 등록 페이지 이동
	@RequestMapping("product/newProductForm")
	public String newProductForm() {
		return "/product/newProductForm";
	}
	
	//상품 등록
	@RequestMapping("product/insertProduct")
	public String insertProduct(ProductVO prdVo) {
		service.insertProduct(prdVo);
		return "redirect:/product/listAllProduct";
	}
	//상품 삭제 
	@RequestMapping("product/deleteProduct/{prdNo}")
	public String deleteProduct(@PathVariable("prdNo") String prdNo) {
		service.deleteProduct(prdNo);
		return "redirect:/product/listAllProduct";
	}
	//상품 수정 페이지 이동
	@RequestMapping("product/updateProductForm/{prdNo}")
	public String updateProductForm(Model model, @PathVariable("prdNo") String prdNo) {
		model.addAttribute("prdNo", prdNo);
		return "/product/updateProductForm";
	}
	//상품 수정
	@RequestMapping("product/updateProduct")
	public String updateProduct(ProductVO prdVo)  {
		service.updateProduct(prdVo);
		return "redirect:/product/listAllProduct";
	}
	//상세 상품 조회
	@RequestMapping("product/detailViewProduct/{prdNo}")
	public String detailViewProduct(@PathVariable("prdNo") String prdNo, Model model) {
		ProductVO prdVo = service.detailViewProduct(prdNo);
		model.addAttribute("prdName", prdVo.getPrdName());
		model.addAttribute("prdPrice", prdVo.getPrdPrice());
		model.addAttribute("prdCompany", prdVo.getPrdCompany());
		model.addAttribute("prdStock", prdVo.getPrdStock());
		return "product/detailViewProduct";
	}
	
}
