package com.cos.blog.test;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncTest {
	
	@Test
	public void passHash() {
		String encPass = new BCryptPasswordEncoder().encode("1234");
		System.out.println(encPass);
	}
}
