// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.domain;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import org.sigma.core.domain.Empresa;
import org.sigma.core.domain.Rol;
import org.sigma.core.domain.User;

privileged aspect User_Roo_DbManaged {
    
    @ManyToMany(mappedBy = "users", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Rol> User.rols;
    
    @ManyToOne
    @JoinColumn(name = "id_empresa", referencedColumnName = "id")
    private Empresa User.idEmpresa;
    
    @Column(name = "alias")
    private String User.alias;
    
    @Column(name = "mail")
    private String User.mail;
    
    @Column(name = "nombre")
    private String User.nombre;
    
    public Set<Rol> User.getRols() {
        return rols;
    }
    
    public void User.setRols(Set<Rol> rols) {
        this.rols = rols;
    }
    
    public Empresa User.getIdEmpresa() {
        return idEmpresa;
    }
    
    public void User.setIdEmpresa(Empresa idEmpresa) {
        this.idEmpresa = idEmpresa;
    }
    
    public String User.getAlias() {
        return alias;
    }
    
    public void User.setAlias(String alias) {
        this.alias = alias;
    }
    
    public String User.getMail() {
        return mail;
    }
    
    public void User.setMail(String mail) {
        this.mail = mail;
    }
    
    public String User.getNombre() {
        return nombre;
    }
    
    public void User.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
