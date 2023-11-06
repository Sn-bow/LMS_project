package com.jonggak.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jonggak.dto.StudentTimeTableDto;

public interface TimeTableMapper {

	@Select("SELECT "
			+ "mc.STU_ID, mc.CLA_ID, jc.CLA_NAME, "
			+ "jc.CLA_LEVEL, jc.CLA_WEEK, jc.CLA_OPEN, "
			+ "jc.CLA_CLOSE, TO_CHAR(jc.CLA_END, 'YYYY') year, "
			+ "jc.CLA_SEM, jc.DEP_ID, jc.MAJOR_ID, jc.ELECTIVES_ID "
			+ "FROM myclass mc "
			+ "JOIN jclass jc on mc.CLA_ID = jc.CLA_ID where mc.STU_ID = #{stu_id} AND TO_CHAR(jc.CLA_END, 'YYYY') = #{year} AND jc.CLA_SEM = #{cla_sem}")
	public List<StudentTimeTableDto> getStTimeTable(@Param("stu_id") String stu_id, @Param("year") String year, @Param("cla_sem") int cla_sem);
}
