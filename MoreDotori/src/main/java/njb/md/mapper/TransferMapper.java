package njb.md.mapper;

import njb.md.domain.Transfer;

public interface TransferMapper {
	Transfer selectTransSeq(long transSeq);
	void insertTrans(Transfer ts);
	void deleteTrans(long transSeq);
	Transfer updateTrans(Transfer ts);
}
