package net.koreate.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class BookManagement {
	Scanner keyboard = new Scanner(System.in);

	// 도서목록
	Book[] books = new Book[100];
	// 프로그램 실행 flag
	boolean isRun = true;
	// 메인 메뉴 선택 번호
	int selectNo = 0;
	// 도서관리 번호
	int count = 1;
	
	static Oracle oracle = null;
	static Connection conn = null;
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;

	public BookManagement() {
		run();
	}

	public void run() {
		while (isRun) {
			System.out.println("==============================================");
			System.out.println("1.도서등록 | 2. 도서목록 | 3.도서수정 | 4.도서삭제 | 5. 종료");
			System.out.println("==============================================");
			selectNo = getSelectNum("번호를 선택하세요 > ");

			switch (selectNo) {
			case 1:
				registerBook();
				break;
			case 2:
				selectBook();
				break;
			case 3:
				updateBook();
				break;
			case 4:
				deleteBook();
				break;
			case 5:
				terminate();
				break;
			default:
				System.out.println("등록된 메뉴가 아닙니다.");
			}
		}
	}

	// 프로그램 종료
	public void terminate() {
		System.out.println("프로그램 종료");
		isRun = false;
	}

	// 도서 등록
	public void registerBook() {
		System.out.println("1. 도서등록");
		String sql = "INSERT INTO book VALUES(bno_auto.nextval, ?, ?, sysdate)";
		String title = getData("등록할 도서의 제목을 입력해주세요 > ");
		String author = getData("등록할 도서의 저자를 입력해주세요 > ");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, author);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 도서 목록 출력
	public void selectBook() {
		String sql = "SELECT * FROM book";
		System.out.println("2. 도서목록");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				System.out.print("num : " + rs.getInt(1));
				System.out.print("\t title : " + rs.getString(2));
				System.out.print("\t author : " + rs.getString(3));
				System.out.println("\t regdate : " + rs.getDate(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 도서 정보 수정
	public void updateBook() {
		System.out.println("3. 도서수정");
		int bookNum = getSelectNum("수정하실 책의 관리번호를 입력하세요>");

		try {
			pstmt = conn.prepareStatement("SELECT * FROM book WHERE num = ?");
			pstmt.setInt(1, bookNum);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				boolean isUpdate = true;

				while (isUpdate) {
					System.out.println("============================");
					System.out.println("1.제목수정 | 2.저자수정 | 3. 수정완료");
					System.out.println("============================");

					selectNo = getSelectNum("번호 입력 > ");

					switch (selectNo) {
					case 1:
						String title_sql = "UPDATE book SET title = ? WHERE num = ?";
						System.out.println("제목수정");
						String title = getData("제목입력 > ");
						try {
							pstmt = conn.prepareStatement(title_sql);
							pstmt.setString(1, title);
							pstmt.setInt(2, bookNum);
							pstmt.executeUpdate();
							System.out.println("제목 수정 완료");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						break;
					case 2:
						String author_sql = "UPDATE book SET author = ? WHERE num = ?";
						System.out.println("저자 수정");
						String author = getData("저자 입력 > ");
						try {
							pstmt = conn.prepareStatement(author_sql);
							pstmt.setString(1, author);
							pstmt.setInt(2, bookNum);
							pstmt.executeUpdate();
							System.out.println("저자 수정 완료");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						break;
					case 3:
						System.out.println("수정완료");
						isUpdate = false;
						break;
					}
				} // while 문 종료
			} else {
				System.out.println("입력하신 관리번호의 책이 존재 하지 않습니다.");
				return;
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
	}// 도서 수정 종료

	// 도서 목록에서 책 정보 삭제
	public void deleteBook() {
		String sql = "DELETE FROM book WHERE num = ?";
		System.out.println("4. 도서삭제");
		int bookNum = getSelectNum("삭제할 도서의 관리번호를 입력해주세요.");

		try {
			pstmt = conn.prepareStatement("SELECT * FROM book WHERE num = ?");
			pstmt.setInt(1, bookNum);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bookNum);
				pstmt.executeUpdate();
				System.out.println("삭제 완료");
			} else {
				System.out.println("입력하신 관리번호의 책이 존재 하지 않습니다.");
				return;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// 사용자에게 메시지를 전달 받아 출력하고 문자열 값 받아 반환
	String getData(String message) {
		System.out.println(message);
		return keyboard.next();
	}

	// 번호 선택 받기
	int getSelectNum(String message) {
		System.out.println(message);
		return keyboard.nextInt();
	}

	public static void main(String[] args) {
		try {
			oracle = Oracle.getInstance();
			conn = oracle.getConnection();
			new BookManagement();
		} catch (Exception e) {}
		finally {
			try {
				if (rs != null) { rs.close(); }
				if (pstmt != null) { pstmt.close(); }
				if (conn != null) { conn.close(); }
				System.out.println("자원정리 완료");
				System.out.println("프로그램 종료 완료");
			} catch (SQLException e) {}
		}
	}

}
