package com.spring_mvc.mybatis.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_mvc.mybatis.dao.IProductDAO;
import com.spring_mvc.mybatis.model.ProductVO;

@Service
public class ProductService implements IProductService {
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;
	
	@Override
	public ArrayList<ProductVO> listAllProduct() {
		// TODO Auto-generated method stub
		return dao.listAllProduct();
	}

	@Override
	public void insertProduct(ProductVO prdVo) {
		// TODO Auto-generated method stub
		dao.insertProduct(prdVo);
	}

	@Override
	public void updateProduct(ProductVO prdVo) {
		// TODO Auto-generated method stub
		dao.updateProduct(prdVo);
	}

	@Override
	public void deleteProduct(String prdNo) {
		// TODO Auto-generated method stub
		dao.deleteProduct(prdNo);
	}

	@Override
	public ProductVO detailViewProduct(String prdNo) {
		// TODO Auto-generated method stub
		return dao.detailViewProduct(prdNo); 
	}

}
