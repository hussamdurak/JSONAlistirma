package com.calisma.agprogramlamaodev;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	DB db = new DB();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<OBS> ls = new ArrayList<OBS>();
		try {
			String q = "select*from dersler";
			ResultSet rs = db.baglan().executeQuery(q);
			while (rs.next()) {
				OBS obs = new OBS();
				obs.setDid(rs.getString(1));
				obs.setDkodu(rs.getString(2));
				obs.setDadi(rs.getString(3));
				obs.setDicerigi(rs.getString(4));

				ls.add(obs);
			}
		} catch (Exception e) {
			System.err.println("Data Getirme Hatasi : " + e);
		}
		model.addAttribute("ls", ls);
		return "index";
	}
	
	
	
		@ResponseBody
		@RequestMapping(value = "/dersUpdate", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
		public String dersUpdate(OBS obs) {
			try {
				String q = "UPDATE dersler SET dadi= '"+obs.getDadi()+"', dicerigi= '"+obs.getDicerigi()+"', dkodu= '"+obs.getDkodu()+"'  WHERE did = '"+obs.getDid()+"' ";
				int sonuc = db.baglan().executeUpdate(q);
				if(sonuc>0) {
					System.out.println("kayit basarili");
					return "basarili";
				}else {
					System.out.println("kayit basarisiz");
					return "hata";
				}
			} catch (Exception e) {
				System.err.println("Giris Hatasi : " + e);
				return "vthatasi";
			}
		}
	
	

}
