package com.lael.infra.modules.member;

import java.util.List;
import javax.annotation.Resource;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject // Autowired와 비슷한 개념
	@Resource(name = "sqlSession") //여러개의 db와 물렸을 때 어떤 커넥션인지 이름을 정해줌
	private SqlSession sqlSession; // SqlSession 객체에 의존
	
	private static String namespace = "com.lael.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ 
		List<Member> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list; 								
	}
	
	public List<Member> selectList(){ 
		List<Member> list = sqlSession.selectList(namespace + ".selectList", "");
		return list; 								
	}
	
	public List<Member> selectList1(){ 
		List<Member> list = sqlSession.selectList(namespace + ".selectList1", "");
		return list; 								
	}
	
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int selectOneCount2(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount2", vo);
	}
	
	public int selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}

	public int insert(Member dto) {return sqlSession.insert(namespace + ".insert", dto); }
	public int myInsert(Member dto) {return sqlSession.insert(namespace + ".myInsert", dto); }
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto); }
	public int myUpdate(Member dto) {return sqlSession.update(namespace + ".myUpdate", dto); }
	public int uelete(Member dto) {return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo); }
	
	public int idCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".idCheck" , dto);
	}
	
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public List<Member> selectList2(MemberVo vo){ 
		List<Member> list = sqlSession.selectList(namespace + ".selectList2", vo);
		return list; 								
	}
}
