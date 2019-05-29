package com.gf.dto;


import com.gf.entity.Deliveryrecord;
import com.gf.entity.Resume;

import java.util.List;

public class ResumeDto {

        private int userid;

        private int positionid;

        private int resumeid;

        private String acceptorrefuse;

        private List<Resume> resumeList;


    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getPositionid() {
        return positionid;
    }

    public void setPositionid(int positionid) {
        this.positionid = positionid;
    }

    public int getResumeid() {
        return resumeid;
    }

    public void setResumeid(int resumeid) {
        this.resumeid = resumeid;
    }

    public String getAcceptorrefuse() {
        return acceptorrefuse;
    }

    public void setAcceptorrefuse(String acceptorrefuse) {
        this.acceptorrefuse = acceptorrefuse;
    }

    public List<Resume> getResumeList() {
        return resumeList;
    }

    public void setResumeList(List<Resume> resumeList) {
        this.resumeList = resumeList;
    }

    public static ResumeDto takethis(Deliveryrecord deliveryrecord, List<Resume> resumeList) {
        ResumeDto resumeDto = new ResumeDto();
        if (null != deliveryrecord){
            resumeDto.setUserid(deliveryrecord.getUserid());
            resumeDto.setPositionid(deliveryrecord.getPositionid());
            resumeDto.setResumeid(deliveryrecord.getResumeid());
            resumeDto.setAcceptorrefuse(deliveryrecord.getAcceptorrefuse());
        }
        resumeDto.setResumeList(resumeList);
        return resumeDto;
    }

}
