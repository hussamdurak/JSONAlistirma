	$("#2").click(function() {
		if ($("#djson").is(":visible")) {
			$("#djson").fadeOut("slow");
		} else {
			$("#djson").fadeIn("slow");
		}
	});

	$("#2").click(function() {
				$.getJSON("http://localhost:8080/agprogramlamaodev/api",
						function(data) {
							$.each(data.dersler, function(key, item) {
								$('#id').val(item.did);
								$('#kodu').val(item.dkodu);
								$('#adi').val(item.dadi);
								$('#icerigi').val(item.dicerigi);

							});
						});

			});
			
	$("#jbutton").click(function() {
				$.getJSON("http://localhost:8080/agprogramlamaodev/allApi",function(data) {
					var json = JSON.stringify(data);
					$('#veri').val(json);							
						});X2JS.json2xml_str

			});
	
	
	$('#djson').keyup(function() {
		var did = $('#id').val();
		var dadi = $('#adi').val();
		var dkodu = $('#kodu').val();
		var dicerigi = $('#icerigi').val();
		$.ajax({
			url : '/agprogramlamaodev/dersUpdate',
			type : 'POST',
			data : {
				'did' : did,
				'dadi' : dadi,
				'dkodu' : dkodu,
				'dicerigi' : dicerigi,
			},
			success : function(data) {
				if(data == "vthatasi") {
					$('#bilgi').html("vthatasi oluştu");
				}else if (data == "hata"){
					$('#bilgi').html("kullanici adı yada şifre hatalı !");
				}else {
					$('#bilgi').html("Giriş başarılı");
				}
			}
		})
		
	});
	