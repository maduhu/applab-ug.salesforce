<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ppi_150_Nacional_Score</fullName>
        <field>ppi_150_Nacional_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 99.8, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 99.7, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 99.7, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 98.6, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 97.2, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 92.2, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 85.3, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 83, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 64, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 63.5, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 39.2, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 35, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 15.9, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 11.7, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 7.8, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 1.6, IF(ppi_Score__c &gt;= 90 &amp;&amp; ppi_Score__c &lt;= 94 , 1, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 98.7, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 99.3, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 97.2, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 93.9, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 87.6, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 77.4, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 61.9, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 49.7, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 33, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 22.9, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 14.9, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 7.7, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 4.1, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 1.7, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0.7, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0.1, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_150_Nacional_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_1_25</fullName>
        <field>ppi_1_25_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 30.2 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 16.4, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 21.4, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 16.5, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 9.3, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 ,9.5, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 2.1, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 1.5, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 2, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 0.5, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 0, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 0, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 0, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 81.1 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 71.6, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 64.4, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 45.7, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 33.7, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 24.7, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 15.9, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 8.9, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 6.1, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 3.2, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 1.3, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 0.8, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 0.5, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.1, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0.1, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0.1, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0.1, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_1_25</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_200_Nacional_Score</fullName>
        <field>ppi_200_Nacional_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 99.8, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 100, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 100, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 100, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 99.4, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 98.8, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 95.6, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 95.7, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 89.9, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 87.8, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 73.5, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 56.2, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 31.2, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 29.7, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 24.1, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 4.2,IF(ppi_Score__c &gt;= 90 &amp;&amp; ppi_Score__c &lt;= 94 , 4.5, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 99.3, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 99.8, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 99.2, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 97.3, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 94.1, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 87.9, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 76.8, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 66.6, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 52, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 40.6, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 29.9, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 18.5, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 9.2, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 5.5, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 1.9, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 1.9, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_200_Nacional_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_2_50_Score</fullName>
        <field>ppi_2_50_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 99.4, IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 95.2, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 93.6, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 88.5, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 68.5, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 63.2, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 46.1, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 34.5, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 26.5, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 15.6, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 5.3, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 3.6, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 0.4, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.6, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0.4, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0.1, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 97.7, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 93.8, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 87.9, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 74, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 60.7, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 42.6, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 26.7, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 16.8, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 9.1, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 3.6, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 2.1, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 1.1, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.4, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0.3, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0.1, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0.3, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_2_50_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_3_75_Score</fullName>
        <field>ppi_3_75_Scores__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 99.1, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 99.3, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 90.9, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 91.3, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 84.3, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 73.1, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 62.3, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 54.2, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 27.3, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 21.3, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 8.5, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 7.5, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 4.7, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0.5, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 1.9, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0.6, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 99.1, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 97.6, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 97.1, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 91.5, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 83.1, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 69.6, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 51.2, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 35, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 20, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 8.8, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 4.4, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 2.5, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.9, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0.6, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0.2, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0.4, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_3_75_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_5_00_Score</fullName>
        <field>ppi_5_00_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 99.8, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 99.7, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 99.1, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 96.7, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 95.9, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 89.4, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 79.8, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 78.8, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 54.2, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 55.8, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 29.9, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 23.4, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 11.6, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 ,7, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 3.8, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 1.1,IF(ppi_Score__c &gt;= 90 &amp;&amp; ppi_Score__c &lt;= 94 , 1, 0)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 99.9, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 98.7, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 99.2, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 97.2, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 92.4, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 89.2, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 69, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 52.2, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 35.2, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 18.7, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 10.2, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 5.3, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 2.3, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 1.1, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0.7, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0.5, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0.1, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_5_00_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_Alimentaria_Score</fullName>
        <field>ppi_Alimentaria_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4, 71.7, IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 64.5, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 64.4, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 45.3, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 33.5, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 25, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 15.9, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 11.3, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 7.3, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 2.2, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 0.7, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 0.4, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 0, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.1, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), 0)</formula>
        <name>ppi_Alimentaria_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_Extrema_USAID_Score</fullName>
        <field>ppi_Extrema_USAID_Score__c</field>
        <formula>IF( LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 86.2 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 81.5, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 80.9, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 74.5, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 59.2, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 50.2, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 41.1, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 30.9, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 21.3, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 11.8, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 7.8, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 4.6, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 1.3, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.8, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 1.6, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0.1, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0, 0.1) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4 , 100 , IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 89.8, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14 , 84, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19 , 68.9, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24 , 58, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29 , 47.1, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34 , 34.2, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39 , 21.9, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44 , 13.6, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49 , 7.5, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54 , 3.9, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59 , 2.5, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64 , 1.4, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69 , 0.6, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74 , 0.3, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79 , 0.1, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84 , 0.3, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89 , 0, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_Extrema_USAID_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_Nacional_Indigencia_Score</fullName>
        <field>ppi_Nacional_Indigencia_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, 0, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4, 98.1, IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 87.3, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14, 77.8, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19, 60.7, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24, 46.1, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29, 36.9, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34, 23.4, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39, 13.9, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44, 8.6, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49, 4.7, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54, 2.4, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59, 1.2, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64, 0.9, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69, 0.4, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74, 0.2, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79, 0.1, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84, 0.3, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89, 0, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_Nacional_Indigencia_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ppi_Nacional_Score</fullName>
        <field>ppi_Nacional_Score__c</field>
        <formula>IF(LAC_Farmer_Details__r.Country__c = &apos;Guatemala&apos;, IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4, 100, IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 100, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14, 99.1, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19, 99.2, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24, 91.7, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29, 90, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34, 83, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39, 70.3, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44, 60.3, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49, 52.2, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54, 25.3, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59, 25.5, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64, 8.1, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69, 7.3, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74, 3.9, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79, 4.4, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84, 1.9, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89, 0.2, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ), IF( ppi_Score__c &gt;= 0 &amp;&amp; ppi_Score__c &lt;= 4, 100, IF(ppi_Score__c &gt;= 5 &amp;&amp; ppi_Score__c &lt;= 9, 99.7, IF(ppi_Score__c &gt;= 10 &amp;&amp; ppi_Score__c &lt;= 14, 97.1, IF(ppi_Score__c &gt;= 15 &amp;&amp; ppi_Score__c &lt;= 19, 95.5, IF(ppi_Score__c &gt;= 20 &amp;&amp; ppi_Score__c &lt;= 24, 89.6, IF(ppi_Score__c &gt;= 25 &amp;&amp; ppi_Score__c &lt;= 29, 82.6, IF(ppi_Score__c &gt;= 30 &amp;&amp; ppi_Score__c &lt;= 34, 69.4, IF(ppi_Score__c &gt;= 35 &amp;&amp; ppi_Score__c &lt;= 39, 53.4, IF(ppi_Score__c &gt;= 40 &amp;&amp; ppi_Score__c &lt;= 44, 37.3, IF(ppi_Score__c &gt;= 45 &amp;&amp; ppi_Score__c &lt;= 49, 24.9, IF(ppi_Score__c &gt;= 50 &amp;&amp; ppi_Score__c &lt;= 54, 14, IF(ppi_Score__c &gt;= 55 &amp;&amp; ppi_Score__c &lt;= 59, 7.6, IF(ppi_Score__c &gt;= 60 &amp;&amp; ppi_Score__c &lt;= 64, 4.1, IF(ppi_Score__c &gt;= 65 &amp;&amp; ppi_Score__c &lt;= 69, 1.7, IF(ppi_Score__c &gt;= 70 &amp;&amp; ppi_Score__c &lt;= 74, 0.9, IF(ppi_Score__c &gt;= 75 &amp;&amp; ppi_Score__c &lt;= 79, 0.6, IF(ppi_Score__c &gt;= 80 &amp;&amp; ppi_Score__c &lt;= 84, 0.4, IF(ppi_Score__c &gt;= 85 &amp;&amp; ppi_Score__c &lt;= 89, 0.1, 0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))</formula>
        <name>ppi_Nacional_Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>ppi_Scores_CalculateAll</fullName>
        <actions>
            <name>ppi_150_Nacional_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_1_25</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_200_Nacional_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_2_50_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_3_75_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_5_00_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_Alimentaria_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_Extrema_USAID_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_Nacional_Indigencia_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ppi_Nacional_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CBL2_Farmer__c.ppi_Score__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <description>calculate all the ppi scores on CBL2_Farmer base on field ppi_Score__c</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>