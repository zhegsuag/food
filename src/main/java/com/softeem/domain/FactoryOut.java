package com.softeem.domain;

/**
 *工厂出货批号
 **/
public class FactoryOut {
    private String id;
    private String made_id;
    private Long made_dept_id;
    private Long sell_dept_name;
    private String product_path;
    private String brand_name;
   private String product_name;
   private String principal;
   private String phone;
   private String hash_data;

    public FactoryOut() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMade_id() {
        return made_id;
    }

    public void setMade_id(String made_id) {
        this.made_id = made_id;
    }

    public Long getMade_dept_id() {
        return made_dept_id;
    }

    public void setMade_dept_id(Long made_dept_id) {
        this.made_dept_id = made_dept_id;
    }

    public Long getSell_dept_name() {
        return sell_dept_name;
    }

    public void setSell_dept_name(Long sell_dept_name) {
        this.sell_dept_name = sell_dept_name;
    }

    public String getProduct_path() {
        return product_path;
    }

    public void setProduct_path(String product_path) {
        this.product_path = product_path;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getHash_data() {
        return hash_data;
    }

    public void setHash_data(String hash_data) {
        this.hash_data = hash_data;
    }

    @Override
    public String toString() {
        return "FactoryOut{" +
                "id='" + id + '\'' +
                ", made_id='" + made_id + '\'' +
                ", made_dept_id=" + made_dept_id +
                ", sell_dept_name=" + sell_dept_name +
                ", product_path='" + product_path + '\'' +
                ", brand_name='" + brand_name + '\'' +
                ", product_name='" + product_name + '\'' +
                ", principal='" + principal + '\'' +
                ", phone='" + phone + '\'' +
                ", hash_data='" + hash_data + '\'' +
                '}';
    }
}
