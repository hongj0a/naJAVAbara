package njb.md.mapper;

import njb.md.domain.Transfer;

public interface TransferMapper {
	Transfer selectTransSeq(long T_seq);
	void insertTrans(Transfer ts);
	void deleteTrans(long T_seq);
	Transfer updateTrans(Transfer ts);
}
