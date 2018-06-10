package com.shop.repository;

import com.shop.domain.entity.Language;
import org.springframework.data.repository.CrudRepository;

public interface LanguageRepository extends CrudRepository<Language,Integer> {
}
