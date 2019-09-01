package njb.md.normal.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Asset {

  private long A_seq;
  private String M_id;
  private String C_asset;
  private String A_nickname;
  private long A_money;
  private String A_memo;
}
