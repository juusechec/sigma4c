// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.service.impl;

import java.util.List;
import org.sigma.core.domain.Parametro;
import org.sigma.core.repository.ParametroRepository;
import org.sigma.core.service.impl.ParametroServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ParametroServiceImpl_Roo_Service {
    
    declare @type: ParametroServiceImpl: @Service;
    
    declare @type: ParametroServiceImpl: @Transactional;
    
    @Autowired
    ParametroRepository ParametroServiceImpl.parametroRepository;
    
    public long ParametroServiceImpl.countAllParametroes() {
        return parametroRepository.count();
    }
    
    public void ParametroServiceImpl.deleteParametro(Parametro parametro) {
        parametroRepository.delete(parametro);
    }
    
    public Parametro ParametroServiceImpl.findParametro(Integer id) {
        return parametroRepository.findOne(id);
    }
    
    public List<Parametro> ParametroServiceImpl.findAllParametroes() {
        return parametroRepository.findAll();
    }
    
    public List<Parametro> ParametroServiceImpl.findParametroEntries(int firstResult, int maxResults) {
        return parametroRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void ParametroServiceImpl.saveParametro(Parametro parametro) {
        parametroRepository.save(parametro);
    }
    
    public Parametro ParametroServiceImpl.updateParametro(Parametro parametro) {
        return parametroRepository.save(parametro);
    }
    
}
