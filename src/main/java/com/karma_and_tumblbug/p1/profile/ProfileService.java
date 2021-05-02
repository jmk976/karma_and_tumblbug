package com.karma_and_tumblbug.p1.profile;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.karma_and_tumblbug.p1.util.FileManager;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Service
public class ProfileService {

	@Autowired
	private ProfileDAO profileDAO;
	@Autowired
	private FileManager fileManager;
	
	public ProfileDTO getProfile(ProfileDTO profileDTO)throws Exception{
		return profileDAO.getProfile(profileDTO);
	}
	
	public int updateProfile(ProfileDTO profileDTO)throws Exception{
		return profileDAO.updateProfile(profileDTO);
	}
	
	public int profileHome(ProfileDTO profileDTO)throws Exception{
		return profileDAO.profileHome(profileDTO);
	}
	
	
//	public void certifiedPhoneNumber(String phoneNumber, String cerNum) { //번호인증
//
//        String api_key = "NCS5HXBMR4JAHZAE";
//        String api_secret = "5WXN2FHVMAKEMG0CYQ2RSG2CJ5EGDMAE";
//        Message coolsms = new Message(api_key, api_secret);
//
//        // 4 params(to, from, type, text) are mandatory. must be filled
//        HashMap<String, String> params = new HashMap<String, String>();
//        params.put("to", phoneNumber);    // 수신전화번호
//        params.put("from", "01097448706");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
//        params.put("type", "SMS");
//        params.put("text", "KT 휴대폰인증 메시지 : 인증번호는" + "["+cerNum+"]" + "입니다.");
//        params.put("app_version", "test app 1.2"); // application name and version
//
//        try {
//            JSONObject obj = (JSONObject) coolsms.send(params);
//            System.out.println(obj.toString());
//        } catch (CoolsmsException e) {
//            System.out.println(e.getMessage());
//            System.out.println(e.getCode());
//        }
//
//    }

}
