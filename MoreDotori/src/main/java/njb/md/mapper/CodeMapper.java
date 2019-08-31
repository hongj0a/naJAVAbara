package njb.md.mapper;

import java.util.List;
import njb.md.domain.Code;

public interface CodeMapper {
	List<Code> getCodeList(String C_code_horse);
	Code selectCode(String C_code);
}
