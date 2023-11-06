package com.jonggak.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jonggak.dto.ClassConfirmDto;
import com.jonggak.dto.LecturInquiryDto;
import com.jonggak.dto.LectureInfoDto;
import com.jonggak.dto.ProfessorToClassDto;

public interface LectureMapper {

	@Select("SELECT c.CONFIRM_ID , ci.* FROM CLASSCONFIRM c "
			+ "RIGHT JOIN ( "
			+ "SELECT p.PRO_NAME , cl.* FROM PROFESSOR p "
			+ "JOIN ( "
			+ "SELECT m.MYCLA_ID , m.STU_ID , m.CLA_ID , j.CLA_NAME , j.PRO_ID , j.CLA_GRADE  FROM MYCLASS m "
			+ "JOIN JCLASS j ON m.CLA_ID = j.CLA_ID "
			+ ") cl ON  p.PRO_ID = cl.PRO_ID "
			+ "WHERE STU_ID = #{student_id} "
			+ ") ci ON c.MYCLA_ID = ci.MYCLA_ID")
	public List<LecturInquiryDto> getLecturInquiryList(@Param("student_id") String student_id);
	
	@Select("SELECT c.CONFIRM_ID , ci.* FROM CLASSCONFIRM c "
			+ "RIGHT JOIN ( "
			+ "SELECT p.PRO_NAME , cl.* FROM PROFESSOR p "
			+ "JOIN ( "
			+ "SELECT m.MYCLA_ID , m.STU_ID , m.CLA_ID , j.CLA_NAME , j.PRO_ID , j.CLA_GRADE  FROM MYCLASS m "
			+ "JOIN JCLASS j ON m.CLA_ID = j.CLA_ID "
			+ ") cl ON  p.PRO_ID = cl.PRO_ID "
			+ "WHERE STU_ID = #{student_id} "
			+ ") ci ON c.MYCLA_ID = ci.MYCLA_ID "
			+ "WHERE ci.MYCLA_ID = #{mycla_id}")
	public LecturInquiryDto getLecturInquiry(@Param("student_id") String student_id, @Param("mycla_id") int mycla_id);
	
	@Insert("INSERT INTO CLASSCONFIRM(item1, item2, item3, item4, feedback, mycla_id) VALUES(#{item1},#{item2},#{item3},#{item4},#{feedback}, #{mycla_id})")
	public int setClassConfirm(ClassConfirmDto classConfirmDto);
	
	@Select("SELECT "
			+ "jc.CLA_ID, jc.PRO_ID, jc.CLA_NAME, jc.CLA_GRADE, jc.CLA_LEVEL, jc.CLAROOM_ID, jc.CLA_WEEK, jc.CLA_OPEN, jc.CLA_CLOSE, jc.DEP_ID, cr.CLAROOM_NAME "
			+ "FROM jclass jc "
			+ "JOIN classroom cr "
			+ "ON jc.claroom_id = cr.claroom_id "
			+ "WHERE jc.pro_id = #{prf_id}")
	public List<ProfessorToClassDto> getPrfClassList(@Param("prf_id") String professor_id);
	
	@Select("SELECT "
			+ "    COUNT(*) AS all_student_count, "
			+ "    COUNT(cf.mycla_id) AS response_student_count, "
			+ "    AVG(item1) AS item1_avg, "
			+ "    AVG(item2) AS item2_avg, "
			+ "    AVG(item3) AS item3_avg, "
			+ "    AVG(item4) AS item4_avg  "
			+ "FROM myclass mc "
			+ "LEFT JOIN classconfirm cf ON mc.mycla_id = cf.mycla_id "
			+ "WHERE mc.cla_id = #{cla_id}")
	public LectureInfoDto getLectureInfo(@Param("cla_id") int cla_id);
	
	@Select("SELECT cf.FEEDBACK FROM myclass mc JOIN classconfirm cf ON mc.mycla_id = cf.mycla_id WHERE cla_id = #{cla_id}")
	public List<String> getFeedbackList(@Param("cla_id") int cla_id);
	
}
