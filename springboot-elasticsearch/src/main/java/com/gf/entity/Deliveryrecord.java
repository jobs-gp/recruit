package com.gf.entity;

public class Deliveryrecord {
    private int deliverid;
    private int userid;
    private int resumeid;
    private int positionid;
    private String realname;
    private String positions;
    private String acceptorrefuse;

    public int getDeliverid() {
        return deliverid;
    }

    public void setDeliverid(int deliverid) {
        this.deliverid = deliverid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getResumeid() {
        return resumeid;
    }

    public void setResumeid(int resumeid) {
        this.resumeid = resumeid;
    }

    public int getPositionid() {
        return positionid;
    }

    public void setPositionid(int positionid) {
        this.positionid = positionid;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPositions() {
        return positions;
    }

    public void setPositions(String positions) {
        this.positions = positions;
    }

    public String getAcceptorrefuse() {
        return acceptorrefuse;
    }

    public void setAcceptorrefuse(String acceptorrefuse) {
        this.acceptorrefuse = acceptorrefuse;
    }
}
