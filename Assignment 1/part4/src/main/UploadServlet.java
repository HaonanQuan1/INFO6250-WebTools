package main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UploadServlet")
public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>");
        out.println("<h2>");
        out.println("EMPLOYEE INFORMATION");
        out.println("</h2>");
        out.println("</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("Reason: "+reason);
        out.println("Effective Date: "+effectiveDate);
        out.println("Name: "+name);
        out.println("SSN: "+ssn);
        out.println("Date of birth: "+dateOfBirth);
        out.println("Date of hire: "+dateOfHire);
        out.println("<h2>");
        out.println("HEALTH INSURANCE");
        out.println("</h2>");
        out.println("Marital status: "+marital);
        out.println("Medical Insurance: "+selfMedical);
        out.println("Dental Insurance: "+selfDental);
        out.println("Vision Plan "+selfVision);
        out.println("<h2>");
        out.println("HEALTH INSURANCE DEPENDENT AND PRIMARY CARE PHYSICIAN INFORMATION");
        out.println("</h2>");
        out.println("medTable length "+medTable.length);
        for(int i =0;i<medTable.length;i++){
            out.print("Medical: "+medTable[i]+"\t");
            out.print("Dental: "+denTable[i]+"\t");
            out.print("Vision:"+visTable[i]+"\t");
            out.print("Name: "+nameTable[i]+"\t");
            out.print("SSN: "+ssnTable[i]+"\t");
            out.print("Date of birth: "+dateTable[i]+"\t");
            out.print("Gender: "+genTable[i]+"\t");
            out.print("student: "+studentTable[i]+"\t");
            out.print("RelationShip: "+relationshipTable[i]+"\t");
            out.print("PCP: "+pcoTable[i]+"\t");
            out.println("<br>");
        }
        out.println("<h2>");
        out.println("REIMBURSEMENT ACCOUNTS");
        out.println("</h2>");
        out.println("Health Care Reimbursement Account "+waivehealthCare+" Amount "+healthCareAmount);
        out.println("Dependent Care Reimbursement Account "+waiveDependent+" Amount "+ dependentAmount);
        out.println("<h2>");
        out.println("HEALTH SAVINGS ACCOUNT (HSA)");
        out.println("</h2>");
        out.println("Health Savings Account "+contribute+" Amount "+contributeAmount);
        out.println("By enrolling in the HSA and checking this box"+contributeName+"I certify that I meet the IRS eligibility requirements for the HSA. $3,350 maximum for individual, $6,750\n" +
                "maximum for family; the maximum includes the combined ($500/individual, $1,000/family) employer and employee contribution. If you will be 55 or older during the calendar year, you are\n" +
                "eligible for a $1,000 catch up.");
        out.println("<h2>");
        out.println("LIFE INSURANCE");
        out.println("</h2>");
        out.println("Supplemental Life Insurance "+supplementalLife);
        out.println("Spouse "+" Date "+spouseDate+" Amount "+spouse);
        out.println("Dependent Child(ren) "+child);
        out.println("<h2>");
        out.println("VOLUNTARY BENEFIT");
        out.println("</h2>");
        out.println("Legal Plan "+legalPlan);
        out.println("<h2>");
        out.println("BENEFICIARY INFORMATION");
        out.println("</h2>");
        for(int i =0;i<beneficiaryName.length;i++){
            out.print("Name: "+beneficiaryName[i]+"\t");
            out.print("RelationShip: "+beneficiaryRelationship[i]+"\t");
            out.print("Primary/Contingent: "+beneficiaryRadio[i]+"\t");
            out.print("Benefit percent: "+beneficiaryPercent[i]+"%"+"\t");
            out.println("<br>");
        }
        out.println("Employee signature: "+sign+" Date: "+signDate);
        out.println("Reviewed by: "+reviewed+" Entered "+entered);
        out.println("</body>");
        out.println("</html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
