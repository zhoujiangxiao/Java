package cn.com.project.system.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.activation.URLDataSource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.json.JSONException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.com.project.context.ProjectContextFactory;
import cn.com.project.system.model.User;
import cn.com.project.system.service.IUserService;

@RestController
@RequestMapping("/userController")
public class UserController {

	IUserService service = (IUserService)ProjectContextFactory.getBean("userServiceImpl");
	
	@RequestMapping(value = "/queryUserList", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<User> queryUserList(HttpServletRequest request, HttpServletResponse response){
		List<User> list = service.queryUserList();
		return list;
	}
	
	/**
	 *  �����û�
	 * @param request
	 * @param response
	 * @return
	 * @throws JSONException
	 * @throws ParseException
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST, headers = "Accept=application/json")
	public int saveUser(HttpServletRequest request, HttpServletResponse response) throws JSONException, ParseException, UnsupportedEncodingException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String json = request.getParameter("user");
		
		json = URLDecoder.decode(json, "UTF-8");
		
		System.out.println("--"+json+"--");
		
		Integer id = null;
		JSONObject obj = new JSONObject().fromObject(json);
		if(!("").equals(obj.getString("id")) && obj.getString("id")!=null){
			id = Integer.parseInt(obj.getString("id"));
		}
		User user = new User();
		user.setId(id);
		user.setLoginName(obj.getString("loginName"));
		user.setPassword(obj.getString("password"));
		user.setUserName(obj.getString("userName"));
		user.setEnglishName(obj.getString("englishName"));
		user.setEmail(obj.getString("email"));
		user.setNationality(obj.getString("nationality"));
		user.setSex(obj.getString("sex"));
		user.setBirthDate(("").equals(obj.get("birthDate").toString())?null:sdf.parse(obj.get("birthDate").toString()));
		user.setPhoneNumber(obj.getString("phoneNumber"));
		user.setPhoneNumberOther(obj.getString("phoneNumberOther"));
		return service.saveUser(user);
		//return 1;
	}
	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET, headers = "Accept=application/json")
	public int deleteUser(HttpServletResponse response,HttpServletRequest request){
		String ids = request.getParameter("ids");
		service.removeUser(ids);
		return 1;
	}
}
