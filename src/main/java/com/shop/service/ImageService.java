package com.shop.service;

import com.shop.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageService {


    @Autowired
    ImageRepository imageRepository;

}
