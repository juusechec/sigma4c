// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.repository;

import org.sigma.core.domain.Rol;
import org.sigma.core.repository.RolRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect RolRepository_Roo_Jpa_Repository {
    
    declare parents: RolRepository extends JpaRepository<Rol, Integer>;
    
    declare parents: RolRepository extends JpaSpecificationExecutor<Rol>;
    
    declare @type: RolRepository: @Repository;
    
}