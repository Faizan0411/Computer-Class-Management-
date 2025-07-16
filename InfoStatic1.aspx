<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InfoStatic1.aspx.cs" Inherits="InfoStatic1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 639px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="multiview1" runat ="server" >
        <asp:View ID="View9" runat="server">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="The Institute"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">About 
            institute</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton11" runat="server">Courses</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton13_Click">Admission 
            Information</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton14" runat="server">FAQ</asp:LinkButton>
            <br />
            <br />
        </asp:View>
    <asp:View ID ="vAbout" runat ="server" >
    
        <table>
        <tr>
        <td>
        <asp:Image ID="Image1" runat="server" ImageUrl ="~/images/fr.jpg"/>
        </td>
        <td>
                    <asp:Label ID="Label1" runat="server" Text="About Institute" Font-Bold="False" 
                 Font-Size="X-Large" Font-Underline="True"></asp:Label>
        </td>
        </tr>
        </table>
            
        
        <p style ="margin :10px" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
        <p> 
        </p>
        <p>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CREATIVE COMPUTER CLASSES<span class="style3"> is the 
            fastest growing company in the field of Information Technology TRAINING, based 
            in mumbai ( INDIA ). The intitute was launched by well experienced IT 
            Professionals from, with an exposure to the other important and necessary 
            functional areas like Marketing, Administration, Manpower Management and Quality 
            Control. The proprietors of the company were the first to successfully run HIGH 
            END courses like ERP, SEO and SOFTWARE TESTING.</span></p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style3">
            &nbsp;Today, CREATIVE COMPUTER CLASSES is imparting training in the latest areas of 
            Computer Hardware, Networking, Software Programming, Multimedia, ERP, SEO and 
            Software Testing. The company has well furnished centers, strong technical and 
            non technical ( administrative and marketing ) team and runs professionally. The 
            company has already applied for ISO Certification and it will get very soon. </span>
        </p>
        <p>
        </p>
        <p>
        </p>
    
    </asp:View>
    <asp:View ID="vBranches" runat ="server" >
      <p>
    <br  />
     <asp:Label ID="Label2" runat="server" Text="Branches" Font-Bold="False" 
                 Font-Size="X-Large" Font-Underline="True"></asp:Label>
   </p>
<p>
<ul>
<li><span>Maninagar ( Head Office )</span><p>
    </p>
    <p>
        &nbsp;<span>2nd Floor,Hans Raj Complex, Krishnabaug Cross Road, Maninagar - 
        Ahmedabad, Gujarat Ph : 079 - 65410708 </span>
    </p>
    <li>
        <p>
            Bapunagar
        </p>
        <p>
            2nd Floor, Patel Shopping Mall, Opp. Narayan Chamber , India Colony, Bapunagar - 
            Ahmedabad, Gujarat Ph : 079 - 65410607
        </p>
    </li>
    <li>
        <p>
            Satellite</p>
        <p>
            A2, Sagun Plaza, Opp. Goyal Plaza, Nr. Mansi Tower Circle, Satelite - Ahmedabad, 
            Gujarat Ph : 079 - 40035282, 40035283
        </p>
    </li>
    <li>
        <p>
            Surat</p>
        <p>
            2nd Floor, Mansi Building, Opp. Navyug College, Rander Road M6 , Hiral Arcade, 
            Opp. New Court Building, Athwa Lines 3rd Floor, Abhishek Plaza, Opp. Air India 
            Office, Kot Safil Road, Bhagal.
        </p>
    </li>
    <li>
        <p>
            Franchise - Surat
        </p>
        <p>
            1st Floor, J.K. Complex, Nr. Sanidhya Building, Nana Varachha 1 - 2 Sun Sity 
            Apartment, Raghuvihar Char Rasta, Kosad Road, Amroli
        </p>
    </li>
    <li>
        <p>
            Franchise - Baroda
        </p>
        <p>
            216, Paradise Complex, Opp. M.S. University, Sayaji Gunj. - 390005 ( 9374393930 
            )
        </p>
    </li>
        </p>
    </asp:View>
    <asp:View ID="vCourse" runat ="server" >
    <table>
    <tr>
    <td>
        &nbsp;</td>
    <td class="style1">
    <h3>Courses</h3>
    <ul style="margin-left:0px; font-size:12px;">
    <li>
        <asp:LinkButton ID="lnkHN" runat="server" onclick="lnkHN_Click">Hardware & Networking</asp:LinkButton></li>
         
         <li>
        <asp:LinkButton ID="lnkSP" runat="server" onclick="lnkSP_Click">Software Programming</asp:LinkButton></li>
         
         <li>
        <asp:LinkButton ID="lnkM" runat="server" onclick="lnkM_Click">MultiMedia</asp:LinkButton></li>
         
         <li>
        <asp:LinkButton ID="lnkCC" runat="server" onclick="lnkCC_Click">Career Courses</asp:LinkButton></li>
         
         <li>
        <asp:LinkButton ID="lnkWD" runat="server" onclick="lnkWD_Click">Web Designing</asp:LinkButton></li>
        
     </ul> 
    </td>
    </tr>
    </table>
    <asp:MultiView ID ="mviewCourse" runat ="server" Visible ="false" >
    <asp:View ID="viewHN" runat ="server">
    <h4>Hardware Networking</h4>
 
    <p align="center">
        <asp:Image ID="Image8" runat="server" Height="204px" ImageAlign="Middle" 
            ImageUrl="~/images/hardware.gif" Width="266px" />
        </p> 
        <p>
            Contents include ESSENTIALS, REMOTE SUPPORT, DESKTOP SUPPORT, Trouble shooting 
            and maintenance of Computer Hardware and Networks (CompTIA A+, course Curriculum 
            for Hardware, CompTIA N+ for international, vendor-neutral certification, 
            knowledge and skills of networking professionals) Enables students to describe 
            the features and functions of networking components and to install, configure 
            and troubleshoot basic networking ,hardware, protocols and services, server and 
            client management. Following Courses are offered by CREATIVE COMPUTER CLASSES in 
            Hardware &amp; Networking.</p>
        <ul>
            <li>A+</li>
            <li>N+</li>
            <li>MCSA</li>
            <li>MCSE</li>
            <li>Linux</li>
        </ul>

    </asp:View> 
    <asp:View ID="viewSP" runat ="server">
    <h4>Software Programming</h4>
        <p align="center">
            <asp:Image ID="Image6" runat="server" Height="204px" ImageAlign="Middle" 
                ImageUrl="~/images/software.jpg" Width="266px"/>
        </p>
        &nbsp;<br />
    <p>Software is the prime key of IT Technology , without this we can&nbsp; do&nbsp; work&nbsp; but 
        its like ,&quot; BODY WITHOUT SOUL&quot; , Software is like soul of computer. We Design 
        various software courses&nbsp; from low level to higher level&nbsp; for making&nbsp; students 
        an outstanding performer and be a Software Developer / Professional.</p> 
<ul>
<li>C</li>
<li>C++</li>
<li>JAVA</li>
<li>.Net</li>
<li>PHP</li>
<li>Oracle</li>
</ul>
    </asp:View> 
    <asp:View ID="viewM" runat ="server">
    <h4>MultiMedia</h4>
        <p align="center">
            <asp:Image ID="Image7" runat="server" Height="204px" ImageAlign="Middle" 
                ImageUrl="~/images/multimedia_large.jpg" Width="266px" />
        </p>
        <br />
    <p>Multimedia (Lat. Multum + Medium) is media that use multiple forms of information content and information processing ( e.g. text, audio, graphics, animation, video, interactivity ) to inform or entertain the ( user ) audience. Multimedia also refers to the use of ( but not limited to ) electronic media to store…
</p>
<ul>
<li>Basics of Multimedia </li>
<li>Master of Animation </li>
<li>Master of Web </li>
<li>Master of Graphics </li>
<li>DTP </li>
</ul> 
    </asp:View> 
    
    <asp:View ID="viewCC" runat ="server">
    <h4>Career Course</h4>
    <p align="center">
        <asp:Image ID="Image9" runat="server" Height="204px" ImageAlign="Middle" 
            ImageUrl="~/images/career courses.jpg" Width="266px" />
            
      </p>      
        <br />
    <ul>
    <li>Advanced Hardware Networking<br />
    A+,N+,CCNA,MCSA,MCSE,Linux basic,ADMN</li>
    <li>Advanced Software Engineering<br />
    C,C++,Java,VB,VB.net,ASP.net,Oracle</li>
    </ul>
    </asp:View> 
    <asp:View ID="viewWD" runat ="server">
    <ul>
    <h4>Web Designing</h4>
        <p align="center" >
            <asp:Image ID="Image10" runat="server" Height="204px" ImageAlign="Middle" 
                ImageUrl="~/images/webdesign.jpg" Width="266px" />
        </p>
        <br />
    <li>Wed Designing</li>
    <li>Web Development</li>
    <li>Web Admin</li>
    <li>Web Security</li>
    <li>Photo Shop</li>
    <li>Flash</li>
    <li>Dream Weaver</li>
    </ul>
    </asp:View> 
    </asp:MultiView>
    </asp:View>
    <asp:View ID="vPlacemnt" runat ="server" >
    
    <table>
    <tr>
    <td>
        <br />
       </td>
    <td><h3>Job Corner</h3></td>
    <td>
        <p align="center" >
        <asp:Image ID="Image11" runat="server" Height="204px" ImageAlign="Right" 
            ImageUrl="~/images/placement.jpg" Width="266px" />
        </p>
        </td>
    </tr>
    </table>
    <p>The very essense of Designing and devloping quality  education and training products that are comprehensive in depth and industry relevent skill based training is ensure that our student not just throught conceptual knowledge.</p>
    <p>There also exist major segment of personnel from the industry that enroll and 
        undertake training programs to enrich their skills on tools in use of their 
        existing jobs or enlarge their scope in the job profile.</p>
    <h4>Some companies where&nbsp; students are placed...</h4>
    <table>
    <tr>
    <td>
    <ul>
    <li>Microsoft</li>
    <li>IBM</li>
    <li>US software</li>
    <li>Oracle</li>
    </ul>
    </td>
    <td>
    <ul>
    <li>BULL</li>
    <li>Motorola</li>
    <li>Cisco</li>
    <li>Nest</li>
    </ul></td>
    <td>
    <ul>
    <li>HP</li>
    <li>Adobe</li>
    <li>Citicorp</li>
    <li>Electric</li>
    </ul>
    </td>
    </tr>
    
    </table>
    
    <h5>Some of the world&#39;s biggest player are operating successfully in India in areas 
        such as:</h5>
    <table >
    <tr>
    <td>
    <ul>
    <li>Call Centers</li>
    <li>Design Software</li>
    <li>Parallel Computing</li>
    <li>Artificial Intelligence</li>
    <li>BPO</li>
    <li>System Integration</li>
   
    </ul>
    </td>
    <td>
    <ul>
    <li>Packaged Software Integration</li>
    <li>enterprise Solutions</li>
    <li>Telecom & inter Networking</li>
    <li>Technology Infrastructure Services</li>
    <li>E-commerce Solutions</li>
     <li>End to end Solutions</li>
    </ul>
    </td>
    </tr>
    </table>
    </asp:View>
    <asp:View ID="vAdmis" runat ="server" >
    <table>
    <tr>
    <td>
        <asp:Image ID="Image4" runat="server" 
            ImageUrl ="~/images/software-product-maintenance.jpg" Height="124px" 
            Width="139px"/></td>
    <td><h4>Admission Information</h4></td>
    </tr>
    </table>
    <p>CREATIVE COMPUTER CLASSES Provide to learn software and Hardware Courses which is 
        very<br /> 
        useful in todays generation and also for Career. It also Provide placement and <br />
        job.So Come here and Take Admission.  
    <h4>Admission Process</h4>
        1.There are many Branches CREATIVE COMPUTER CLASSES. So u can&nbsp; go there and 
        fillup the form for Admission<br />
        2.Pay fee for particular course.<br />
        <br />
        3.Take Ur Batch details and Faculty Detail.
   <br /><br />
    </asp:View>
    <asp:View ID="vFaq" runat ="server" >
    
    <h4>Frequently Asked Quetions</h4>
    <ul>
    <li>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">What is the overview on the IT industry as a whole?</asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">I wish to go in for a computer course. Which one will suit me the best? </asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">What 
            value - added courses can u suggest for an IT student or a computer engineer???</asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">What is 
            the quality of education SAI can provide? Are your faculty qualified and 
            up-to-date with the industry trends?</asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Can I 
            get trained for International Certifications through SAI?</asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">I have 
            visited some of SAI&#39;s competitors. How will the courses conducted by SAI 
            technology give me a greater benefit than others???</asp:LinkButton></li>
        <li>
        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Does SAI 
            have the capability to get me a job? What help can I expect from you for this?</asp:LinkButton></li>
        
        
    </ul>
    <asp:MultiView ID ="multiview3" runat ="server" 
            onactiveviewchanged="multiview3_ActiveViewChanged" >
        <asp:View ID="View8" runat="server">
            7. As part of our ongoing efforts to achieve quality placements for our 
            students, each SAI centre conducts a monthly programme called ‘CareerWize’ where 
            our&nbsp; students learn basic soft skills, develop their interview skills and pick 
            up tips on making themselves more presentable and job-ready. Apart from this, 
            SAI conducts a convocation ceremony-cum-job fair at the end of your course where 
            top recruiters visit our centres and make spot offers to some students on the 
            basis of face-to-face interaction, tests, interviews, etc. All this is over and 
            above the 100-hour compulsory Soft Skills programme which includes English 
            Language Enhancement and Workplace Skills to equip you with critical job skills.
        </asp:View>
        <asp:View ID="View7" runat="server">
            6.SAI is a pioneer in IT education. With over 20 years of experience in IT 
            training, our biggest strength is our flexibility in adapting to changing 
            industry requirements. We have always endeavoured to provide quality education 
            through industry interface. Besides, SAI&nbsp; has strong alliances with the world’s 
            leading technology partners, which help fortify your course offering.
        </asp:View>
        <asp:View ID="View6" runat="server">
            5. Yes, you can opt for courses mapped to international certifications from 
            Oracle, Sun Java, Microsoft, Red Hat Linux, etc.
        </asp:View>
        <asp:View ID="View5" runat="server">
            4. Quality delivery is SAI’s mantra; our curriculum and course content are in 
            keeping with the latest technology as well as with the requirements of the end 
            users (companies). Each and every faculty member at each of our centres has to 
            be SAI Certified. Our faculty recruitment norms are very stringent. Once 
            recruited, the teachers/ faculty undergo a training programme to enable them to 
            deliver their course perfectly.
        </asp:View>
        <asp:View ID="View4" runat="server">
            3. SSiJQ: Our 16-week SSi Job Quotient (JQ) diploma is tailor-made for you! If 
            you are an engineering student or are studying computers as your main subject at 
            the graduate level, SSiJQ equips you with in-demand Core IT skills, and even 
            hones your communication skills and industry orientation. SSiJQ’s core IT 
            courses encompass certified courses from Microsoft, Sun Microsystems, Red Hat 
            Linux and Oracle. We deliver original courseware from these IT leaders.
        </asp:View>
    <asp:View id ="view1" runat ="server" >
     1. Today, wherever you look, from rail and air ticket bookings to shopping malls, computers are used extensively and Information Technology (IT) plays a big role in managing everything. Various studies – national and international – have forecast a great growth in India’s IT businesses as well as increasing job opportunities for IT professionals. In 2008, the IT job potential in India will be 22 lakh jobs. These jobs include four broad categories: IT Services, Software Products, IT Enabled Services (ITES), and e-business. This is why IT professionals are always in demand.
    </asp:View>
       
     <asp:View id ="view2" runat ="server" >
      2. At Aptech, we have smart courses to suit every need:
o Aptech Certified Computer Professional (ACCP): Targeted at those of you serious about making a career in Information Technology, the three-year modular ACCP has nine trimesters. The best thing about ACCP 2007 is its 100-hour compulsory Soft Skills training module. The English Language Enhancement and Workplace Skills programmes – conducted as part of this Soft Skills module – will equip you with those skills that all employers look for. Apart from this, ACCP also offers one whole year of on-the-job internship. 
o SSiJQ: The 16-week SSi Job Quotient (JQ) diploma is for engineering students or for those studying computers as their main subject at the graduate level. SSiJQ equips you with in-demand Core IT skills, and even sharpens your communication skills and industry orientation. SSiJQ’s core IT courses encompass certified courses from Microsoft, Sun Microsystems, Red Hat Linux and Oracle. We deliver original courseware from these IT leaders. 
o Vidya Series: Vidya is Aptech’s multi-lingual basic literacy course. We have trained over 5,50,000 beginners, children as well as young adults on Vidya. Advanced Powerpoint, Advanced Excel, Web familiarisation, etc. are some of the courses we offer in the Vidya bouquet.<br />
    </asp:View>
    
    </asp:MultiView>
    
    
    
        <%--<ul class="navvylist ">
    <li>
    
    <li><a href ="#Q2"></a> <br /></li>
    <li><a href ="#Q3"></a><br /></li>
    <li><a href ="#Q4"></a><br /></li>
    <li><a href ="#Q5">5.Can I get trained for International Certifications through Aptech?</a><br /></li> 
    <li><a href ="#Q6">6.I have visited some of Aptech’s competitors. How will Aptech courses give me a greater benefit than what they are offering?</a><br /></li>
    <li><a href ="#Q7">7.Does Aptech have the capability to get me a job? What help can I expect from you for this?</a><br /></li> 
    <li><a href ="#Q8">8.Does Aptech only offer computer education in India? What else do you do?</a><br /></li> 
    </ul> --%>
   <%-- <ul >
    <li><a name="Q1">
    1. Today, wherever you look, from rail and air ticket bookings to shopping malls, computers are used extensively and Information Technology (IT) plays a big role in managing everything. Various studies – national and international – have forecast a great growth in India’s IT businesses as well as increasing job opportunities for IT professionals. In 2008, the IT job potential in India will be 22 lakh jobs. These jobs include four broad categories: IT Services, Software Products, IT Enabled Services (ITES), and e-business. This is why IT professionals are always in demand. 
    </a></li>
    <li><a name="Q2">
    2. At Aptech, we have smart courses to suit every need:
o Aptech Certified Computer Professional (ACCP): Targeted at those of you serious about making a career in Information Technology, the three-year modular ACCP has nine trimesters. The best thing about ACCP 2007 is its 100-hour compulsory Soft Skills training module. The English Language Enhancement and Workplace Skills programmes – conducted as part of this Soft Skills module – will equip you with those skills that all employers look for. Apart from this, ACCP also offers one whole year of on-the-job internship. 
o SSiJQ: The 16-week SSi Job Quotient (JQ) diploma is for engineering students or for those studying computers as their main subject at the graduate level. SSiJQ equips you with in-demand Core IT skills, and even sharpens your communication skills and industry orientation. SSiJQ’s core IT courses encompass certified courses from Microsoft, Sun Microsystems, Red Hat Linux and Oracle. We deliver original courseware from these IT leaders. 
o Vidya Series: Vidya is Aptech’s multi-lingual basic literacy course. We have trained over 5,50,000 beginners, children as well as young adults on Vidya. Advanced Powerpoint, Advanced Excel, Web familiarisation, etc. are some of the courses we offer in the Vidya bouquet. 

    </a>
    </li>
    <li >
    <a name="Q3">
   
    3. SSiJQ: Our 16-week SSi Job Quotient (JQ) diploma is tailor-made for you! If you are an engineering student or are studying computers as your main subject at the graduate level, SSiJQ equips you with in-demand Core IT skills, and even hones your communication skills and industry orientation. SSiJQ’s core IT courses encompass certified courses from Microsoft, Sun Microsystems, Red Hat Linux and Oracle. We deliver original courseware from these IT leaders.
    </a>
    </li>
    <li>
    <a name="Q4">
    4. Quality delivery is Aptech’s mantra; our curriculum and course content are in keeping with the latest technology as well as with the requirements of the end users (companies). Each and every faculty member at each of our centres has to be Aptech Certified. Our faculty recruitment norms are very stringent. Once recruited, the teachers/ faculty undergo a training programme to enable them to deliver their course perfectly.
    </a>
    </li>
    <li>
    <a name="Q5">
    5. Yes, you can opt for courses mapped to international certifications from Oracle, Sun Java, Microsoft, Red Hat Linux, etc. 
    </a>
    </li>
    <li>
    <a name="Q6">
    6. Aptech is a pioneer in IT education. With over 20 years of experience in IT training, our biggest strength is our flexibility in adapting to changing industry requirements. We have always endeavoured to provide quality education through industry interface. Besides, Aptech has strong alliances with the world’s leading technology partners, which help fortify your course offering.
    </a>
    </li>
    <li>
    <a name="Q7">
    7. As part of our ongoing efforts to achieve quality placements for our students, each Aptech centre conducts a monthly programme called ‘CareerWize’ where our ACCP students learn basic soft skills, develop their interview skills and pick up tips on making themselves more presentable and job-ready. Apart from this, Aptech conducts a convocation ceremony-cum-job fair at the end of your course where top recruiters visit our centres and make spot offers to some students on the basis of face-to-face interaction, tests, interviews, etc. All this is over and above the 100-hour compulsory Soft Skills programme which includes English Language Enhancement and Workplace Skills to equip you with critical job skills. 
    </a>
    </li>
    </ul>
    
--%>    </asp:View> 
</asp:MultiView>
    <asp:View ID="View10" runat="server">
    </asp:View>
</asp:Content>

