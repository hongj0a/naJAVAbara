package njb.md.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AssetListVO {

  private long a_seq;
  private String m_id;
  private String c_asset;
  private String a_nickname;
  private long a_money;
  private String a_memo;
}
