package com.fwd.repository;

import com.fwd.domain.Partner;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "partner", path = "partner")
public abstract interface PartnerRepository extends CrudRepository<Partner, Long>, PagingAndSortingRepository<Partner, Long> {
    
    @Query
    List<Partner> findByApproval(@Param("approval") boolean approval);
    
}
