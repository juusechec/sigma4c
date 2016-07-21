// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.service.impl;

import java.util.List;
import org.sigma.core.domain.FuenteHidrica;
import org.sigma.core.repository.FuenteHidricaRepository;
import org.sigma.core.service.impl.FuenteHidricaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FuenteHidricaServiceImpl_Roo_Service {
    
    declare @type: FuenteHidricaServiceImpl: @Service;
    
    declare @type: FuenteHidricaServiceImpl: @Transactional;
    
    @Autowired
    FuenteHidricaRepository FuenteHidricaServiceImpl.fuenteHidricaRepository;
    
    public long FuenteHidricaServiceImpl.countAllFuenteHidricas() {
        return fuenteHidricaRepository.count();
    }
    
    public void FuenteHidricaServiceImpl.deleteFuenteHidrica(FuenteHidrica fuenteHidrica) {
        fuenteHidricaRepository.delete(fuenteHidrica);
    }
    
    public FuenteHidrica FuenteHidricaServiceImpl.findFuenteHidrica(Integer id) {
        return fuenteHidricaRepository.findOne(id);
    }
    
    public List<FuenteHidrica> FuenteHidricaServiceImpl.findAllFuenteHidricas() {
        return fuenteHidricaRepository.findAll();
    }
    
    public List<FuenteHidrica> FuenteHidricaServiceImpl.findFuenteHidricaEntries(int firstResult, int maxResults) {
        return fuenteHidricaRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void FuenteHidricaServiceImpl.saveFuenteHidrica(FuenteHidrica fuenteHidrica) {
        fuenteHidricaRepository.save(fuenteHidrica);
    }
    
    public FuenteHidrica FuenteHidricaServiceImpl.updateFuenteHidrica(FuenteHidrica fuenteHidrica) {
        return fuenteHidricaRepository.save(fuenteHidrica);
    }
    
}