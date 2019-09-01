package njb.md.normal.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Inout {
	private long I_seq;
	private String C_inout;
	private long A_seq;
	private String C_categori;
	private Date I_date;
	private long I_money;
	private String I_memo;
}
