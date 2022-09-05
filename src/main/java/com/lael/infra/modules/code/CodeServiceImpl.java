package com.lael.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDAO dao;

	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list = dao.selectList(vo); 
		return list;
	}
	
//	@Override
//	public List<Code> selectList(CodeVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	
	

	
}
