<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/7/20
  Time: 11:05 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>part8</title>
</head>
<body>
    <%
        response.setContentType("text/html");
        String reason = request.getParameter("reason");
        String effectiveDate = request.getParameter("effiectivedate");
        String name = request.getParameter("personname");
        String ssn = request.getParameter("ssn");
        String dateOfBirth = request.getParameter("birth");
        String dateOfHire = request.getParameter("hiredate");
        String marital = request.getParameter("marital");
        String selfMedical =request.getParameter("medical");
        String selfDental = request.getParameter("dental");
        String selfVision = request.getParameter("vision");

        int len = 0;
        String[] med = request.getParameterValues("medtable");
        if(med!=null)len=Math.max(med.length,len);
        String[] den = request.getParameterValues("dentable");
        if(den!=null)len=Math.max(den.length,len);
        String[] visT = request.getParameterValues("vistable");
        if(visT!=null)len=Math.max(visT.length,len);

        String[] nameT = request.getParameterValues("nametable");
        if(nameT!=null)len=Math.max(nameT.length,len);
        String[] ssnT= request.getParameterValues("ssntable");
        if(ssnT!=null)len=Math.max(ssnT.length,len);
        String[] dateT = request.getParameterValues("datetable");
        if(dateT!=null)len=Math.max(dateT.length,len);

        String[] genT = request.getParameterValues("gentable");
        if(genT!=null)len=Math.max(genT.length,len);

        String[] studentT =request.getParameterValues("student");
        if(studentT!=null)len=Math.max(studentT.length,len);

        String[] relationshipT= request.getParameterValues("relationshiptable");
        if(relationshipT!=null)len=Math.max(relationshipT.length,len);
        String[] pcoT = request.getParameterValues("pcptable");
        if(pcoT!=null)len=Math.max(pcoT.length,len);
        String[] medTable = new String[len];
        String[] denTable = new String[len];
        String[] visTable = new String[len];
        String[] nameTable = new String[len];
        String[] ssnTable = new String[len];
        String[] dateTable = new String[len];
        String[] genTable = new String[len];
        String[] studentTable = new String[len];
        String[] relationshipTable = new String[len];
        String[] pcoTable = new String[len];

        for(int i =0;i<len;i++){
            if((med==null)||den==null||visT==null||nameT==null||ssnT==null||dateT==null||genT==null||studentT==null||relationshipT==null||pcoT==null) break;
            if(i>=med.length){
                medTable[i]= "false";
            }else{
                if(med[i]==null){
                    medTable[i]="false";
                }
                else medTable[i] =med[i];
            }
            if(i>=den.length){
                denTable[i]="false";
            }else{
                if(den[i]==null){
                    denTable[i]="false";
                }
                else denTable[i]=den[i];
            }if(i>=visT.length){
                visTable[i]="false";
            }else{
                if(visT[i]==null){
                    visTable[i]="false";
                }else
                    visTable[i]=visT[i];
            }
            if(i>=nameT.length){
                nameTable[i]="null";
            }else{
                if(nameT[i]==null){
                    nameTable[i]="null";
                }else
                    nameTable[i]=nameT[i];
            }
            if(i>=ssnT.length){
                ssnTable[i]="null";
            }else{
                if(ssnT[i]==null){
                    ssnTable[i]="null";
                }else
                    ssnTable[i]=ssnT[i];
            }
            if(i>=dateT.length){
                dateTable[i]="false";
            }else{
                if(dateT[i]==null){
                    dateTable[i]="null";
                }else
                    dateTable[i]=dateT[i];
            }
            if(i>=genT.length){
                genTable[i]="null";
            }else{
                if(genT[i]==null){
                    genTable[i]="null";
                }else
                    genTable[i]=genT[i];
            }
            if(i>=studentT.length){
                studentTable[i]="false";
            }else{
                if(studentT[i]==null){
                    studentTable[i]="false";
                }else
                    studentTable[i]=studentT[i];
            }
            if(i>=relationshipT.length){
                relationshipTable[i]="null";
            }else{
                if(relationshipT[i]==null){
                    relationshipTable[i]="null";
                }else
                    relationshipTable[i]=relationshipT[i];
            }
            if(i>=pcoT.length){
                pcoTable[i]="null";
            }else{
                if(pcoT[i]==null){
                    pcoTable[i]="null";
                }else
                    pcoTable[i]=pcoT[i];
            }

        }
        String waivehealthCare = request.getParameter("healthcare");
        String healthCareAmount = request.getParameter("healthamount");

        String waiveDependent = request.getParameter("dependentcare");
        String dependentAmount = request.getParameter("dependentamount");

        String contribute = request.getParameter("contribute");
        String contributeAmount = request.getParameter("contibuteamount");

        String contributeName = request.getParameter("myname");

        String supplementalLife = request.getParameter("supplementlifeinsurance");
        String spouseDate = request.getParameter("spousedateofbirth");
        String spouse = request.getParameter("spouse");
        String child = request.getParameter("child");

        String legalPlan = request.getParameter("legalplan");
        len = 0;
        String[] beneficiaryN =request.getParameterValues("beneficiaryname");
        if(beneficiaryN!=null)len = Math.max(len,beneficiaryN.length);
        String[] beneficiaryR = request.getParameterValues("beneficiaryrelationship");
        if(beneficiaryR!=null)len = Math.max(len,beneficiaryR.length);
        String[] beneficiaryRad = request.getParameterValues("beneficiaryradio");
        if(beneficiaryRad!=null)len = Math.max(len,beneficiaryRad.length);


        String[] beneficiaryP = request.getParameterValues("beneficiarypercent");
        if(beneficiaryP!=null)len = Math.max(len,beneficiaryP.length);
        String[] beneficiaryName = new String[len];
        String[] beneficiaryRelationship = new String[len];
        String[] beneficiaryRadio = new String[len];
        String[] beneficiaryPercent = new String[len];
        for(int i =0;i<len;i++){
            if(beneficiaryN==null||beneficiaryP==null||beneficiaryR==null||beneficiaryRad==null) break;
            if(i>=beneficiaryN.length){
                beneficiaryName[i]= "null";
            }else{
                if(beneficiaryN==null){
                    beneficiaryName[i]="null";
                }else{
                    beneficiaryName[i]=beneficiaryName[i];
                }
            }
            if(i>=beneficiaryR.length){
                beneficiaryRelationship[i]="null";
            }else{
                if(beneficiaryR==null){
                    beneficiaryRelationship[i] ="null";
                }else{
                    beneficiaryRelationship[i] = beneficiaryR[i];
                }
            }
            if(i>=beneficiaryRad.length){
                beneficiaryRad[i]="null";
            }else{
                if(beneficiaryRad[i]==null){
                    beneficiaryRadio[i]=beneficiaryRad[i];
                }
            }
            if(i>=beneficiaryP.length){
                beneficiaryP[i]="null";
            }else{
                if(beneficiaryPercent[i]==null){
                    beneficiaryPercent[i]=beneficiaryPercent[i];
                }
            }
        }


        String sign = request.getParameter("signature");
        String signDate = request.getParameter("signdate");
        String reviewed = request.getParameter("reviewed");
        String entered = request.getParameter("entered");

        PrintWriter print = response.getWriter();

        print.println("<h2>");
        print.println("EMPLOYEE INFORMATION");
        print.println("</h2>");
        print.println("Reason: "+reason);
//        print.println("<br>");
        print.println("Effective Date: "+effectiveDate);
        print.println("Name: "+name);
        print.println("SSN: "+ssn);
        print.println("Date of birth: "+dateOfBirth);
        print.println("Date of hire: "+dateOfHire);
        print.println("<h2>");
        print.println("HEALTH INSURANCE");
        print.println("</h2>");
        print.println("Marital status: "+marital);
        print.println("Medical Insurance: "+selfMedical);
        print.println("Dental Insurance: "+selfDental);
        print.println("Vision Plan "+selfVision);
        print.println("<h2>");
        print.println("HEALTH INSURANCE DEPENDENT AND PRIMARY CARE PHYSICIAN INFORMATION");
        print.println("</h2>");
        print.println("medTable length "+medTable.length);
        for(int i =0;i<medTable.length;i++){
            print.print("Medical: "+medTable[i]+"\t");
            print.print("Dental: "+denTable[i]+"\t");
            print.print("Vision:"+visTable[i]+"\t");
            print.print("Name: "+nameTable[i]+"\t");
            print.print("SSN: "+ssnTable[i]+"\t");
            print.print("Date of birth: "+dateTable[i]+"\t");
            print.print("Gender: "+genTable[i]+"\t");
            print.print("student: "+studentTable[i]+"\t");
            print.print("RelationShip: "+relationshipTable[i]+"\t");
            print.print("PCP: "+pcoTable[i]+"\t");
            print.println("<br>");
        }
        print.println("<h2>");
        print.println("REIMBURSEMENT ACCOUNTS");
        print.println("</h2>");
        print.println("Health Care Reimbursement Account "+waivehealthCare+" Amount "+healthCareAmount);
        print.println("Dependent Care Reimbursement Account "+waiveDependent+" Amount "+ dependentAmount);
        print.println("<h2>");
        print.println("HEALTH SAVINGS ACCOUNT (HSA)");
        print.println("</h2>");
        print.println("Health Savings Account "+contribute+" Amount "+contributeAmount);
        print.println("By enrolling in the HSA and checking this box"+contributeName+"I certify that I meet the IRS eligibility requirements for the HSA. $3,350 maximum for individual, $6,750\n" +
                "maximum for family; the maximum includes the combined ($500/individual, $1,000/family) employer and employee contribution. If you will be 55 or older during the calendar year, you are\n" +
                "eligible for a $1,000 catch up.");
        print.println("<h2>");
        print.println("LIFE INSURANCE");
        print.println("</h2>");
        print.println("Supplemental Life Insurance "+supplementalLife);
        print.println("Spouse "+" Date "+spouseDate+" Amount "+spouse);
        print.println("Dependent Child(ren) "+child);
        print.println("<h2>");
        print.println("VOLUNTARY BENEFIT");
        print.println("</h2>");
        print.println("Legal Plan "+legalPlan);
        print.println("<h2>");
        print.println("BENEFICIARY INFORMATION");
        print.println("</h2>");
        for(int i =0;i<beneficiaryName.length;i++){
            print.print("Name: "+beneficiaryName[i]+"\t");
            print.print("RelationShip: "+beneficiaryRelationship[i]+"\t");
            print.print("Primary/Contingent: "+beneficiaryRadio[i]+"\t");
            print.print("Benefit percent: "+beneficiaryPercent[i]+"%"+"\t");
            print.println("<br>");
        }
        print.println("<br>");
        print.println("Employee signature: "+sign+" Date: "+signDate);
        print.println("<br>");
        print.println("Reviewed by: "+reviewed+" Entered "+entered);
    %>
</body>
</html>
