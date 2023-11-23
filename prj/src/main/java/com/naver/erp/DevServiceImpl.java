package com.naver.erp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class DevServiceImpl implements DevService {

   @Autowired
   private DevDAO devDAO;

   @Override
   public int insertDevInfo(DevDTO devDTO) throws Exception {
      int idCheckCnt = 0;
      idCheckCnt = this.devDAO.idCheckInfo(devDTO);
      if(idCheckCnt>0) {
         idCheckCnt=11;
         return idCheckCnt;
      }
      
      int devRegCnt = 0;
      devRegCnt = this.devDAO.insertDevInfo(devDTO);

      if (devDTO.getEmergency_name() != null && devDTO.getEmergency_name().length() > 0) {
          devRegCnt = this.devDAO.dev_emergency_line(devDTO);
      }
      devRegCnt = this.devDAO.highSchool_info(devDTO);
      if (devDTO.getJuniorCollege_name() != null && devDTO.getJuniorCollege_name().length() > 0) {
         devRegCnt = this.devDAO.juniorCollege_info(devDTO);
      } 
      if (devDTO.getUniversity_name() != null && devDTO.getUniversity_name().length() > 0) {
         devRegCnt = this.devDAO.university_info(devDTO);
      } 
      if (devDTO.getMaster_name() != null && devDTO.getMaster_name().length() > 0) {
         devRegCnt = this.devDAO.master_info(devDTO);
      }
      if (devDTO.getDoctor_name() != null && devDTO.getDoctor_name().length() > 0) {
         devRegCnt = this.devDAO.doctor_info(devDTO);
      }
      if (devDTO.getFamily_name1() != null && devDTO.getFamily_name1().length() > 0) {
         devRegCnt = this.devDAO.dev_family_info1(devDTO);
      }
      if (devDTO.getFamily_name2() != null && devDTO.getFamily_name2().length() > 0) {
         devRegCnt = this.devDAO.dev_family_info2(devDTO);
      }
      if (devDTO.getFamily_name3() != null && devDTO.getFamily_name3().length() > 0) {
         devRegCnt = this.devDAO.dev_family_info3(devDTO);   
      }
      if (devDTO.getFamily_name4() != null && devDTO.getFamily_name4().length() > 0) {
         devRegCnt = this.devDAO.dev_family_info4(devDTO); 
      } 
      if (devDTO.getFamily_name5() != null && devDTO.getFamily_name5().length() > 0) {
         devRegCnt = this.devDAO.dev_family_info5(devDTO);
      } 
      if (devDTO.getPast_company_name1() != null && devDTO.getPast_company_name1().length() > 0) {
         devRegCnt = this.devDAO.past_company_info(devDTO);  
      }
      if (devDTO.getLicense() != null && devDTO.getLicense().size()>0) {
         devRegCnt = this.devDAO.dev_license(devDTO);
      }
      if (devDTO.getCan_reading_language() != null && devDTO.getCan_reading_language().size() > 0) {
         devRegCnt = this.devDAO.dev_reading_language_info(devDTO);
      }
      if (devDTO.getCan_speaking_language() != null && devDTO.getCan_speaking_language().size() > 0) {
         devRegCnt = this.devDAO.dev_speaking_language_info(devDTO);
      }
      if (devDTO.getItCenter_name() != null && devDTO.getItCenter_name().length() > 0) {
         devRegCnt = this.devDAO.itCenter_info(devDTO);
      }

      devRegCnt = this.devDAO.dev_liking_info(devDTO);
      devRegCnt = this.devDAO.dev_interest_info(devDTO);
      
      if (devDTO.getPast_prj_name() != null && devDTO.getPast_prj_name().length() > 0) {
         devRegCnt = this.devDAO.dev_past_prj_info(devDTO);
      }
      if (devDTO.getServer_computer1() != null && devDTO.getServer_computer1().size() > 0) {
         devRegCnt = this.devDAO.dev_server_computer_info(devDTO);
      }
      if (devDTO.getOS1() != null && devDTO.getOS1().size() > 0) {
         devRegCnt = this.devDAO.dev_OS_info(devDTO);
      }
      if (devDTO.getIt_language1() != null && devDTO.getIt_language1().size() > 0) {
         devRegCnt = this.devDAO.dev_it_language_info(devDTO);
      }
      if (devDTO.getDBMS1() != null && devDTO.getDBMS1().size() > 0) {
         devRegCnt = this.devDAO.dev_DBMS_info(devDTO);
      }
      if (devDTO.getTool1() != null && devDTO.getTool1().size() > 0) {
         devRegCnt = this.devDAO.dev_tool_info(devDTO);
      }
      return devRegCnt;
   }

   @Override
   public int deleteDevInfo(DevDTO devDTO) throws Exception {
      int deleteDevCnt = 0;
      deleteDevCnt = this.devDAO.deleteDevInfo(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_emergency_line(devDTO); 
      deleteDevCnt = this.devDAO.delete_highSchool_info(devDTO);
      deleteDevCnt = this.devDAO.delete_juniorCollege_info(devDTO);
      deleteDevCnt = this.devDAO.delete_university_info(devDTO);
      deleteDevCnt = this.devDAO.delete_master_info(devDTO);
      deleteDevCnt = this.devDAO.delete_doctor_info(devDTO);
      deleteDevCnt = this.devDAO.delete_past_company_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_family_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_license(devDTO);
      deleteDevCnt = this.devDAO.delete_reading_language_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_speaking_language_info(devDTO);
      deleteDevCnt = this.devDAO.delete_itCenter_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_liking_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_past_prj_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_server_computer_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_OS_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_it_language_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_DBMS_info(devDTO);
      deleteDevCnt = this.devDAO.delete_dev_tool_info(devDTO);
      deleteDevCnt = this.devDAO.delete_interest_info(devDTO);
      return deleteDevCnt;
   }
   
   
   
   @Override
   public int updateDevInfo(DevDTO devDTO) throws Exception {
      int updateDevCnt = 0;
      
      updateDevCnt = this.devDAO.delete_dev_family_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_speaking_language_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_license(devDTO);
      updateDevCnt = this.devDAO.delete_reading_language_info(devDTO);
      updateDevCnt = this.devDAO.delete_interest_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_server_computer_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_OS_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_it_language_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_DBMS_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_tool_info(devDTO);
      updateDevCnt = this.devDAO.delete_itCenter_info(devDTO);
      updateDevCnt = this.devDAO.delete_dev_past_prj_info(devDTO);
      updateDevCnt = this.devDAO.delete_doctor_info(devDTO);
      updateDevCnt = this.devDAO.delete_juniorCollege_info(devDTO);
      updateDevCnt = this.devDAO.delete_master_info(devDTO);
      updateDevCnt = this.devDAO.delete_university_info(devDTO);
      updateDevCnt = this.devDAO.delete_past_company_info(devDTO);
      

      if(devDTO.getCan_reading_language() != null && devDTO.getCan_reading_language().size()!=0) {
         updateDevCnt = this.devDAO.dev_reading_language_info(devDTO);
      }
      if(devDTO.getCan_speaking_language() != null && devDTO.getCan_speaking_language().size()!=0) {
         updateDevCnt = this.devDAO.dev_speaking_language_info(devDTO);
      }
      if(devDTO.getLicense() != null && devDTO.getLicense().size()!=0) {
         updateDevCnt = this.devDAO.dev_license(devDTO);
      }
      
      updateDevCnt = this.devDAO.dev_interest_info(devDTO);
      
      if(devDTO.getServer_computer1() != null && devDTO.getServer_computer1().size()!=0) {
         updateDevCnt = this.devDAO.dev_server_computer_info(devDTO);
      }
      if(devDTO.getOS1() != null && devDTO.getOS1().size()!=0) {
         updateDevCnt = this.devDAO.dev_OS_info(devDTO);
      }
      if(devDTO.getIt_language1() != null && devDTO.getIt_language1().size()!=0) {
         updateDevCnt = this.devDAO.dev_it_language_info(devDTO);
      }
      if(devDTO.getDBMS1() != null && devDTO.getDBMS1().size()!=0) {
         updateDevCnt = this.devDAO.dev_DBMS_info(devDTO);
      }
      if(devDTO.getTool1() != null && devDTO.getTool1().size()!=0) {
         updateDevCnt = this.devDAO.dev_tool_info(devDTO);
      }
      
      if(devDTO.getEmergency_name().length()!=0) {
         updateDevCnt = this.devDAO.updateDevEmergencyInfo(devDTO);
         }
      if(devDTO.getHighSchool_name().length()!=0) {
         updateDevCnt = this.devDAO.updateDevHighschoolInfo(devDTO);
          }
      if(devDTO.getJuniorCollege_name().length()!=0) {
         updateDevCnt = this.devDAO.juniorCollege_info(devDTO);
          }
      if(devDTO.getUniversity_name().length()!=0) {
         updateDevCnt = this.devDAO.university_info(devDTO);
          }
      if(devDTO.getMaster_name().length()!=0) {
         updateDevCnt = this.devDAO.master_info(devDTO);
          }
      if(devDTO.getDoctor_name().length()!=0) {
         updateDevCnt = this.devDAO.doctor_info(devDTO);
          }
      if(devDTO.getItCenter_name().length()!=0) {
         updateDevCnt = this.devDAO.itCenter_info(devDTO);
          }

         updateDevCnt = this.devDAO.updateDevLikingInfo(devDTO);
          
      if(devDTO.getPast_company_name1().length()!=0) {
         updateDevCnt = this.devDAO.past_company_info(devDTO);
         }
      
      if(devDTO.getPast_prj_name().length()!=0) {
         updateDevCnt = this.devDAO.dev_past_prj_info(devDTO);
         }

      if(devDTO.getFamily_relation1().length()!=0)  {
         updateDevCnt = this.devDAO.dev_family_info1(devDTO);
      }
      if(devDTO.getFamily_relation2().length()!=0)  {
         updateDevCnt = this.devDAO.dev_family_info2(devDTO);
      }
      if(devDTO.getFamily_relation3().length()!=0)  {
         updateDevCnt = this.devDAO.dev_family_info3(devDTO);
      }
      if(devDTO.getFamily_relation4().length()!=0)  {
         updateDevCnt = this.devDAO.dev_family_info4(devDTO);
      }
      if(devDTO.getFamily_relation5().length()!=0)  {
         updateDevCnt = this.devDAO.dev_family_info5(devDTO);
      }

      updateDevCnt = this.devDAO.updateDevInfo(devDTO);            
      
      return updateDevCnt;
   }   
   
}