package com.gf.controller;

import com.gf.entity.Deliveryrecord;
import com.gf.entity.Position;
import com.gf.service.IDeliveryrecordService;
import com.gf.service.IPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
//查
@RequestMapping("/position/")
public class PositionController {
    @Autowired
    private IPositionService positionService;

    @Autowired
    private IDeliveryrecordService deliveryrecordService;

    @RequestMapping(value = "getPosition" , method = RequestMethod.GET)
    public String getPosition(HttpServletRequest request) {
        List<Position> positions = positionService.getAllPosition();
        request.setAttribute("positions", positions);
        return "position/position";
    }

    @RequestMapping(value = "hrGetPositions" , method = RequestMethod.GET)
    public String hrGetPositions(HttpServletRequest request) {
        String companyId = request.getParameter("companyId");
        List<Position> companyPosition = positionService.hrGetAllPosition(companyId);
        request.setAttribute("companyPosition", companyPosition);
        return "position/hrGetPosition";
    }

    //单个查询
     @RequestMapping(value = "getPersonPosition",method = RequestMethod.GET)
     public String getPersonPosition(HttpServletRequest request){
        String positionid = request.getParameter("positionid");
        Position position = positionService.getperPositionById(positionid);
      //  System.out.println("控制器单个查询传的id是："+positionid);
         request.setAttribute("perposition",position);
//        List<Position> personposition = positionService.getPersonPosition();
//        request.setAttribute("personposition",personposition.get(0));
        return "position/personposition";


    }
    //增
    @RequestMapping(value = "addPositionJsp",method = RequestMethod.GET)
    public String addPositionJsp() {
        return "position/addposition";
    }

    @RequestMapping(value = "addPosition",method = RequestMethod.POST)
    public String addPosition(HttpServletRequest request){
        String companyId = request.getParameter("companyId");
        String positions = request.getParameter("positions");
        String postype = request.getParameter("postype");
        String posdate = request.getParameter("posdate");
        String posnum = request.getParameter("posnum");
        String posdes = request.getParameter("posdes");
        String posreq = request.getParameter("posreq");
        String possal = request.getParameter("possal");
        String posphone = request.getParameter("posphone");
        String posloc = request.getParameter("posloc");
        positionService.insertPosition(companyId,positions,postype,posdate,posnum,posdes,posreq,possal,posphone,posloc);
        return "redirect:/company/getCompany";
}

//改
    @RequestMapping(value = "/updatepositionJsp",method = RequestMethod.GET)
    public String updatepositionJsp(HttpServletRequest request){
        String id = request.getParameter("positionid");
        Position pos = positionService.getPositionById(id);
        request.setAttribute("position",pos);
        return "position/editposition";
    }

    @RequestMapping(value = "/updatePosition",method = RequestMethod.POST)
    public String updatePosition(HttpServletRequest request){
        String id = request.getParameter("positionid");
        System.out.println(id);
        String positions = request.getParameter("positions");
        String postype = request.getParameter("postype");
        String posdate = request.getParameter("posdate");
        String posnum = request.getParameter("posnum");
        String posdes = request.getParameter("posdes");
        String posreq = request.getParameter("posreq");
        String possal = request.getParameter("possal");
        String posphone = request.getParameter("posphone");
        String posloc = request.getParameter("posloc");
        positionService.updateposition(id, positions, postype, posdate, posnum, posdes, posreq, possal, posphone, posloc);
        return "redirect:/company/getCompany";
    }

    @RequestMapping(value = "/deletePosition")
    public String deletePosition(int id){
        positionService.deletePosition(id);
        return "redirect:/company/getCompany";
    }

    /**
     * 公司的职位详情
     * @param request  positionid
     * @return
     */
    @RequestMapping(value = "getCompanyPositionDetail", method = RequestMethod.GET)
    public String getCompanyPositionDetail(HttpServletRequest request){
        String positionid = request.getParameter("positionid");
        List<Position> companyPosition = positionService.getCompanyPosition(positionid);
        request.setAttribute("companyPosition",companyPosition);

        /**
         * 投递记录
         * 根据 positionid 查出deliverid,userid,resumeid
         */
        List<Deliveryrecord> deliveryrecord = deliveryrecordService.getAllRecord(positionid);
        request.setAttribute("deliveryrecord",deliveryrecord);
        return "position/companyPositionDetail";
    }

    /**
     * 通过es查询职位信息
     * @param request
     * @return
     */
    @RequestMapping(value = "searchPosition", method = RequestMethod.GET)
    public String searchPosition(HttpServletRequest request) {
        String key = request.getParameter("position");
        List<Position> search = positionService.searchPosition(key);
        request.setAttribute("search",search);
        return "position/esSearchPosition";
    }
}
