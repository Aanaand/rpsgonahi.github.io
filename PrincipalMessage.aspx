<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincipalMessage.aspx.cs" Inherits="RPSWebsiteCSharp.PrincipalMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message from the Principal</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .panel{
            width:80%;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading"> <h3>From The Desk Of The Principal</h3></div>
                    <div class="panel-body bg-info">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="img-responsive">
                                    <img style="float: left; margin-right: 25px; margin-bottom: 10px;" src="assets/img/portfolio/principal.jpg" alt="filler image" />
                                </div>
                            </div>
                            <div class="col-md-9">
                               
                                <p style="text-align: justify; font-size: 14px;">
                                    <strong>Dear Students and Parents,</strong><br />
                                    “Develop a passion for learning. If you do, you will never cease to grow”.<br />
                                    RAUTAHAT PUBLIC SCHOOL is a proud mission driven community providing a 
                            best education, celebrating the fact that each student is different, 
                            as a person and as a learner. We believe that powerful learning and teaching 
                            occurs under a shared spirit of respect which creates a passionate schooling 
                            experience recognized for its warmth, energy and excellence. Here people are 
                            valued and can fulfill their potential both as teachers and learners. 
                          <br />
                                    "I cannot teach anybody anything, I can only make them think".<br />
                                    Open mindedness, a multicultural orientation, independence, a global outlook, 
                            multiple intelligences and abilities – these are the premium qualities needed
                             today. As a 21st century organization, the school desires to set an approach 
                            to learning that incorporates inquiry, research, analytical thinking and an 
                            ethical approach that becomes a lifetime habit. The students are helped to 
                            focus on confidence building, while nurturing a strong sense of social and 
                            environmental responsibility through academic and co-curricular activities
                            “It is not the will to win, 
                            but the will to prepare to win that makes the difference”.<br />

                                    I strongly believe that education is a collaborative effort that involves 
                            professional administrators, committed teachers and motivated students. 
                            We dedicate ourselves as professional administrators in creating a dynamic
                             education programme empowering the students in a global perspective.<br />

                                    <strong>Mr. Anand Ruchal</strong><br />
                                    Principal<br />
                                    Rautahat Public School<br />

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
