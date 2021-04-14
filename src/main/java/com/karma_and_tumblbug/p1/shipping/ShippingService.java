package com.karma_and_tumblbug.p1.shipping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.util.Pager;

@Service
public class ShippingService {

	@Autowired
	private ShippingDAO shippingDAO;

	public int setUpdate(ShippingDTO shippingDTO)throws Exception{
		return shippingDAO.setUpdate(shippingDTO);
	}

	public int setDelete(ShippingDTO shippingDTO)throws Exception{
		return shippingDAO.setDelete(shippingDTO);
	}

	public int setInsert(ShippingDTO shippingDTO)throws Exception{
		return shippingDAO.setInsert(shippingDTO);
	}

	public ShippingDTO getSelect(ShippingDTO shippingDTO)throws Exception{
		return shippingDAO.getSelect(shippingDTO);
	}

	public List<ShippingDTO> getList(ShippingDTO shippingDTO)throws Exception{
		return shippingDAO.getList(shippingDTO);
	}
	



}
