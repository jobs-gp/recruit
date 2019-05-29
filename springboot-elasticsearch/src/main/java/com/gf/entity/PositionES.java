package com.gf.entity;


import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serializable;

@Document(indexName = "position", type = "doc")
public class PositionES{

    @Id
    private Integer positionid;

    private String companyId;

    private String positions;

    private String postype;

    private String posdate;

    private String posnum;

    private String posdes;

    private String posreq;

    private String possal;

    private String posphone;

    private String posloc;


    public int getPositionid() {
        return positionid;
    }

    public void setPositionid(int positionid) {
        this.positionid = positionid;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getPositions() {
        return positions;
    }

    public void setPositions(String positions) {
        this.positions = positions;
    }

    public String getPostype() {
        return postype;
    }

    public void setPostype(String postype) {
        this.postype = postype;
    }

    public String getPosdate() {
        return posdate;
    }

    public void setPosdate(String posdate) {
        this.posdate = posdate;
    }

    public String getPosnum() {
        return posnum;
    }

    public void setPosnum(String posnum) {
        this.posnum = posnum;
    }

    public String getPosdes() {
        return posdes;
    }

    public void setPosdes(String posdes) {
        this.posdes = posdes;
    }

    public String getPosreq() {
        return posreq;
    }

    public void setPosreq(String posreq) {
        this.posreq = posreq;
    }

    public String getPossal() {
        return possal;
    }

    public void setPossal(String possal) {
        this.possal = possal;
    }

    public String getPosphone() {
        return posphone;
    }

    public void setPosphone(String posphone) {
        this.posphone = posphone;
    }

    public String getPosloc() {
        return posloc;
    }

    public void setPosloc(String posloc) {
        this.posloc = posloc;
    }
}
