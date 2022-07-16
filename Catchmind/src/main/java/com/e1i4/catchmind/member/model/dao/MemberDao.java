package com.e1i4.catchmind.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.e1i4.catchmind.member.model.vo.Block;
import com.e1i4.catchmind.member.model.vo.Follow;
import com.e1i4.catchmind.member.model.vo.Member;

@Repository
public class MemberDao {

	// 로그인(select)
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("memberMapper.loginMember", m);
		
	}
	
	// 아이디 중복 체크(select)
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}

	// 아이디찾기(select)
	public Member findId(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findId", m);
	}

	// 비밀번호찾기 - 일치 회원 찾기 (select)
	public Member findPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findPwd", m);
	}

	// 닉네임 중복체크 서비스(select)
	public int nicknameCheck(SqlSessionTemplate sqlSession, String nickname) {
		return sqlSession.selectOne("memberMapper.nicknameCheck", nickname);
	}

	// 회원가입 서비스(insert)
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	// 비밀번호 찾기 - 변경 서비스(update)
	public int changePwd(SqlSessionTemplate sqlSession, Member m) {
		
		System.out.println("DAO: " + sqlSession.update("memberMapper.changePwd", m));
		
		return sqlSession.update("memberMapper.changePwd", m);
	}

	// 로그인 시 recentLogin 변경(update)
	public int updateRecentLogin(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateRecentLogin", m);
	}

	public ArrayList<Member> matchList(SqlSessionTemplate sqlSession, Member m) {
		return (ArrayList)sqlSession.selectList("memberMapper.matchList", m);
	}

	// 로그인 시 recentLogout 변경(update)
	public int updateRecentLogout(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.update("memberMapper.updateRecentLogout", userId);
	}
	
	// 마이 페이지 팔로우 리스트 조회 서비스(select)
	public ArrayList<Member> selectFollowList(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("memberMapper.selectFollowList", userNo);
	}
	
	// 마이 페이지 차단 리스트 조회 서비스(select)
	public ArrayList<Member> selectBlockList(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("memberMapper.selectBlockList", userNo);
	}
	
	public int deleteBlockMember(SqlSessionTemplate sqlSession, Block b) {
		return sqlSession.delete("memberMapper.deleteBlockMember", b);
	}
	
	// 마이페이지 - 프로필 수정 서비스(update)
	public int updateProfile(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updateProfile", m);
	}
	
	// 마이페이지 - 회원 정보 수정 서비스(update)
	public int updateInfo(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updateInfo", m);
	}
	
	public int unfollowMember(SqlSessionTemplate sqlSession, Follow f) {
		return sqlSession.delete("memberMapper.unfollowMember", f);
	}
	
	// 마이페이지 - 프로필 수정 > 기존 비밀번호 체크 서비스(select)
	public int originPwdCheck(SqlSessionTemplate sqlSession, String checkOriginPwd) {
		return sqlSession.selectOne("memberMapper.originPwdCheck", checkOriginPwd);
	}
	
	// 마이페이지 - 프로필 수정 > 변경된 비밀번호 업데이트 서비스(update)
	public int infoUpdatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.infoUpdatePwd", m);
	}
	
	// 커플관리 > 커플 요청 아이디가 존재하는 아이디인지 체크(select)
	public int selectCoupleId(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectCoupleId", m);
	}
	
	// 커플관리 > 커플 요청 서비스(update)
	public int requestCouple(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.requestCouple", m);
	}
	
}
