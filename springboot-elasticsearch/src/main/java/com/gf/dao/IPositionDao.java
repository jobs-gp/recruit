package com.gf.dao;


import com.gf.entity.Position;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface IPositionDao {

    List<Position> getAllPositions();

    List<Position> hrSelectById(String companyId);

//    List<Position> getPersonPositions();

    Position selectByPrimaryKey(String positionid);

    int insertPositions(Position position);

    List<Position> findPositionById(@Param("positionid") String positionid);

    int updateposition(Position posi);

    void deletePosition(java.io.Serializable id);

    /**
     * 根据公司ID获取全部职位信息
     * @param companyId
     * @return
     */
    List<Position> findPositionByCompanyId(@Param("companyId") String companyId);

    /**
     * 根据职位编号查出这个职位的详情
     */
    List<Position> selectCompanyPosition(@Param("positionid") String positionid);


}
