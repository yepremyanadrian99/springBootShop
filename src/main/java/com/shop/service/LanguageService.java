package com.shop.service;

import com.shop.domain.entity.Language;
import com.shop.repository.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LanguageService {
    @Autowired
    private LanguageRepository languageRepository;
    public Iterable<Language> getAll(){
        return languageRepository.findAll();

    }
    public void initCurrentLang(Language language, int id){
        language.setCurrentId(id);
        Language one = languageRepository.findOne(id);
        language.setId(one.getId());
        language.setCurrentId(one.getId());
        language.setCode(one.getCode());
        language.setName(one.getName());
    }
}
