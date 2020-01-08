<!--
  Created by IntelliJ IDEA.
  User: SergejK
  Date: 12/9/2019
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <style>
            button:hover {

                background-color: #3e8e41;
            }

            button:active {

                background-color: #3e8e41;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }
            .add_button {

                padding: 15px 25px;
                font-size: 24px;
                text-align: center;
                cursor: pointer;
                outline: none;
                color: #fff;
                background-color: #00008B;
                border: none;
                border-radius: 15px;
                box-shadow: 0 9px #999;
            }
        </style>
        <title>Title</title></head>
    <body>
    <img src="https://www.sherloglatvia.com/wp-content/uploads/2016/06/logo.png" alt="sherlog" width="90" height="50"/>


    <br/>
    <div style="float: right">
        <form action="${pageContext.request.contextPath}/options/create" method="post">
            <label for="car">Ievadi A/M marku un numuru</label><br/>
            <input type="text" name="car" id="car" size="40" /><br/>
            <br/>

            <label for="client">Ievadi klientu un tel.</label><br/>
            <input id="client" type="text" name="client" size="40"/>
            <br/>


            <label for="sistem">Izvelejies sistemu</label>
            <div><select id="sistem" name="sistem"> size="3" multiple="multiple"
                <option value="Optimum"/>
                optimum
                <option value="mini"/>
                mini
                <option value="premium"/>
                premium
                <option value="minibasic"/>
                mini basic
                <option value="minibasicpluss"/>
                mini basic pluss
            </select></div>
            <br/>

            <div><label for="work">Izvelejies darba veidu</label><br/>
                <select id="work" name="work">
                    <option value="Montaz"/>
                    montaz
                    <option value="Remont"/>
                    remont
                    <option value="Snjatie"/>
                    snjatie
                </select></div>
            <br/>

            <div><label for="manager">Kas veic ierakstu</label><br/>

                <select id="manager" name="manager"> size="3" multiple="multiple"
                    <option value="Agnese"/>
                    Agnese
                    <option value="Kristine"/>
                    Kristine
                    <option value="Inese"/>
                    Inese
                    <option value="Aigars"/>
                    Aigars
                </select></div>

            <p><label for="date"> Выберите дату: </label><br/>
                <input id="date" type="date" name="workdate"/>

            </p>

            <br/>


                <textarea style="left: 210px" id="info" cols="60" rows="6" name="info">info: </textarea>

            <p>
                <button class="add_button"> Pievienot</button>
            </p>

        </form>
    </div>

    <br/>
    <div style="height: 200px; width: 100px; border: 3px dashed #e03c32; float: left">
        <p>
            <strong><a href="/">Years list</a></strong> <br/>
            <strong><a href="/statistics">Statistics</a></strong><br/>


        </p>
    </div>
    </body>
    </html>