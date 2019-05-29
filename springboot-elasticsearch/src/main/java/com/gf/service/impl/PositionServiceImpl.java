package com.gf.service.impl;

import com.gf.dao.IPositionDao;
import com.gf.entity.Position;
import com.gf.service.IPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;

@Component
public class PositionServiceImpl implements IPositionService {

    @Autowired
    private IPositionDao positionDao;

    @Override
    public List<Position> getAllPosition(){
        return positionDao.getAllPositions();
    }


    @Override
    public List<Position> hrGetAllPosition(String companyId){
        List<Position> hrPosition = positionDao.hrSelectById(companyId);
        return hrPosition;
    }
//    @Override
//    public  List<Position> getPersonPosition(){
//        return positionDao.getPersonPositions();
//    }
    @Override
    public Position getperPositionById(String positionid){
        Position position = positionDao.selectByPrimaryKey(positionid);
        return position;
    }

    @Override
    public int insertPosition(String companyId,String positions,String postype,String posdate,String posnum,String posdes,String posreq,String possal,String posphone,String posloc){
        Position position = new Position();
        position.setCompanyId(companyId);
        position.setPositions(positions);
        position.setPostype(postype);
        position.setPosdate(posdate);
        position.setPosnum(posnum);
        position.setPosdes(posdes);
        position.setPosreq(posreq);
        position.setPossal(possal);
        position.setPosphone(posphone);
        position.setPosloc(posloc);
        return positionDao.insertPositions(position);
    }
    @Override
    public Position getPositionById(String id){
        List<Position> p = positionDao.findPositionById(id);
        if(p.size()>0){
            return p.get(0);
        }
        return null;
    }

    @Override
    public int updateposition(String id,String positions,String postype,String posdate,String posnum,String posdes,String posreq,String possal,String posphone,String posloc){
        Position posi = new Position();
        int positionid = Integer.parseInt(id);
        posi.setPositionid(positionid);
        posi.setPositions(positions);
        posi.setPostype(postype);
        posi.setPosdate(posdate);
        posi.setPosnum(posnum);
        posi.setPosdes(posdes);
        posi.setPosreq(posreq);
        posi.setPossal(possal);
        posi.setPosphone(posphone);
        posi.setPosloc(posloc);
        return positionDao.updateposition(posi);
        }

        @Override
        public void deletePosition(Serializable id){
        positionDao.deletePosition(id);
        }


        @Override
        public List<Position> getCompanyPosition(String positionid){
            List<Position> positionDetail = positionDao.selectCompanyPosition(positionid);
            return positionDetail;
        }




    }

