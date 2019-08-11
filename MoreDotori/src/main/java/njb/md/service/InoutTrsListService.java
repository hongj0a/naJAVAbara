package njb.md.service;

import java.util.List;

import njb.md.domain.InoutTrsList;

public interface InoutTrsListService {
	List<InoutTrsList> getListAscS(String M_id);
	List<InoutTrsList>  getListDescS(String M_id);
}
