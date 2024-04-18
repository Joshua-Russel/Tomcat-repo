<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Insurance Data</title>
                <style>
                    /* Define styles for better presentation */
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h1 {
                        color: #3366cc;
                    }
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: left;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Insurance Data</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Occupation</th>
                        <th>Policy Number</th>
                        <th>Type</th>
                        <th>Status</th>
                        <th>Coverage Amount</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>
                    <xsl:for-each select="insuranceData/users/user">
                        <xsl:for-each select="insurancePolicy">
                            <tr>
                                <td>
                                    <xsl:value-of select="../id"/>
                                </td>
                                <td>
                                    <xsl:value-of select="../name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="../age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="../gender"/>
                                </td>
                                <td>
                                    <xsl:value-of select="../occupation"/>
                                </td>
                                <td>
                                    <xsl:value-of select="policyNumber"/>
                                </td>
                                <td>
                                    <xsl:value-of select="type"/>
                                </td>
                                <td>
                                    <xsl:value-of select="status"/>
                                </td>
                                <td>
                                    <xsl:value-of select="coverageAmount"/>
                                </td>
                                <td>
                                    <xsl:value-of select="startDate"/>
                                </td>
                                <td>
                                    <xsl:value-of select="endDate"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
