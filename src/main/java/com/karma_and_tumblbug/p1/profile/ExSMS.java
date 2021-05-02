package com.karma_and_tumblbug.p1.profile;


	import java.util.HashMap;
	import org.json.simple.JSONObject;
	import net.nurigo.java_sdk.api.Message;
	import net.nurigo.java_sdk.exceptions.CoolsmsException;

	/**
	 * @class ExampleSend
	 * @brief This sample code demonstrate how to send sms through CoolSMS Rest API PHP
	 */
	public class ExSMS {
	  public static void main(String[] args) {
	    String api_key = "NCS5HXBMR4JAHZAE";
	    String api_secret = "5WXN2FHVMAKEMG0CYQ2RSG2CJ5EGDMAE";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", "01097448706");
	    params.put("from", "01097448706");
	    params.put("type", "SMS");
	    params.put("text", "첫번째 보내는 테스트 문자 메시지!");
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	  }
	}

