package njb.md.normal.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InoutCount {
	private String C_categori;
	private long ct;	//카테고리카운트
	private long sumMoney;
}
