package njb.md.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import njb.md.domain.Inout;

public interface InoutMapper {
	Inout selectInoutSeq(long I_seq);
	void insertInout(Inout io);
	void deleteInout(long I_seq);
	void updateInout(Inout io);
	void updateAssetPlus(Inout io);
	void updateAssetMinus(Inout io);
	Inout searchInout(Map<String, Object> map);
}
