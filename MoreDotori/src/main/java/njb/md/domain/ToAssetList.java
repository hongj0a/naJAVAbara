package njb.md.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ToAssetList {

  private long ta_seq;
  private String m_id;
  private String c_toasset;
  private String ta_nickname;
  private long ta_money;
  private String ta_memo;
}
