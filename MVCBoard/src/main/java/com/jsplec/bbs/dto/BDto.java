package com.jsplec.bbs.dto;

import java.sql.Timestamp;

public class BDto {

		//Java Bean과 같기때문에 DB 칼람이름과 동일하게 맞춰주는게 좋음
		//-------------------------Field	
		int bId;
		String bName;
		String bTitle;
		String bContent;
		Timestamp bDate;
		
		//-------------------------Constructor		
		public BDto() {
			// TODO Auto-generated constructor stub
		}
		
		//오버로드 (갯수 다르기)
		public BDto(int bId, String bName, String bTitle, String bContent, Timestamp bDate) {
			super();
			this.bId = bId;
			this.bName = bName;
			this.bTitle = bTitle;
			this.bContent = bContent;
			this.bDate = bDate;
		}

		public int getbId() {
			return bId;
		}

		public void setbId(int bId) {
			this.bId = bId;
		}

		public String getbName() {
			return bName;
		}

		public void setbName(String bName) {
			this.bName = bName;
		}

		public String getbTitle() {
			return bTitle;
		}

		public void setbTitle(String bTitle) {
			this.bTitle = bTitle;
		}

		public String getbContent() {
			return bContent;
		}

		public void setbContent(String bContent) {
			this.bContent = bContent;
		}

		public Timestamp getbDate() {
			return bDate;
		}

		public void setbDate(Timestamp bDate) {
			this.bDate = bDate;
		}
	
	
}//end
