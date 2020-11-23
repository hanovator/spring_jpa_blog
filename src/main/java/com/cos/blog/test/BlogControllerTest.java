package com.cos.blog.test;

import org.springframework.web.bind.annotation.RestController;

@RestController
public class BlogControllerTest {
	public String  hello() {
		return "hello";
	}
}
