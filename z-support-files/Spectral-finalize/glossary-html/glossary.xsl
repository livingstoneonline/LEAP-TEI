<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:jc="http://james.blushingbunny.net/ns.html"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs xd tei jc"
	version="2.0">
	<xd:doc scope="stylesheet">
		<xd:desc>
			<xd:p><xd:b>Author:</xd:b> Adrian S. Wisnicki</xd:p>
			<xd:p>Creating this XSL</xd:p>
			<xd:p>Updated in Aug 2016.</xd:p>
		</xd:desc>
	</xd:doc>
	
	<xsl:output method="xml" indent="no"/>

	<xsl:template match="/">
		<html>
			<xsl:comment>This HTML has been generated from an XML original. Do not manually modify this as a source.</xsl:comment>
			<head>
				<meta charset="UTF-8"/>
				<link rel="stylesheet" type="text/css" href="glossary-style.css"/>
				<title>
					<xsl:value-of select="//teiHeader//title[1]"/>
				</title>
			</head>
			<body>
				<xsl:apply-templates select="TEI"/>
			</body>
		</html>
	</xsl:template>

	<!-- TEI -->
	<xsl:template match="TEI">
		<div class="transcription">	
			<xsl:apply-templates select="text"/>
		</div>

	</xsl:template>


	<!-- people and orgName -->

	<xsl:template match="person|org|entry|org|place">
		<p><xsl:apply-templates/></p><br/>
	</xsl:template>

	<xsl:template match="persName|form/orth|orgName|placeName">
		<xsl:choose>
			<xsl:when test="../birth">
				<strong><xsl:apply-templates/></strong> (<xsl:value-of select="../birth[@when]"/>-<xsl:value-of select="../death[@when]"/>) -
			</xsl:when>
		<xsl:otherwise>
			<strong><xsl:apply-templates/></strong> -
		</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="birth|death">
	</xsl:template>

	<xsl:template match="note|def">
		<xsl:apply-templates/>
	</xsl:template>


</xsl:stylesheet>
