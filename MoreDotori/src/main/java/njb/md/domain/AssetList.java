package njb.md.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AssetList {

  private long a_seq;
  private String m_id;
  private String c_asset;
  private String a_nickname;
  private long a_money;
  private String a_memo;
}
