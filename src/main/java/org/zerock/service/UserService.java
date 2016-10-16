package org.zerock.service;

import java.util.Date;

import org.zerock.domain.User;
import org.zerock.dto.LoginDTO;

public interface UserService {

  public User findByUserId(LoginDTO dto) throws Exception;

  public void keepLogin(String uid, String sessionId, Date next)throws Exception;
  
  public User checkLoginBefore(String value);  
}
