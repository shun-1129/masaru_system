package Default;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TEST extends HttpServlet {
    public void doGet(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws IOException, ServerException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("Servlet/TEST\n");
        DATABASE.Access DB = new DATABASE.Access();
        String Query = "SELECT * FROM price_tbl;";
        DB.Database_Access(Query);
        ArrayList<HashMap<String, String>> list = DB.getData();
        Beans.PriceBean PB = new Beans.PriceBean();
        PB.setDATA(list);
        response.sendRedirect("/masaru_system/jsp/customer/customer_index.jsp");
    }
}
