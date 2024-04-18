<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Mining Workers Insurance App</title>
                <style>
                    /* Define styles for better presentation */
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h1 {
                        color: #3366cc;
                    }
                    .section {
                        margin-bottom: 20px;
                    }
                    .criteria {
                        margin-left: 20px;
                    }
                </style>
            </head>
            <body>
                <h1>Mining Workers Insurance App</h1>
                <div class="section">
                    <h2>Overview</h2>
                    <p>
                        <xsl:value-of select="insuranceApp/description"/>
                    </p>
                </div>
                <div class="section">
                    <h2>Coverage Types</h2>
                    <ul>
                        <xsl:for-each select="insuranceApp/coverageTypes/coverageType">
                            <li>
                                <strong>
                                    <xsl:value-of select="name"/>
                                </strong>:                                <xsl:value-of select="description"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
                <div class="section">
                    <h2>Eligibility Criteria</h2>
                    <ul class="criteria">
                        <xsl:for-each select="insuranceApp/eligibilityCriteria/criteria">
                            <li>
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
                <div class="section">
                    <h2>Contact Information</h2>
                    <p>
                        Phone: <xsl:value-of select="insuranceApp/contactInformation/phoneNumber"/>
                    <br/>
                        Email: <xsl:value-of select="insuranceApp/contactInformation/email"/>
                <br/>
                        Address: <xsl:value-of select="insuranceApp/contactInformation/address/street"/>
,
            <xsl:value-of select="insuranceApp/contactInformation/address/city"/>
,
            <xsl:value-of select="insuranceApp/contactInformation/address/state"/>
,
            <xsl:value-of select="insuranceApp/contactInformation/address/country"/>
 -            <xsl:value-of select="insuranceApp/contactInformation/address/zipcode"/>
        </p>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
