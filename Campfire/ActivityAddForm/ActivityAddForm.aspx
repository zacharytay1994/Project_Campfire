﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActivityAddForm.aspx.cs" Inherits="Campfire.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Add Activity</title>
    <link rel="stylesheet" href="~/css/styles.css"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:Extra-Bold" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"/>
</head>
<body>
    <main>
        <h1 style="font-size:150px" class="border">Add Activity</h1>
        <div id="activities">
            <form id="activitiesForm" runat="server">
                <div class="row">
                    <div class="col-25">
                        <label for="activityName">Name of Game</label>
                    </div>
                    <div class="col-75">
                        <asp:TextBox ID="activityName" runat="server" placeholder="The name of the game!"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="briefDescription">Brief Description</label>
                    </div>
                    <div class="col-75">
                        <asp:TextBox ID="briefDescription" runat="server" placeholder="Just a sentence is fine!"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="category">Category of Game</label>
                    </div>
                    <div class="col-75">
                        <select id="category" name="category">
                            <option value="BoardGame">Board Game</option>
                            <option value="Running">Running</option>
                            <option value="For All Ages">For All Ages</option>
                        </select>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="explanation">Explanation of Game</label>
                    </div>
                    <div class="col-75">
                        <textarea id="explanation" name="explanation" placeholder="Write your comment here.." style="height:200px"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="uploadPhoto">Upload Photos</label>
                    </div>
                    <div class="col-75">
                        <asp:FileUpload ID="uploadPhoto" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <asp:Button ID="submitForm" runat="server" Text="Submit" />
                </div>
            </form>
        </div>
    </main>
</body>
</html>