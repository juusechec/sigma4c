// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.sigma.core.domain.Parametro;

privileged aspect Parametro_Roo_Jpa_Entity {
    
    declare @type: Parametro: @Entity;
    
    declare @type: Parametro: @Table(schema = "public", name = "parametro");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Parametro.id;
    
    public Integer Parametro.getId() {
        return this.id;
    }
    
    public void Parametro.setId(Integer id) {
        this.id = id;
    }
    
}
