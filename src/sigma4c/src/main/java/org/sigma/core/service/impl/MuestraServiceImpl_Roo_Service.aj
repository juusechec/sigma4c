// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.sigma.core.service.impl;

import java.util.List;
import org.sigma.core.domain.Muestra;
import org.sigma.core.service.impl.MuestraServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MuestraServiceImpl_Roo_Service {
    
    declare @type: MuestraServiceImpl: @Service;
    
    declare @type: MuestraServiceImpl: @Transactional;
    
    public long MuestraServiceImpl.countAllMuestras() {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public void MuestraServiceImpl.deleteMuestra(Muestra muestra) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public Muestra MuestraServiceImpl.findMuestra(Integer id) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public List<Muestra> MuestraServiceImpl.findAllMuestras() {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public List<Muestra> MuestraServiceImpl.findMuestraEntries(int firstResult, int maxResults) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public void MuestraServiceImpl.saveMuestra(Muestra muestra) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
    public Muestra MuestraServiceImpl.updateMuestra(Muestra muestra) {
        throw new UnsupportedOperationException("Implement me!");
    }
    
}
