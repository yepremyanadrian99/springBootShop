package com.shop.controller;

import com.shop.domain.entity.Language;
import com.shop.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LanguageController {

    @Autowired
    private Language language;
    @Autowired
    private LanguageService languageService;
    @RequestMapping(value = "change-to/{langId}")
    public String changeRo(@PathVariable("langId") int langId, HttpServletRequest httpServletRequest){

        languageService.initCurrentLang(language,langId);
        return "redirect:"+httpServletRequest.getHeader("Referer");
    }
}
