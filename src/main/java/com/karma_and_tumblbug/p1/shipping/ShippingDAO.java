package com.karma_and_tumblbug.p1.shipping;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karma_and_tumblbug.p1.util.Pager;

@Repository
public class ShippingDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	private final String NAMESPACE="com.karma_and_tumblbug.p1.shipping.ShippingDAO.";
	
	public int setUpdate(ShippingDTO shippingDTO)throws Exception{
		return sqlsession.update(NAMESPACE+"setUpdate", shippingDTO);
	}
	
	public int setDelete(ShippingDTO shippingDTO)throws Exception{
		return sqlsession.delete(NAMESPACE+"setDelete", shippingDTO);
	}
	
	public int setInsert(ShippingDTO shippingDTO)throws Exception {
		return sqlsession.insert(NAMESPACE+"setInsert", shippingDTO);
	}
	
	public List<ShippingDTO> getList(ShippingDTO shippingDTO)throws Exception{
		return sqlsession.selectList(NAMESPACE+"getList", shippingDTO);
	}
	
	public long getTotalCount(ShippingDTO shippingDTO)throws Exception{
		return sqlsession.selectOne(NAMESPACE+"getTotalCount", shippingDTO);
	}
	
	

}
