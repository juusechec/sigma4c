// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.service.impl;

import java.util.List;
import org.sigma.core.domain.Parametro;
import org.sigma.core.service.impl.ParametroServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ParametroServiceImpl_Roo_Service {
    
    declare @type: ParametroServiceImpl: @Service;
    
    declare @type: ParametroServiceImpl: @Transactional;
    
    public long ParametroServiceImpl.countAllParametroes() {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public void ParametroServiceImpl.deleteParametro(Parametro parametro) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public Parametro ParametroServiceImpl.findParametro(Integer id) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public List<Parametro> ParametroServiceImpl.findAllParametroes() {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public List<Parametro> ParametroServiceImpl.findParametroEntries(int firstResult, int maxResults) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public void ParametroServiceImpl.saveParametro(Parametro parametro) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public Parametro ParametroServiceImpl.updateParametro(Parametro parametro) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
}