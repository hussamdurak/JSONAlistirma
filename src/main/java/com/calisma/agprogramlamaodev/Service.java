package com.calisma.agprogramlamaodev;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Service {
	
	DB db = new DB();
	
	@RequestMapping(value = "/api", method = RequestMethod.GET)
	public HashMap<String, Object> api(){
		
		HashMap<String, Object> hm = new HashMap<String, Object>();
		List<OBS> ls = new ArrayList<OBS>();
		try {
			String q = "select*from dersler where did = '"+1+"' ";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				OBS obs = new OBS();
				obs.setDid(rs.getString(1));
				obs.setDkodu(rs.getString(2));
				obs.setDadi(rs.getString(3));
				obs.setDicerigi(rs.getString(4));

				ls.add(obs);
			}
			hm.put("durum", true);
			hm.put("mesaj", "dersleri getirme baþarili");
			hm.put("dersler", ls);			
		} catch (Exception e) {
			hm.put("durum", false);
			hm.put("mesaj", "dersleri getirme baþarisiz");
			System.err.println("Data Getirme Hatasi : " + e);
		}
		
		return hm;
	}
	
	
	@RequestMapping(value = "/allApi", method = RequestMethod.GET)
	public HashMap<String, Object> allApi(){
		
		HashMap<String, Object> hm = new HashMap<String, Object>();
		List<OBS> ls = new ArrayList<OBS>();
		try {
			String q = "select*from dersler ";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				OBS obs = new OBS();
				obs.setDid(rs.getString(1));
				obs.setDkodu(rs.getString(2));
				obs.setDadi(rs.getString(3));
				obs.setDicerigi(rs.getString(4));

				ls.add(obs);
			}
			hm.put("durum", true);
			hm.put("mesaj", "dersleri getirme baþarili");
			hm.put("dersler", ls);			
		} catch (Exception e) {
			hm.put("durum", false);
			hm.put("mesaj", "dersleri getirme baþarisiz");
			System.err.println("Data Getirme Hatasi : " + e);
		}
		
		return hm;
	}

}
