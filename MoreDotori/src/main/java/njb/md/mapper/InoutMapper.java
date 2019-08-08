package njb.md.mapper;

import njb.md.domain.Inout;

public interface InoutMapper {
	Inout selectInoutSeq(long I_seq);
	void insertInout(Inout io);
	void deleteInout(long I_seq);
	Inout updateInout(Inout io);
}
