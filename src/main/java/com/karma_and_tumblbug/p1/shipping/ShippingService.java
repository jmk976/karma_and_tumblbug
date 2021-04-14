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

	public List<ShippingDTO> getList(Pager pager)throws Exception{
		// ---- startRow, lastRow ----
		pager.makeRow();

		// ---- 페이징 계산 -------------
		long totalCount = shippingDAO.getTotalCount(pager);
		pager.makeNum(totalCount);

		return shippingDAO.getList(pager);
	}
	
	public long getTotalCount(Pager pager)throws Exception{
		return shippingDAO.getTotalCount(pager);
	}



}
