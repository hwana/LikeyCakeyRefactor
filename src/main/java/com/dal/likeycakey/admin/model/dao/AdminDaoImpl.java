package com.dal.likeycakey.admin.model.dao;

import java.util.ArrayList;



import org.apache.ibatis.session.RowBounds;
import com.dal.likeycakey.admin.model.dao.AdminDao;
import com.dal.likeycakey.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
   
   @Autowired
   private SqlSessionTemplate sqlSession;
   
   @Override
   public int getListCount() throws Exception{
      return sqlSession.selectOne("AdminMapper.getListCount");
      
   }

   @Override
   public ArrayList<Member> selectList() throws Exception{

      return new ArrayList<Member>(sqlSession.selectList("AdminMapper.selectList"));
   }
   
   @Override
   public Member selectOne(String id) throws Exception{
      return (Member)(sqlSession.selectOne("AdminMapper.selectOne", id));
   }
   
   @Override
   public int updateMember(Member m) throws Exception{
      return sqlSession.update("AdminMapper.updateMember",m);      
      
   }
   
   @Override
   public int deleteMember(String id) throws Exception{
      
      return sqlSession.update("AdminMapper.deleteMember",id);
   }

   @Override
   public int deleteTotalMember() throws Exception{
      // TODO Auto-generated method stub
      return sqlSession.update("AdminMapper.deleteTotalMember");
   }

   @Override
   public ArrayList<Member> selectBizList() throws Exception {
      // TODO Auto-generated method stub
      return new ArrayList<Member>(sqlSession.selectList("AdminMapper.selectBizList"));
   }
   

}