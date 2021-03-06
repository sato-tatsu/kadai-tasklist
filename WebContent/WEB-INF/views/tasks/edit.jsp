<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id : ${task.id} のタスク編集ページ</h2>

        <form method="post" action="${pageContext.request.contextPath}/update">
            <c:import url="_form.jsp"/>
        </form>

        <p><a href="#" onclick="confirmDestroy();">削除する</a></p>
        <form method="post" action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}"/>
        </form>
        <script>
            function confirmDestroy()
            {
                if (confirm("削除しますか?"))
                {
                    document.forms[1].submit();
                }
            }
        </script>

       <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
    </c:param>
</c:import>
