package com.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import com.dao.EProductDao;
import com.entity.EProductEntity;

@Controller
public class MainController {

	@Autowired
	EProductDao dao;
	
	@GetMapping("/listproduct")
	public String getAllProducts(ModelMap map) {

		List<EProductEntity> list = dao.getAllProducts();
		map.addAttribute("list", list);
		return "products";

	}

	@GetMapping("/details")
	public String getProductById(HttpServletRequest request, ModelMap map) {
		long id = Long.parseLong(request.getParameter("id"));
		EProductEntity entity = dao.getProductById(id);
		map.addAttribute("obj", entity);
		return "details";
	}

	@GetMapping("/success")
	public void updateProduct(HttpServletRequest request, ModelMap map) {
		long id = Long.parseLong(request.getParameter("id"));
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		dao.updateProduct(id, name, price);
	}
}