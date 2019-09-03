//전역변수
var loginId = null;
var loginName = null;
var loginMonth = null;

var today = new Date();
var toyear = today.getFullYear();
var tomonth = today.getMonth()+1;
var todate = today.getDate();
var todays = today.getDay();
var week = new Array('일', '월', '화', '수', '목', '금', '토');

var color = ["#F76D82", "#3b8686", "#cff09e", "#FC8370", "#62DDBD",
		"#F0C8A5", "#FECD57", "#73B1F4", "#9ED36A", "#AC92EA",
		"#A9B1BC", "#6A7563", "#CCA06F", "#F5C89C", "#7BBFC8",
		"#a8dba8", "#62DDBD", "#F299CE", "#79bd9a", "#fd999a"];
 
	//숫자컴마메소드 
	$.fn.comma = function(str){
		    str = String(str);
		    var minus = str.substring(0, 1);
		 
		    str = str.replace(/[^\d]+/g, '');
		    str = str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	
		     //음수일 경우
		    if(minus == "-") str = "-"+str;
		 
		    return str;
	};

	//tab1 chart1
	$.fn.setTab1Chart1Data = function(nameArr, inArr, outArr){
		AmCharts.makeChart("tab1-chart1", {
			"type": "serial",
			"theme": "light",
			"marginTop": 10,
			"marginRight": 0,
			"dataProvider": [{
				"year": nameArr[0],
				"value": inArr[0],
				"value2": outArr[0],
			}, {
				"year": nameArr[1],
				"value": inArr[1],
				"value2": outArr[1],
			}, {
				"year": nameArr[2],
				"value": inArr[2],
				"value2": outArr[2],
			}, {
				"year": nameArr[3],
				"value": inArr[3],
				"value2": outArr[3],
			}, {
				"year": nameArr[4],
				"value": inArr[4],
				"value2": outArr[4],
			}, {
				"year": nameArr[5],
				"value": inArr[5],
				"value2": outArr[5],
			}, {
				"year": nameArr[6],
				"value": inArr[6],
				"value2": outArr[6],
			}, {
				"year": nameArr[7],
				"value": inArr[7],
				"value2": outArr[7],
			}, {
				"year": nameArr[8],
				"value": inArr[8],
				"value2": outArr[8],
			}, {
				"year": nameArr[9],
				"value": inArr[9],
				"value2": outArr[9],
			}, {
				"year": nameArr[10],
				"value": inArr[10],
				"value2": outArr[10],
			}, {
				"year": "이번달",
				"value": inArr[11],
				"value2": outArr[11],
			}],
			"valueAxes": [{
				"axisAlpha": 0,
				"position": "left"
			}],
			"graphs": [{
				"id": "g1",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#5086F2",
				"lineThickness": 3,
				"negativeLineColor": "#5086F2",
				"valueField": "value"
			}, {
				"id": "g2",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#F29D35",
				"lineThickness": 3,
				"negativeLineColor": "#F29D35",
				"valueField": "value2"
			}],
			"chartCursor": {
				"cursorAlpha": 0,
				"valueLineEnabled": true,
				"valueLineBalloonEnabled": true,
				"valueLineAlpha": 0.3,
				"fullWidth": true
			},
			"categoryField": "year",
			"categoryAxis": {
				"minorGridAlpha": 0,
				"minorGridEnabled": true,
				"gridAlpha": 0,
				"axisAlpha": 0,
				"lineAlpha": 0
			},
			"legend": {
				"useGraphSettings": true,
				"position": "top"
			},
		});	   
   }

   $.fn.setTab1Chart2Data = function(nameArr, inArr, outArr){
		AmCharts.makeChart("tab1-chart2", {
			"type": "serial",
			"theme": "light",
			"marginTop": 10,
			"marginRight": 0,
			"dataProvider": [{
				"year": nameArr[4],
				"value": inArr[4],
				"value2": outArr[4],
			},{
				"year": nameArr[3],
				"value": inArr[3],
				"value2": outArr[3],
			}, {
				"year": nameArr[2],
				"value": inArr[2],
				"value2": outArr[2],
			}, {
				"year": "저번주",
				"value": inArr[1],
				"value2": outArr[1],
			}, {
				"year": "이번주",
				"value": inArr[0],
				"value2": outArr[0],
			}],
			"graphs": [{
				"id": "g1",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#5086F2",
				"lineThickness": 3,
				"negativeLineColor": "#5086F2",
				"valueField": "value"
			}, {
				"id": "g2",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#F29D35",
				"lineThickness": 3,
				"negativeLineColor": "#F29D35",
				"valueField": "value2"
			}],
			"chartCursor": {
				"cursorAlpha": 0,
				"valueLineEnabled": true,
				"valueLineBalloonEnabled": true,
				"valueLineAlpha": 0.3,
				"fullWidth": true
			},
			"categoryField": "year",
			"categoryAxis": {
				"minorGridAlpha": 0,
				"minorGridEnabled": true,
				"gridAlpha": 0,
				"axisAlpha": 0,
				"lineAlpha": 0
			},
			"legend": {
				"useGraphSettings": true,
				"position": "top"
			},
		}); 
   }
    
   
  $.fn.setTab1Chart3Data = function(nameArr, inArr, outArr){
		AmCharts.makeChart("tab1-chart3", {
			"type": "serial",
			"theme": "light",
			"marginTop": 10,
			"marginRight": 0,
			"dataProvider": [{
				"year": nameArr[0],
				"value": inArr[0],
				"value2": outArr[0],
			}, {
				"year": nameArr[1],
				"value": inArr[1],
				"value2": outArr[1],
			}, {
				"year": nameArr[2],
				"value": inArr[2],
				"value2": outArr[2],
			}, {
				"year": nameArr[3],
				"value": inArr[3],
				"value2": outArr[3],
			}, {
				"year": nameArr[4],
				"value": inArr[4],
				"value2": outArr[4],
			}, {
				"year": nameArr[5],
				"value": inArr[5],
				"value2": outArr[5],
			}, {
				"year": nameArr[6],
				"value": inArr[6],
				"value2": outArr[6],
			}, {
				"year": nameArr[7],
				"value": inArr[7],
				"value2": outArr[7],
			}, {
				"year": nameArr[8],
				"value": inArr[8],
				"value2": outArr[8],
			}, {
				"year": "올해",
				"value": inArr[9],
				"value2": outArr[9],
			}],
			"valueAxes": [{
				"axisAlpha": 0,
				"position": "left"
			}],
			"graphs": [{
				"id": "g1",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#5086F2",
				"lineThickness": 3,
				"negativeLineColor": "#5086F2",
				"valueField": "value"
			}, {
				"id": "g2",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#F29D35",
				"lineThickness": 3,
				"negativeLineColor": "#F29D35",
				"valueField": "value2"
			}],
			"chartCursor": {
				"cursorAlpha": 0,
				"valueLineEnabled": true,
				"valueLineBalloonEnabled": true,
				"valueLineAlpha": 0.3,
				"fullWidth": true
			},
			"categoryField": "year",
			"categoryAxis": {
				"minorGridAlpha": 0,
				"minorGridEnabled": true,
				"gridAlpha": 0,
				"axisAlpha": 0,
				"lineAlpha": 0
			},
			"legend": {
				"useGraphSettings": true,
				"position": "top"
			},
		});
  }
  
  $.fn.setTab1Chart4Data = function(nameArr, inArr, outArr){
	  var list = [];
	  for(var l =0; l<nameArr.length; l++){
		  list[l] = { "year": nameArr[l],
				  	"value": inArr[l],
				  	"value2": outArr[l]
		  };
	  }
	  
		AmCharts.makeChart("tab1-chart4", {
			"type": "serial",
			"theme": "light",
			"marginTop": 10,
			"marginRight": 0,
			"dataProvider": list,
			"valueAxes": [{
				"axisAlpha": 0,
				"position": "left"
			}],
			"graphs": [{
				"id": "g1",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#5086F2",
				"lineThickness": 3,
				"negativeLineColor": "#5086F2",
				"valueField": "value"
			}, {
				"id": "g2",
				"balloonText": "[[category]]<br><b><span style='font-size:14px;'>[[value]]</span></b>",
				"bullet": "round",
				"lineColor": "#F29D35",
				"lineThickness": 3,
				"negativeLineColor": "#F29D35",
				"valueField": "value2"
			}],
			"chartCursor": {
				"cursorAlpha": 0,
				"valueLineEnabled": true,
				"valueLineBalloonEnabled": true,
				"valueLineAlpha": 0.3,
				"fullWidth": true
			},
			"categoryField": "year",
			"categoryAxis": {
				"minorGridAlpha": 0,
				"minorGridEnabled": true,
				"gridAlpha": 0,
				"axisAlpha": 0,
				"lineAlpha": 0
			},
			"legend": {
				"useGraphSettings": true,
				"position": "top"
			},
		});
  }
  
  //문자형 숫자들 숫자형으로 변경해주는 함수
  $.fn.returnNumber = function(array){
	  var dArray = [];
	  for(var i = 0; i < array.length; i++){
		dArray[i] = array[i]*1;  
	  }
	  return dArray;
  }
  
  //지출분류별통계
  $.fn.setTab2Chart1Data = function(codeOT, nameArr, ot001, ot002, ot003, ot004, ot005, ot006, ot007, ot008, ot009, ot010, ot011){
	  nameArr[11] = "이번달";
	  Highcharts.chart('tab2-chart1', {
			title: {
				text: ''
			},
			xAxis: {
				categories: nameArr,
			},colors: ['#F76D82', '#62DDBD', '#F299CE', '#FC8370', '#62DDBD', '#F0C8A5', '#FECD57', '#73B1F4', '#9ED36A', '#AC92EA', '#A9B1BC']
			,series: [{
				type: 'column',
				name: codeOT[0],
				data: $.fn.returnNumber(ot001)
			},{
				type: 'column',
				name: codeOT[1],
				data: $.fn.returnNumber(ot002)
			},{
				type: 'column',
				name: codeOT[2],
				data: $.fn.returnNumber(ot003)
			},{
				type: 'column',
				name: codeOT[3],
				data: $.fn.returnNumber(ot004)
			},{
				type: 'column',
				name: codeOT[4],
				data: $.fn.returnNumber(ot005)
			},{
				type: 'column',
				name: codeOT[5],
				data: $.fn.returnNumber(ot006)
			},{
				type: 'column',
				name: codeOT[6],
				data: $.fn.returnNumber(ot007)
			},{
				type: 'column',
				name: codeOT[7],
				data: $.fn.returnNumber(ot008)
			},{
				type: 'column',
				name: codeOT[8],
				data: $.fn.returnNumber(ot009)
			},{
				type: 'column',
				name: codeOT[9],
				data: $.fn.returnNumber(ot010)
			},{
				type: 'column',
				name: codeOT[10],
				data: $.fn.returnNumber(ot011)
			}]
		});	  
  }  
 
  $.fn.setTab2Chart2Data = function(codeOT, nameArr, ot001, ot002, ot003, ot004, ot005, ot006, ot007, ot008, ot009, ot010, ot011){
	  Highcharts.chart('tab2-chart2', {
			title: {
				text: ''
			},
			xAxis: {
				categories: [nameArr[4], nameArr[3], nameArr[2], '저번주', '이번주'],
			},colors: ['#F76D82', '#62DDBD', '#F299CE', '#FC8370', '#62DDBD', '#F0C8A5', '#FECD57', '#73B1F4', '#9ED36A', '#AC92EA', '#A9B1BC']
			,series: [{
				type: 'column',
				name: codeOT[0],
				data: $.fn.returnNumber(ot001.reverse())
			},{
				type: 'column',
				name: codeOT[1],
				data: $.fn.returnNumber(ot002.reverse())
			},{
				type: 'column',
				name: codeOT[2],
				data: $.fn.returnNumber(ot003.reverse())
			},{
				type: 'column',
				name: codeOT[3],
				data: $.fn.returnNumber(ot004.reverse())
			},{
				type: 'column',
				name: codeOT[4],
				data: $.fn.returnNumber(ot005.reverse())
			},{
				type: 'column',
				name: codeOT[5],
				data: $.fn.returnNumber(ot006.reverse())
			},{
				type: 'column',
				name: codeOT[6],
				data: $.fn.returnNumber(ot007.reverse())
			},{
				type: 'column',
				name: codeOT[7],
				data: $.fn.returnNumber(ot008.reverse())
			},{
				type: 'column',
				name: codeOT[8],
				data: $.fn.returnNumber(ot009.reverse())
			},{
				type: 'column',
				name: codeOT[9],
				data: $.fn.returnNumber(ot010.reverse())
			},{
				type: 'column',
				name: codeOT[10],
				data: $.fn.returnNumber(ot011.reverse())
			}]
		});	  
  }  
 
  $.fn.setTab2Chart3Data = function(codeOT, nameArr, ot001, ot002, ot003, ot004, ot005, ot006, ot007, ot008, ot009, ot010, ot011){
	  nameArr[9] = "올해";
	  Highcharts.chart('tab2-chart3', {
			title: {
				text: ''
			},
			xAxis: {
				categories: nameArr,
			},colors: ['#F76D82', '#62DDBD', '#F299CE', '#FC8370', '#62DDBD', '#F0C8A5', '#FECD57', '#73B1F4', '#9ED36A', '#AC92EA', '#A9B1BC']
			,series: [{
				type: 'column',
				name: codeOT[0],
				data: $.fn.returnNumber(ot001)
			},{
				type: 'column',
				name: codeOT[1],
				data: $.fn.returnNumber(ot002)
			},{
				type: 'column',
				name: codeOT[2],
				data: $.fn.returnNumber(ot003)
			},{
				type: 'column',
				name: codeOT[3],
				data: $.fn.returnNumber(ot004)
			},{
				type: 'column',
				name: codeOT[4],
				data: $.fn.returnNumber(ot005)
			},{
				type: 'column',
				name: codeOT[5],
				data: $.fn.returnNumber(ot006)
			},{
				type: 'column',
				name: codeOT[6],
				data: $.fn.returnNumber(ot007)
			},{
				type: 'column',
				name: codeOT[7],
				data: $.fn.returnNumber(ot008)
			},{
				type: 'column',
				name: codeOT[8],
				data: $.fn.returnNumber(ot009)
			},{
				type: 'column',
				name: codeOT[9],
				data: $.fn.returnNumber(ot010)
			},{
				type: 'column',
				name: codeOT[10],
				data: $.fn.returnNumber(ot011)
			}]
		});	  
  }   
  
  //탭3 차트2
  $.fn.setTab3Chart1Data = function(assetName, assetData, assetCode){
	  $('#chart-statistics1 + div').empty();
	  var contents="";

/*	  
 	  for(var j=0; j<assetData.length; j++){
		  color[j]="#"+Math.round(Math.random()*0xffffff).toString(16);
	  }
*/

	  if(assetData.length==0){
		  $('#chart-statistics1').hide();
		  $('#chart-statistics2').hide();
		  
		  contents += "<div style='text-align:center;'>";
		  contents += "입력된 자산데이터가 없습니다 <br> 자산을 등록해주세요"
		  contents += "</div>";
		  
	  }else{
		  var asset = [];
		  for(var i=0; i<assetData.length; i++){
			  asset[i]={"title": assetName[i],
					  "value": assetData[i],
					  "color": color[i]
			  };
			  
			  contents += "<div class='pt-2 pb-2'>";
			  contents += "<span class='mr-3'>";
			  contents += "<i class='feather icon-circle mr-2'";
			  contents += "style='color:"+ color[i] +";'";
			  contents += "></i>";
			  contents += assetName[i];
			  contents += "</span>";
			  contents += "<span class='float-right'>";
			  contents += $.fn.comma(assetData[i]);
			  contents += " 원 </span>";
			  contents += "</div>";
		  }		  
	  }
	    $('#chart-statistics1 + div').append(contents);
	  
		AmCharts.makeChart("chart-statistics1", {
			"type": "pie",
			"theme": "light",
			"dataProvider": asset,
			"titleField": "title",
			"valueField": "value",
			"colorField": "color",
			"labelRadius": 5,
			"radius": "42%",
			"innerRadius": "90%",
			"labelText": "",
			"balloon": {
				"fixedPosition": true
			},
		});	  
  }    
  
  //탭3 차트2
  $.fn.setTab3Chart2Data = function(outData){
	  //하루에 얼마 지출하세요 정보 출력
	  var lastDay = ((new Date( toyear, tomonth, 0) ).getDate())*1;
	  var restMonth = (loginMonth-outData)/lastDay;
	  
	  //텍스트 정보 출력
	  $(".thisMonth_out").text($.fn.comma(outData)+" 원");
	  $(".thisMonth_month").text($.fn.comma(loginMonth-outData)+" 원");
	  $(".last_sub").text("이번달 총 사용지출은 "+ $.fn.comma(outData) +" 원 입니다.");
	  $(".thisMonthTitle").empty();
	  
	  if(loginMonth!=0){
		  $(".thisMonthTitle").append(loginName+"님, 하루에 <span class='money_out'>"+$.fn.comma(restMonth)+" 원</span>을 사용하시는 것을 권장 드려요.");
		  
		  if(restMonth==0){
			  $(".thisMonthTitle + div").text("한달 예산을 다 사용하셨어요 T_T");
		  }else{
			  $(".thisMonthTitle + div").text("");
		  }		  
	  }else{
		  $("#chart-statistics2 + div").empty();
		  $("#chart-statistics2 + div").append("<div style='text-align:center;'>입력된 예산데이터가 없습니다 <br> 예산을 등록해주세요</div>");
	  }

		AmCharts.makeChart("chart-statistics2", {
			"type": "pie",
			"theme": "light",
			"dataProvider": [{
				"title": "남은 예산",
				"value": loginMonth-outData,
				"color": "#1de9b6"
			}, {
				"title": "이번 달지출",
				"value": outData,
				"color": "#ecedef"
			}],
			"titleField": "title",
			"valueField": "value",
			"colorField": "color",
			"labelRadius": 5,
			"radius": "42%",
			"innerRadius": "90%",
			"labelText": "",
			"balloon": {
				"fixedPosition": true
			},
		});	  
  }  
  
  
  //탭4
  $.fn.setTab4ChartData = function(assetName, assetData){
	    var assetSum = $.fn.returnNumber(assetData);
	  	var dataList = []
	  	for(var j=0; j<assetName.length; j++){
	  		dataList[j] = { name : assetName[j],
	  						y : assetSum[j]
	  		};
	  	}
	  	
        Highcharts.chart('chart-highchart-pie1', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            colors: color,
            title: {
                text: ''
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                name: 'Brands',
                colorByPoint: true,
                data: dataList
            }]
        });
  }  
  
	//데이터 가져오기
	//tab1 : 수입 및 지출 통계 
   $.fn.getTab1ChartData = function(yyyy, mmmm, dddd){
	   $.ajax({
		   type: "GET",
		   url : "asset_cond/tab1chartData.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: yyyy,
			   		mmmm: mmmm,
			   		dddd, dddd
		   },
		   success : function(data){
			   var nameArr1 = data.dataName1;
			   var inData1 = data.inData1;
			   var outData1 = data.outData1;
			   $.fn.setTab1Chart1Data(nameArr1, inData1, outData1);
			   
			   var nameArr2 = data.dataName2;
			   var inData2 = data.inData2;
			   var outData2 = data.outData2;
			   $.fn.setTab1Chart2Data(nameArr2, inData2, outData2);			   
			   
			   var nameArr3 = data.dataName3;
			   var inData3 = data.inData3;
			   var outData3 = data.outData3;
			   $.fn.setTab1Chart3Data(nameArr3, inData3, outData3);
			   
			   var nameArr4 = data.dataName4;
			   var inData4 = data.inData4;
			   var outData4 = data.outData4;
			   $.fn.setTab1Chart4Data(nameArr4, inData4, outData4);
			   
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });       	   
   }

	//tab2 : 수입 및 지출 통계 
   $.fn.getTab2ChartData = function(yyyy, mmmm, dddd){
	   $.ajax({
		   type: "GET",
		   url : "asset_cond/tab2chartData.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: yyyy,
			   		mmmm: mmmm,
			   		dddd, dddd
		   },
		   success : function(data){
			   var codeOT = data.codeOT;
			   
			   var nameArr1 = data.dataName1;
			   var ot001_1 = data.ot001_1;
			   var ot002_1 = data.ot002_1;
			   var ot003_1 = data.ot003_1;
			   var ot004_1 = data.ot004_1;
			   var ot005_1 = data.ot005_1;
			   var ot006_1 = data.ot006_1;
			   var ot007_1 = data.ot007_1;
			   var ot008_1 = data.ot008_1;
			   var ot009_1 = data.ot009_1;
			   var ot010_1 = data.ot010_1;
			   var ot011_1 = data.ot011_1;
			   
			   $.fn.setTab2Chart1Data(codeOT, nameArr1, ot001_1, ot002_1, ot003_1, ot004_1, ot005_1, ot006_1, ot007_1, ot008_1, ot009_1, ot010_1, ot011_1);
			   
			   var nameArr2 = data.dataName2;
			   var ot001_2 = data.ot001_2;
			   var ot002_2 = data.ot002_2;
			   var ot003_2 = data.ot003_2;
			   var ot004_2 = data.ot004_2;
			   var ot005_2 = data.ot005_2;
			   var ot006_2 = data.ot006_2;
			   var ot007_2 = data.ot007_2;
			   var ot008_2 = data.ot008_2;
			   var ot009_2 = data.ot009_2;
			   var ot010_2 = data.ot010_2;
			   var ot011_2 = data.ot011_2;
			   
			   $.fn.setTab2Chart2Data(codeOT, nameArr2, ot001_2, ot002_2, ot003_2, ot004_2, ot005_2, ot006_2, ot007_2, ot008_2, ot009_2, ot010_2, ot011_2);
			   
			   var nameArr3 = data.dataName3;
			   var ot001_3 = data.ot001_3;
			   var ot002_3 = data.ot002_3;
			   var ot003_3 = data.ot003_3;
			   var ot004_3 = data.ot004_3;
			   var ot005_3 = data.ot005_3;
			   var ot006_3 = data.ot006_3;
			   var ot007_3 = data.ot007_3;
			   var ot008_3 = data.ot008_3;
			   var ot009_3 = data.ot009_3;
			   var ot010_3 = data.ot010_3;
			   var ot011_3 = data.ot011_3;
			   
			   $.fn.setTab2Chart3Data(codeOT, nameArr3, ot001_3, ot002_3, ot003_3, ot004_3, ot005_3, ot006_3, ot007_3, ot008_3, ot009_3, ot010_3, ot011_3);			   
			   			   
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });       	   
   } 	

	//tab3 : 나의 자산 현황
   $.fn.getTab3ChartData = function(yyyy, mmmm, dddd){
	   $.ajax({
		   type: "GET",
		   url : "asset_cond/tab3chartData.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: yyyy,
			   		mmmm: mmmm,
			   		dddd, dddd
		   },
		   success : function(data){
			   var assetName1 = data.assetName1;
			   var assetData1 = data.assetData1;
			   var assetCode1 = data.assetCode1;
			   $.fn.setTab3Chart1Data(assetName1, assetData1, assetCode1);
			   
			   var outData2 = data.outData2;
			   $.fn.setTab3Chart2Data(outData2);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });  
   } 	

	//tab4 : 자산별 지출현황
   $.fn.getTab4ChartData = function(yyyy, mmmm, dddd){
	   $.ajax({
		   type: "GET",
		   url : "asset_cond/tab4chartData.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: yyyy,
			   		mmmm: mmmm,
			   		dddd, dddd
		   },
		   success : function(data){
			   var assetName1 = data.assetName1;
			   var assetData1 = data.assetData1;
			   $.fn.setTab4ChartData(assetName1, assetData1);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });  
   }

	//tab4 - top3
   $.fn.getTab4Top3IOData = function(yyyy, mmmm, dddd){
	   $.ajax({
		   type: "GET",
		   url : "asset_cond/top3IO.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: yyyy,
			   		mmmm: mmmm,
			   		dddd, dddd
		   },
		   success : function(data){
			   $('#top3IO').empty();
			   var content = "";
			   if(0==data.length){
				   content += "<div>";
				   content += "해당 월에 지출내역이 없습니다.";
				   content += "</div>"
			   }else{
				   for(var i=0; i<data.length; i++){
					   content += "<div class='row'>";
					   content += "<div class='col-sm-2 col-form-label'>";
					   content += "<i class='mdi mdi-numeric-"+(i+1)+"-box'></i>";
					   content += "</div>";
					   content += "<div class='col col-form-label'>";
					   content += data[i].I_memo;
					   content += "</div>";
					   content += "<div class='col-sm-2 col-form-label'>";
					   content += data[i].I_date;
					   content += "</div>";
					   content += "<div class='col-sm-3 col-form-label text-right'>";
					   content += $.fn.comma(data[i].I_money)+" 원";
					   content += "</div>";
					   content += "</div>";
				   }
			   }
			   $('#top3IO').append(content);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });  
   } 	
   
	//tab4 - 건수top3
   $.fn.getTab4Top3CountData = function(yyyy, mmmm, dddd){
	   $.ajax({
		   type: "GET",
		   url : "asset_cond/top3CountIO.do",
		   dataType : "json",
		   data : { M_id: loginId,
			   		yyyy: yyyy,
			   		mmmm: mmmm,
			   		dddd, dddd
		   },
		   success : function(data){
			   $('#top3CountIO').empty();
			   var content = "";
			   if(0==data.length){
				   content += "<div>";
				   content += "해당 월에 지출내역이 없습니다.";
				   content += "</div>"
			   }else{
				   for(var i=0; i<data.length; i++){
					   content += "<div class='row'>";
					   content += "<div class='col-sm-2 col-form-label'>";
					   content += "<i class='mdi mdi-numeric-"+(i+1)+"-box'></i>";
					   content += "</div>";
					   content += "<div class='col col-form-label'>";
					   content += data[i].C_categori;
					   content += "</div>";
					   content += "<div class='col-sm-2 col-form-label'>";
					   content += data[i].ct+"건";
					   content += "</div>";
					   content += "<div class='col-sm-3 col-form-label text-right'>";
					   content += $.fn.comma(data[i].sumMoney)+" 원";
					   content += "</div>";
					   content += "</div>";
				   }
			   }
			   $('#top3CountIO').append(content);
		   },
		   error:function(request,status,error){
	          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
		   
	   });  
   }    
////////////////////////////////////////////////////////////////
//메소드 첫실행 ******************************************************************************************
   
$(document).ready(function() {
	loginId=$("#loginId").val();
	loginName=$("#loginName").val();
	loginMonth = $('#loginMonth').val();
	loginMonth = loginMonth*1;
	
	$('.today_yy').text(toyear);
	$('.today_mm').text(tomonth);
	$('.today_dd').text(todate);
	$('.today_dy').text(week[todays]);
	
	$.fn.getTab1ChartData(toyear, tomonth, todate);
	$.fn.getTab2ChartData(toyear, tomonth, todate);
	$.fn.getTab3ChartData(toyear, tomonth, todate);
	$.fn.getTab4ChartData(toyear, tomonth, todate);
	$.fn.getTab4Top3IOData(toyear, tomonth, todate);
	$.fn.getTab4Top3CountData(toyear, tomonth, todate);
	
	// card-collapse arrow
	var arrow_dir = function() {
		child = $(this).children('div').children();
		if ($(this).hasClass('collapsed')) {
			child.addClass('fa-chevron-down').removeClass('fa-chevron-up');
		} else {
			child.addClass('fa-chevron-up').removeClass('fa-chevron-down');
		}
	}
	$('.card.my-statistics > .card-header > a').each(arrow_dir);
	$(document).on('click', function() {
		$('.card.my-statistics > .card-header > a').each(arrow_dir);
	});

});
