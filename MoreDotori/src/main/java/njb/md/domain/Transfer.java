package njb.md.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Transfer {
	private long T_seq;
	private String C_inout;
	private long A_seq_in;
	private long A_seq_out;
	private Date T_date;
	private long T_money;
	private String T_memo;
}
