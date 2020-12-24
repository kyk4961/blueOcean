package com.blueOcean.inf.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.blueOcean.inf.dto.AlarmDto;
import com.blueOcean.inf.dto.PagingDto;

public class AlarmService {

	@Autowired
	protected SqlSessionTemplate dao;
	
	public int selectAlarmCnt() {
		return dao.selectOne("alarmMapper.selectAlarmCnt");
	}

	
	public List<AlarmDto> selectAlarmListPage(PagingDto paging) {
		
		return dao.selectList("alarmMapper.selectAlarmListPage", paging);
		
	}
//
//	public ResDto<AlarmDto> selectAlarmList(AlarmDto alarmDto) {
//		ResDto<AlarmDto> rtnDto = new ResDto<AlarmDto>();
//		try {
//			
//			if("A001".equals(alarmDto.getAlarmCd())) { // 사고위험알림
//				List<AlarmDto> alarmList = dao.selectList("areaMapper.selectAreaEventList", alarmDto.getDeviceId());
//				rtnDto.setRtnList(alarmList);
//				
//			} else if("A002".equals(alarmDto.getAlarmCd())) { // 사고예방알림
//				List<AlarmDto> alarmList = new ArrayList<AlarmDto>();
//				alarmList.add(new AlarmDto() {{
//					setAlarmCd("A002001");
//					setAlarmMsg("빅데이터 분석 결과, 0시~8시 사이에 충돌사고 빈도가 높습니다. 충돌사고에 유의해 주세요.");
//				}});
//				alarmList.add(new AlarmDto() {{
//					setAlarmCd("A002002");
//					setAlarmMsg("빅데이터 분석 결과, 20시~4시 사이에 화재사고 발생확률이 높습니다. 선박 내 전열기구 관리에 유의해 주세요.");
//				}});
//				alarmList.add(new AlarmDto() {{
//					setAlarmCd("A002003");
//					setAlarmMsg("빅데이터 분석 결과, 밤~새벽 시간대인 0시에서 8시사이 근해어업선의 안전 사고 확률이 높습니다. 안전사고에 유의해 주세요.");
//				}});
//				alarmList.add(new AlarmDto() {{
//					setAlarmCd("A002004");
//					setAlarmMsg("빅데이터 분석 결과, 8시~16시 사이에 안전사고 빈도수가 높습니다. 안전사고에 유의해 주세요.");
//				}});
//				alarmList.add(new AlarmDto() {{
//					setAlarmCd("A002005");
//					setAlarmMsg("빅데이터 분석 결과, 10월에는 낚시어선의 운항저해 사고 확률이 높습니다. 운항저해의 가장 큰 원인인 고갈된 연료, 정비 불량 상태 등을 미리 확인해서 안전사고에 유의해 주세요.");
//				}});
//				alarmList.add(new AlarmDto() {{
//					setAlarmCd("A002006");
//					setAlarmMsg("빅데이터 분석 결과, 겨울에는 충돌사고 빈도가 높습니다. 충돌사고에 유의하여 운항 해 주세요.");
//				}});
//				rtnDto.setRtnList(alarmList);
//			} else if("A003".equals(alarmDto.getAlarmCd())) { // My 위험노출알림
//				List<AlarmDto> alarmList = dao.selectList("alarmMapper.selectAlarmHistList", alarmDto.getDeviceId());
//				rtnDto.setRtnList(alarmList);
//			}
//			
//			
//			
//			
//			rtnDto.setRtnCd(200);
//			rtnDto.setRtnMsg("정상처리 되었습니다.");
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//			rtnDto.setRtnCd(500);
//			rtnDto.setRtnMsg("오류가 발생했습니다.");
//			
//		}
//		
//		return rtnDto;
//		
//	}
//	
//	public ResDto<AlarmDto> insertAlarm(AlarmDto alarmDto) {
//		ResDto<AlarmDto> rtnDto = new ResDto<AlarmDto>();
//		
//		try {
//			dao.insert("alarmMapper.insertAlarm", alarmDto);
//			
//			rtnDto.setRtnCd(200);
//			rtnDto.setRtnMsg("정상처리 되었습니다.");
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//			rtnDto.setRtnCd(500);
//			rtnDto.setRtnMsg("오류가 발생했습니다.");
//		}
//		return rtnDto;
//		
//	}
	

}
