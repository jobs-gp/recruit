package com.gf.service;


import com.gf.entity.Position;

import java.util.List;

public interface IPositionService {

    List<Position> getAllPosition();

    List<Position> hrGetAllPosition(String companyId);

//    List<Position> getPersonPosition();
    Position getperPositionById(String positionid);

    int insertPosition(String companyId, String positions, String postype, String posdate, String posnum, String posdes, String posreq, String possal, String posphone, String posloc);

    Position getPositionById(String id);

    int updateposition(String id, String positions, String postype, String posdate, String posnum, String posdes, String posreq, String possal, String posphone, String posloc);

    void deletePosition(java.io.Serializable id);

    /**
     * 根据职位ID查出这个职位的详情
     */
    List<Position> getCompanyPosition(String positionid);

    /**
     * 根据职位ID查出投递编号、用户编号、简历编号
     * @return
     */

}
