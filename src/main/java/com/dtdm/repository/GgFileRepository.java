package com.dtdm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dtdm.model.GgFile;

@Repository
public interface GgFileRepository extends JpaRepository<GgFile, Integer> {
	GgFile findById(int id);
}
