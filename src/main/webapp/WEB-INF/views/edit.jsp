<!--
  Created by IntelliJ IDEA.
  User: SergejK
  Date: 12/11/2019
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head><title>Edit</title></head>
    <body>

    <h1>Edit Page</h1>

    <form action="" th:action="@{/options/update (id=${JobForm})}" method="post">
        <c:forEach var="Wiev" items="${user}">
            <label for="car">A/M</label><br/>
            <input type="text" name="car" id="car" value="${Wiev.car}"/>
            <br/>
            <br/>
            <label for="client">Ievadi klientu un tel.</label><br/>
            <input id="client" type="text" name="client" size="40" value="${Wiev.client} "/>

            <br/>
            <br/>
            <p>Tekosais datums <c:out value="${Wiev.workdate}"/></p>
            <label for="date"> Выберите дату: </label><br/>
            <input id="date" type="date" name="workdate"/>

            <br/>
            <br/>
            <p>Tekosa sistema <c:out value="${Wiev.sistem}"/></p>
            <label for="sistem">Izvelejies sistemu</label>
            <div><select id="sistem" name="sistem">
                <option value="Optimum"/>
                optimum
                <option value="mini"/>
                mini
                <option value="comfort"/>
                comfort
            </select>
            </div>
            <br/>
            <div>
                <p>Tekosais darbs <c:out value="${Wiev.work}"/></p>
                <label for="work">Izvelejies darba veidu</label><br/>
                <select id="work" name="work">
                    <option value="Montaz"/>
                    montaz
                    <option value="Remont"/>
                    remont
                    <option value="Snjatie"/>
                    snjatie
                </select></div>
            <br/>
            <div>
                <p>Tekosais manager <c:out value="${Wiev.manager}"/></p>
                <label for="manager">Kas veic ierakstu</label><br/>

                <select id="manager" name="manager">
                    <option value="Agnese"/>
                    Agnese
                    <option value="Kristine"/>
                    Kristine
                    <option value="Aigars"/>
                    Aigars
                </select></div>

            <br/>
            <div><label for="action">Atbrauca vai ne</label><br/>
                <select id="action" name="action">
                    <option value="ja"/>
                    ja
                    <option value="ne"/>
                    ne
                </select></div>
            <br/>
            <p>
                <label for="info"></label>
                <textarea style="left: 210px" id="info" cols="60" rows="6" name="info"> <c:out value="${Wiev.info}"/> </textarea>
            </p>


            <button class="add_button"> Pievienot</button>

        </c:forEach>
    </form>

    </body>
    </html>