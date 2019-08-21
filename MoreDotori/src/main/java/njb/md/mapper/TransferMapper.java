package njb.md.mapper;

import org.apache.ibatis.annotations.Param;

import njb.md.domain.Transfer;

public interface TransferMapper {
	Transfer selectTransSeq(long T_seq);
	void insertTrans(Transfer ts);
	void deleteTrans(long T_seq);
	void updateTrans(Transfer ts);
	void updateAssetPlus(@Param("A_seq") long A_seq, @Param("T_money") long T_money);
	void updateAssetMinus(@Param("A_seq") long A_seq, @Param("T_money") long T_money);
}
