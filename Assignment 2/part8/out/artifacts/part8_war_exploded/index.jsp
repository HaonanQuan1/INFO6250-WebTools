<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 9/25/20
  Time: 3:04 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Northeastern University Human Resource Management</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="Header" >
  <h1>
    Northeastern University
  </h1>
  <h1 style="font-size: large">
    2016 Benefits Enrollent Form
  </h1>
  <br>
  <h2>
    Human Resource Management
  </h2>
</div>
<form method="post" action="show.jsp">
  <div class="reason">
    <h3>
      check reason that you are completing this enrollment form
    </h3>
    <input type="radio" name="reason" value="NewHire">New Hire
    &nbsp
    &nbsp
    &nbsp
    <input type="radio" name="reason" value="Qualifying event or family status change"> Qualifying event or family status change
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    <input type="date" name="effiectivedate" class="text" align="right">
    <br>
  </div>
  <div class="contentContainer">

    <div class="employeeinformation">
      <input type="text" name="personname" class="text">
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      <input type="number" name="ssn" class="text">
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp

      Effective Date
      <br>
      <p>Name
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        Social Security Number</p>
      <%--      <p>Social Security Number</p>--%>
      <br>
      &nbsp
      &nbsp
      &nbsp
      <br>
      <input placeholder="Date of birth" name="birth" type="date" class="text">
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      <input placeholder="Date of Hire" name="hiredate" type="date" class="text">
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      <input name="marital" type="text" class="text">
      <br>
      Date of birth
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      Date of hire
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      &nbsp
      Marital Status
    </div>
    <div class="health insurance">
      <p >Medical &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp I select the following plan(choose one):         &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        Dental&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        I select the following plan(choose one): &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Vision Plan
      </p>
      <input type="radio" name="medical" value="Individual"><label>Individual</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="medical" value="HDHP W/HSA"><label>HDHP W/HSA</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="dental" value="Individual"><label>Individual</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="dental" value="Value"><label>Value</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp
      <input type="radio" name="vision" value="Individual"><label>Individual</label>
      <br>
      <input type="radio" name="medical" value="Family"><label>Family</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="medical" value="Core"><label>Core</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp
      <input type="radio" name="dental" value="Family"><label>Family</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp &nbsp
      <input type="radio" name="dental" value="Value Plus"><label>Value Plus</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="vision" value="Family"><label>Family</label>
      <br>
      <input type="radio" name="medical" value="Terminate"><label>Terminate</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp
      <input type="radio" name="medical" value="Enhanced"><label>Enhanced</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp
      <input type="radio" name="dental" value="Terminate"><label>Terminate</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp
      <input type="radio" name="vision" value="Terminate"><label>Terminate</label>
      <br>
      <input type="radio" name="medical" value="Waive participation"><label>Waive participation</label>
      &nbsp &nbsp
      <input type="radio" name="medical" value="PPO"><label>PPO</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="dental" value="Waive participation"><label>Waive participation</label>
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      <input type="radio" name="vision" value="Waive"><label>Waive</label>
    </div>
    <div class="HEALTH INSURANCE DEPENDENT AND PRIMARY CARE PHYSICIAN INFORMATION">
      <h2>
        HEALTH INSURANCE DEPENDENT AND PRIMARY CARE PHYSICIAN INFORMATION
      </h2>
      <p>
        List those dependents (spouse, same-sex spousal equivalent, or dependent child) for whom you are selecting medical and dental coverage and their primary care physician (PCP) information.
        Please attach required documentation for dependents as follows: spouse – marriage certificate, same-sex spousal equivalent – certification, dependent child – birth certificate or your most
        recent 1040 Tax Return which lists your dependents.
      </p>
      <table >
        <tr>
          <th>
            Medical &nbsp &nbsp
          </th>
          <th>
            Dental&nbsp &nbsp
          </th>
          <th>
            Vision&nbsp &nbsp
          </th>
          <th>
            Name(Last,First,MI)&nbsp &nbsp
          </th>
          <th>
            Social Security#&nbsp &nbsp
          </th>
          <th>
            D.O.B&nbsp &nbsp
          </th>
          <th>
            Gender&nbsp &nbsp
          </th>
          <th>
            Student?&nbsp &nbsp
          </th>
          <th>
            Relationship&nbsp &nbsp
          </th>
          <th>
            PCP#
          </th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="medtable" value="true">
          </td>
          <td>
            <input type="checkbox" name="dentable" value="true">
          </td>
          <td>
            <input type="checkbox" name="vistable" value="true">
          </td>
          <td>
            <input type="text" name="nametable" class="text">
          </td>
          <td>
            <input type="number" name="ssntable" class="text">
          </td>
          <td>
            <input type="date" name="datetable" class="text">
          </td>
          <td>
            <input type="text" name="gentable" class="text">
          </td>
          <td>
            <input type="checkbox" name="student" value="yes">
          </td>
          <td>
            <input type="text" name="relationshiptable" class="text">
          </td>
          <td>
            <input type="text" name="pcptable"class="text">
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="medtable" value="true">
          </td>
          <td>
            <input type="checkbox" name="dentable" value="true">
          </td>
          <td>
            <input type="checkbox" name="vistable" value="true">
          </td>
          <td>
            <input type="text" name="nametable" class="text">
          </td>
          <td>
            <input type="number" name="ssntable" class="text">
          </td>
          <td>
            <input type="date" name="datetable" class="text" class="text">
          </td>
          <td>
            <input type="text" name="gentable" class="text">
          </td>
          <td>
            <input type="checkbox" name="student" value="yes">
          </td>
          <td>
            <input type="text" name="relationshiptable" class="text">
          </td>
          <td>
            <input type="text" name="pcptable" class="text">
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="medtable" value="true">
          </td>
          <td>
            <input type="checkbox" name="dentable" value="true">
          </td>
          <td>
            <input type="checkbox" name="vistable" value="true">
          </td>
          <td>
            <input type="text" name="nametable" class="text">
          </td>
          <td>
            <input type="number" name="ssntable" class="text">
          </td>
          <td>
            <input type="date" name="datetable" class="text">
          </td>
          <td>
            <input type="text" name="gentable" class="text">
          </td>
          <td>
            <input type="checkbox" name="student" value="yes">
          </td>
          <td>
            <input type="text" name="relationshiptable" class="text">
          </td>
          <td>
            <input type="text" name="pcptable" class="text">
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="medtable" value="true">
          </td>
          <td>
            <input type="checkbox" name="dentable" value="true">
          </td>
          <td>
            <input type="checkbox" name="vistable" value="true">
          </td>
          <td>
            <input type="text" name="nametable" class="text">
          </td>
          <td>
            <input type="number" name="ssntable" class="text">
          </td>
          <td>
            <input type="date" name="datetable" class="text">
          </td>
          <td>
            <input type="text" name="gentable" class="text">
          </td>
          <td>
            <input type="checkbox" name="student" value="yes">
          </td>
          <td>
            <input type="text" name="relationshiptable" class="text">
          </td>
          <td>
            <input type="text" name="pcptable" class="text">
          </td>
        </tr>
      </table>
    </div>
    <div class="REIMBURSEMENT ACCOUNTS">
      <h2>
        REIMBURSEMENT ACCOUNTS
      </h2>
      <p>Check the account(s) you wish to establish and indicate the calendar year election amount for each. Reimbursement accounts must be elected each calendar year during open enrollment</p>
      Health Care Reimbursement Account &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp<input type="radio" name="healthcare" value="amountchecked"><label>Amount: $ </label><input type="text" name="healthamount" class="text">($120 minimum and $2,550 maximum per calendar year)
      <input type="radio" name="healthcare" value="waivedhealth"> <label>Waive participation</label>
      <br>
      Dependent Care Reimbursement Account &nbsp &nbsp
      <input type="radio" name="dependentcare" value="dependentcarechecked"><label>Amount: $ </label><input type="text" name="dependentamount" class="text">($120 minimum and $2,550 maximum per calendar year)
      <input type="radio" name="dependentcare" value="waiveddependent"><label>Waive participation</label>
    </div>
    <div class="H EALTH SAV INGS ACCOUN T (HSA )">
      <h2>
        HEALTH SAVINGS ACCOUNT (HSA )
      </h2>
      <p>Select the amount you wish to contribute for the calendar year. The HSA may only be used if you have selected the High Deductible Health Plan offered by Northeastern.</p>
      Health Savings Account &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<input type="checkbox" name="contribute" value="contribute">Amount: $<input type="text" name="contibuteamount"
                                                                                                                                                                                           class="text">
      <br>
      By enrolling in the HSA and checking this box &nbsp<input type="text" name="myname" class="text"> I certify that I meet the IRS eligibility requirements for the HSA. $3,350 maximum for individual, $6,750
      maximum for family; the maximum includes the combined ($500/individual, $1,000/family) employer and employee contribution. If you will be 55 or older during the calendar year, you are
      eligible for a $1,000 catch up.
    </div>
    <br>
    <div class="LIFE INSURANCE">
      <h2>
        LIFE INSURANCE
      </h2>
      Basic Life Insurance 2x &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp base salary paid by Northeastern University.
      <br>
      Supplemental Life Insurance &nbsp&nbsp <input type="radio" name="supplementlifeinsurance" value=" 1x base salary"><label>1x base salary</label>
      <input type="radio" name="supplementlifeinsurance" value=" 2x base salary"><label>2x base salary</label>
      <input type="radio" name="supplementlifeinsurance" value=" 3x base salary"><label>3x base salary</label>
      <input type="radio" name="supplementlifeinsurance" value=" 4x base salary"><label>4x base salary</label>
      <input type="radio" name="supplementlifeinsurance" value=" Waive"><label>Waive</label>
      <br>
      Spouse/Domestic Partner    &nbsp&nbsp Date of Birth: &nbsp <input type="date" name="spousedateofbirth" class="text">
      &nbsp&nbsp&nbsp <input type="radio" name="spouse" value="$25,000"><label>$25,000</label>
      &nbsp&nbsp&nbsp <input type="radio" name="spouse" value="$50,000"><label>$25,000</label>
      &nbsp&nbsp&nbsp <input type="radio" name="spouse" value="$75,000"><label>$25,000</label>
      &nbsp&nbsp&nbsp <input type="radio" name="spouse" value="$100,000"><label>$25,000</label>
      &nbsp&nbsp&nbsp <input type="radio" name="spouse" value="Waive"><label>Waive</label>
      <br>
      Dependent Child(ren)   &nbsp&nbsp
      <input type="radio" name="child" value="$10,000"><label>$10,000</label>
      &nbsp&nbsp&nbsp<input type="radio" name="child" value="$20,000"><label>$10,000</label>
      &nbsp&nbsp&nbsp<input type="radio" name="child" value="Waive"><label>Waive</label>
    </div>
    <div class="VOLUNTARY BENEFIT">
      <h2>
        VOLUNTARY BENEFIT
      </h2>
      Legal Plan &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp <input type="radio" name="legalplan" value="Individual/family"><label>Individual/family</label>
      <input type="radio" name="Ω" value="Waive participation"><label>Waive participation</label>
    </div>
  </div>
  <div class="BENEFICIARY INFORMATION">
    <h2>
      BENEFICIARY INFORMATION
    </h2>
    <p>
      List the beneficiary or beneficiaries for your life insurance coverage. All benefits-eligible employees have basic life insurance provided by Northeastern University.
    </p>
    <table>
      <tr>
        <th>
          Name (Last, First, Middle initial)
        </th>
        <th>
          Relationship
        </th>
        <th>
          Primary/Contingent (circle one)
        </th>
        <th>
          Benefit percent
        </th>
      </tr>
      <tr>
        <td>
          <input type="text" name="beneficiaryname" class="text">
        </td>
        <td>
          <input type="text" name="beneficiaryrelationship" class="text">
        </td>
        <td>
          <input type="checkbox" name="beneficiaryradio" value="Primary"><label>Primary</label>
          <input type="checkbox" name="beneficiaryradio" value="Contingent"><label>Contingent</label>
        </td>
        <td>
          <input type="text" name="beneficiarypercent" class="text">
          %
        </td>
      </tr>
      <tr>
        <td>
          <input type="text" name="beneficiaryname" class="text">
        </td>
        <td>
          <input type="text" name="beneficiaryrelationship" class="text">
        </td>
        <td>
          <input type="checkbox" name="beneficiaryradio" value="Primary"><label>Primary</label>
          <input type="checkbox" name="beneficiaryradio" value="Contingent"><label>Contingent</label>
        </td>
        <td>
          <input type="text" name="beneficiarypercent" class="text">
          %
        </td>
      </tr>
      <tr>
        <td>
          <input type="text" name="beneficiaryname" class="text">
        </td>
        <td>
          <input type="text" name="beneficiaryrelationship" class="text">
        </td>
        <td>
          <input type="checkbox" name="beneficiaryradio" value="Primary"><label>Primary</label>
          <input type="checkbox" name="beneficiaryradio" value="Contingent"><label>Contingent</label>
        </td>
        <td>
          <input type="text" name="beneficiarypercent" class="text">
          %
        </td>
      </tr>
    </table>
    <p>I certify the above is true and correct. I acknowledge that I have reviewed the benefits outlined on northeastern.edu/hrm and have been given the opportunity to enroll in the Northeastern
      Benefits Plans. By not enrolling in certain benefits at this time, I realize that I will be unable to enroll or make changes again until the next open enrollment unless I have a qualifying event as
      outlined on northeastern.edu/hrm. I hereby authorize Northeastern University to reduce my pay for the benefit plans I have selected above.</p>
    <br>
    <input type="text" name="signature"align="left" class="text">
    <input type="date" name="signdate" style="margin-left: 400px" class="text">
    <br>
    <div style="width: 560px;float: left"  >Employee signature</div>
    <div style="width: 400px;float: left" >Date </div>
    <br>
    <input type="text" name="reviewed" align="left" class="text">
    <input type="text" name="entered" style="margin-left: 400px" class="text">
    <br>

    <div style="width: 560px;float: left"  >Reviewed by</div>
    <div style="width: 400px;float: left" >Entered </div>
  </div>
  <br>
  <input type="submit" value="submit">
</form>


</body>
</html>
