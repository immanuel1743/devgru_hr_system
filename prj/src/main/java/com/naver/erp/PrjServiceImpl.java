package com.naver.erp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class PrjServiceImpl implements PrjService { 
	
	@Autowired
	private PrjDAO prjDAO; 
	@Override
	public int insertPrjInfo(PrjDTO prjDTO) throws Exception {
		int prjRegCnt = 0;
		prjRegCnt = this.prjDAO.insertPrjInfo(prjDTO);

		if(prjDTO.getPerson_num_dev()!=null && prjDTO.getPerson_num_dev()!="") {
			prjRegCnt= this.prjDAO.prj_dev_person_info(prjDTO);
		}

		if(prjDTO.getDev_essential_license()!=null&& prjDTO.getDev_essential_license().size()>0) {
			prjRegCnt=this.prjDAO.prj_dev_license_info(prjDTO);
		}
		
		if(prjDTO.getPerson_num_ope()!=null && prjDTO.getPerson_num_ope()!="")  {
			prjRegCnt=this.prjDAO.prj_oper_person_info(prjDTO);
		}

		if(prjDTO.getOpe_essential_license()!=null && prjDTO.getOpe_essential_license().size()>0) {
			prjRegCnt=this.prjDAO.prj_oper_license_info(prjDTO);
		}

		if(prjDTO.getPerson_num_perb()!=null && prjDTO.getPerson_num_perb()!="") {
			prjRegCnt=this.prjDAO.prj_publ_person_info(prjDTO);
		}

		if(prjDTO.getPerb_essential_license()!=null && prjDTO.getPerb_essential_license().size()>0) {
			prjRegCnt=this.prjDAO.prj_publ_license_info(prjDTO);
		}

		if(prjDTO.getPerson_num_desi()!=null && prjDTO.getPerson_num_desi()!="") {
			prjRegCnt=this.prjDAO.prj_desi_person_info(prjDTO);
		}

		if(prjDTO.getDesi_essential_license()!=null && prjDTO.getDesi_essential_license().size()>0) {
			prjRegCnt=this.prjDAO.prj_desi_license_info(prjDTO);
		}

		return prjRegCnt;
	}

	@Override
	public int updatePrjDetail(PrjDTO prjDTO) {
	 int updateBoarCnt = 0;
	 
	 updateBoarCnt = this.prjDAO.deleteDev(prjDTO);
	 updateBoarCnt = this.prjDAO.deleteDevLicens(prjDTO);
	 updateBoarCnt = this.prjDAO.deleteOper(prjDTO);
	 updateBoarCnt = this.prjDAO.deleteOperLicens(prjDTO);
	 updateBoarCnt = this.prjDAO.deletePubl(prjDTO);
	 updateBoarCnt = this.prjDAO.deletePublLicens(prjDTO);
	 updateBoarCnt = this.prjDAO.deleteDesi(prjDTO);
	 updateBoarCnt = this.prjDAO.deleteDesiLicens(prjDTO);

	 updateBoarCnt = this.prjDAO.updatePrjDetail(prjDTO);

		if(prjDTO.getPerson_num_dev().length()!=0) {
			updateBoarCnt = this.prjDAO.prj_dev_person_info(prjDTO); 
		}
		if(prjDTO.getDev_essential_license() != null && prjDTO.getDev_essential_license().size()!=0) {
				updateBoarCnt = this.prjDAO.prj_dev_license_info(prjDTO); 
			}
		if(prjDTO.getPerson_num_ope().length()!=0) {
			updateBoarCnt = this.prjDAO.prj_oper_person_info(prjDTO); 
		}
		if(prjDTO.getOpe_essential_license() != null && prjDTO.getOpe_essential_license().size()!=0) {
				updateBoarCnt = this.prjDAO.prj_oper_license_info(prjDTO); 
			}
		if(prjDTO.getPerson_num_perb().length()!=0) {
			updateBoarCnt = this.prjDAO.prj_publ_person_info(prjDTO); 
		}
		if(prjDTO.getPerb_essential_license() != null && prjDTO.getPerb_essential_license().size()!=0) {
				updateBoarCnt = this.prjDAO.prj_publ_license_info(prjDTO); 
			}
		
		if(prjDTO.getPerson_num_desi().length()!=0) {
		updateBoarCnt = this.prjDAO.prj_desi_person_info(prjDTO);
		} 

		if(prjDTO.getDesi_essential_license() != null && prjDTO.getDesi_essential_license().size()!=0) {
				updateBoarCnt = this.prjDAO.prj_desi_license_info(prjDTO);
			}
	 
	 return updateBoarCnt;
	}

	@Override
	public int deletePrj(PrjDTO prjDTO) {
	 int deleteBoarCnt = 0;
	    deleteBoarCnt = this.prjDAO.deleteDev(prjDTO);
		deleteBoarCnt = this.prjDAO.deleteOper(prjDTO);
		deleteBoarCnt = this.prjDAO.deletePubl(prjDTO);
		deleteBoarCnt = this.prjDAO.deleteDesi(prjDTO);
		deleteBoarCnt = this.prjDAO.deleteDevLicens(prjDTO);
		deleteBoarCnt = this.prjDAO.deleteOperLicens(prjDTO);
		deleteBoarCnt = this.prjDAO.deletePublLicens(prjDTO);
		deleteBoarCnt = this.prjDAO.deleteDesiLicens(prjDTO);
		deleteBoarCnt = this.prjDAO.deletePrjJoin(prjDTO);

	deleteBoarCnt = this.prjDAO.deletePrj(prjDTO);

	 return deleteBoarCnt;
	}
}
