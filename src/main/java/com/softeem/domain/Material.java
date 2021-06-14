package com.softeem.domain;

/**
 * 食材
 *
 **/
public class Material {
    private Integer id;
    private String name;
    private String factoryOutId;
    private Dishes dishes;



    public Material() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFactoryOutId() {
        return factoryOutId;
    }

    public void setFactoryOutId(String factoryOutId) {
        this.factoryOutId = factoryOutId;
    }

    public Dishes getDishes() {
        return dishes;
    }

    public void setDishes(Dishes dishes) {
        this.dishes = dishes;
    }

    @Override
    public String toString() {
        return "Material{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", factoryOutId='" + factoryOutId + '\'' +
                '}';
    }
}
