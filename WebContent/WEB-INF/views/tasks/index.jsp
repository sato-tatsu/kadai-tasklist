<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <c:choose>
            <c:when test="${size == 0}">
                <div>現在、タスクはありません。</div>
            </c:when>
            <c:otherwise>
                <ul>
                    <c:forEach var="task" items="${tasks}">
                        <li>
                            <a href="${pageContext.request.contextPath}/show?id=${task.id}"><c:out value="${task.id}" /></a>
                             : <c:out value="${task.content }"/>
                        </li>
                    </c:forEach>
                </ul>
            </c:otherwise>
       </c:choose>

       <p><a href="${pageContext.request.contextPath}/new">新規タスクの登録</a></p>

    </c:param>
</c:import>
