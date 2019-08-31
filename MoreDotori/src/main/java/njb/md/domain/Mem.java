package njb.md.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Mem {
	private String c_member;
	private String m_id;
	private String m_nickname;
	private String m_name;
	private String m_jdate;
	private String m_ldate;
	private String m_counts;
	private String c_mstate;
	//private List<Mem> memList;
}

/*
select c_member,
m_id,
m_nickname,
m_name,
m_idate,
m_ldate,
CONCAT(CONCAT(m_count, '/'), m_accrue),
c_mstate from
MEMBER;
*/