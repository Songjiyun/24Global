package global.com.model;

public class MemberDto {
	private String u_id; 	                      // 아이디             
	private String u_pw;                          // 패스워드            
	private String u_name;                        // 이름              
	private String u_nickname;                    // 닉네임             
	private String u_email;                       // 이메일             
	private String u_phone;                       // 핸드폰번호           
	private String u_gender;                      // 성별              
	private String u_weburl;                      // 웹사이트 주소         
	private String u_type;                        // 기업(기업), 개인(개인)  
	private String u_date;                        // 가입일자            
	private String u_update_date;                 // 마지막 수정일자        
	private int	u_status;                         // 탈퇴(0),가입(1)     
	private String u_facebook_account;            // 페이스북 계정         
	private String u_instagram_account;           // 인스타그램 계정        
	private String u_telegram_account;            // 텔레그램 계정         
	private String u_profile_pic_file;            // 프로필 사진 파일명      
	private String u_profile_pic_file_url;        // 프로필 사진 파일 경로    
	private int u_account_status;                 // 공개(1),비공개(0)    
	private String u_language;                    // 언어설정
	
	public MemberDto() { }

	public MemberDto(String u_id, String u_pw, String u_name, String u_nickname, String u_email, String u_phone,
			String u_gender) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_nickname = u_nickname;
		this.u_email = u_email;
		this.u_phone = u_phone;
		this.u_gender = u_gender;
	}
	
	public MemberDto(String u_id, String u_pw, String u_name, String u_nickname, String u_email, String u_phone,
			String u_gender, String u_weburl) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_nickname = u_nickname;
		this.u_email = u_email;
		this.u_phone = u_phone;
		this.u_gender = u_gender;
		this.u_weburl = u_weburl;
	}
	
	public MemberDto(String u_id, String u_pw, String u_name, String u_nickname, String u_email, String u_phone,
			String u_gender, String u_weburl, String u_type, String u_date, String u_update_date, int u_status,
			String u_facebook_account, String u_instagram_account, String u_telegram_account, String u_profile_pic_file,
			String u_profile_pic_file_url, int u_account_status, String u_language) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_nickname = u_nickname;
		this.u_email = u_email;
		this.u_phone = u_phone;
		this.u_gender = u_gender;
		this.u_weburl = u_weburl;
		this.u_type = u_type;
		this.u_date = u_date;
		this.u_update_date = u_update_date;
		this.u_status = u_status;
		this.u_facebook_account = u_facebook_account;
		this.u_instagram_account = u_instagram_account;
		this.u_telegram_account = u_telegram_account;
		this.u_profile_pic_file = u_profile_pic_file;
		this.u_profile_pic_file_url = u_profile_pic_file_url;
		this.u_account_status = u_account_status;
		this.u_language = u_language;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_nickname() {
		return u_nickname;
	}

	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public String getU_weburl() {
		return u_weburl;
	}

	public void setU_weburl(String u_weburl) {
		this.u_weburl = u_weburl;
	}

	public String getU_type() {
		return u_type;
	}

	public void setU_type(String u_type) {
		this.u_type = u_type;
	}

	public String getU_date() {
		return u_date;
	}

	public void setU_date(String u_date) {
		this.u_date = u_date;
	}

	public String getU_update_date() {
		return u_update_date;
	}

	public void setU_update_date(String u_update_date) {
		this.u_update_date = u_update_date;
	}

	public int getU_status() {
		return u_status;
	}

	public void setU_status(int u_status) {
		this.u_status = u_status;
	}

	public String getU_facebook_account() {
		return u_facebook_account;
	}

	public void setU_facebook_account(String u_facebook_account) {
		this.u_facebook_account = u_facebook_account;
	}

	public String getU_instagram_account() {
		return u_instagram_account;
	}

	public void setU_instagram_account(String u_instagram_account) {
		this.u_instagram_account = u_instagram_account;
	}

	public String getU_telegram_account() {
		return u_telegram_account;
	}

	public void setU_telegram_account(String u_telegram_account) {
		this.u_telegram_account = u_telegram_account;
	}

	public String getU_profile_pic_file() {
		return u_profile_pic_file;
	}

	public void setU_profile_pic_file(String u_profile_pic_file) {
		this.u_profile_pic_file = u_profile_pic_file;
	}

	public String getU_profile_pic_file_url() {
		return u_profile_pic_file_url;
	}

	public void setU_profile_pic_file_url(String u_profile_pic_file_url) {
		this.u_profile_pic_file_url = u_profile_pic_file_url;
	}

	public int getU_account_status() {
		return u_account_status;
	}

	public void setU_account_status(int u_account_status) {
		this.u_account_status = u_account_status;
	}

	public String getU_language() {
		return u_language;
	}

	public void setU_language(String u_language) {
		this.u_language = u_language;
	}

	@Override
	public String toString() {
		return "MemberDto [u_id=" + u_id + ", u_pw=" + u_pw + ", u_name=" + u_name + ", u_nickname=" + u_nickname
				+ ", u_email=" + u_email + ", u_phone=" + u_phone + ", u_gender=" + u_gender + ", u_weburl=" + u_weburl
				+ ", u_type=" + u_type + ", u_date=" + u_date + ", u_update_date=" + u_update_date + ", u_status="
				+ u_status + ", u_facebook_account=" + u_facebook_account + ", u_instagram_account="
				+ u_instagram_account + ", u_telegram_account=" + u_telegram_account + ", u_profile_pic_file="
				+ u_profile_pic_file + ", u_profile_pic_file_url=" + u_profile_pic_file_url + ", u_account_status="
				+ u_account_status + ", u_language=" + u_language + "]";
	}
	
}
