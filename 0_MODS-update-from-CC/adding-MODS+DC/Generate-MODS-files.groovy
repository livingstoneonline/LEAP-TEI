
import groovy.xml.MarkupBuilder;

def filename = "14-MODS-08t.csv";


File csvFile = new File(filename);
boolean notfirstline = false;
	csvFile.splitEachLine('@') {fields ->
		if(notfirstline){
			def writer = new StringWriter();
			def xml = new MarkupBuilder(writer)
			xml.mkp.xmlDeclaration(version:'1.0',encoding:'utf-8',standalone:'yes');
			xml.'mods:mods'('xmlns:mods':'http://www.loc.gov/mods/v3',
					'xmlns:xlink':'http://www.w3.org/1999/xlink',
					'xmlns:xsi':'http://www.w3.org/2001/XMLSchema-instance',
					'xsi:schemaLocation':'http://www.loc.gov/standards/mods/v3/mods-3-5.xsd'){
				
				'mods:identifier'('type':'local','displayLabel':'master_id',fields[0]){   
					}

					if(fields[1]){//B
						'mods:identifier'('type':'local','displayLabel':'Canonical Catalog Number',fields[1]){
						}
					}

					if(fields[2]){//C
						'mods:titleInfo' {
							'mods:title'(fields[2]){
							}
						}
					}

					if(fields[3]){//D
						'mods:titleInfo'('type':'alternative'){
							'mods:title'(fields[3]){
							}
						}
					}

					if(fields[4]){//E
					'mods:name'('type':'personal') {
							'mods:namePart'(fields[4]){
							}
					if(fields[5]){//F
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[5]){
									}
								}
							}
						}
					}

					if(fields[6]){//G
					'mods:name'('type':'personal') {
							'mods:namePart'(fields[6]){
							}
					if(fields[7]){//H
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[7]){
									}
								}
							}
						}
					}

					if(fields[8]){//I
						'mods:note'('displayLabel':'creator',fields[8]){
						}
					}

					if(fields[9]){//J
					'mods:name'('type':'personal') {
							'mods:namePart'(fields[9]){
							}
					if(fields[10]){//K
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[10]){
									}
								}
							}
						}
					}

					if(fields[11]){//L
					'mods:name'('type':'personal') {
							'mods:namePart'(fields[11]){
							}
					if(fields[12]){//M
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[12]){
									}
								}
					if(fields[13]){//N
								'mods:description'(fields[13]){
									}
								}
							}
						}
					}

					if(fields[14]){//O
						'mods:note'('displayLabel':'addressee',fields[14]){
						}
					}

					if(fields[15]){//P
					'mods:name'('type':'personal') {
							'mods:namePart'(fields[15]){
							}
					if(fields[16]){//Q
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[16]){
									}
								}
					if(fields[17]){//R
								'mods:description'(fields[17]){
									}
								}
							}
						}
					}

					if(fields[18]){//S
					'mods:name'('type':'personal') {
							'mods:namePart'(fields[18]){
							}
					if(fields[19]){//T
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[19]){
									}
								}
					if(fields[20]){//U
								'mods:description'(fields[20]){
									}
								}
							}
						}
					}

					if(fields[21]){//V
						'mods:genre'('authority':'aat',fields[21]){
						}
					}

					if(fields[22]){//W
						'mods:genre'('authority':'aat',fields[22]){
						}
					}

					if(fields[23]){//X
						'mods:genre'('authority':'aat',fields[23]){
						}
					}

					if(fields[24]){//Y
						'mods:genre'('authority':'aat',fields[24]){
						}
					}

					'mods:originInfo' {
						if(fields[25]){//Z
							'mods:publisher'(fields[25]){
								}
							}
						if(fields[26]){//AA
								'mods:dateCreated'(fields[26]){
							}
						}
						if(fields[27]){//AB
							'mods:dateCreated'('encoding':'iso8601',fields[27]){
							}
						}
					}

					if(fields[28]){//AC
						'mods:originInfo'('displayLabel':'Livingstone'){
							'mods:place' {
								'mods:placeTerm'('type':'text',fields[28]){
								}
							}
						}
					}

					if(fields[29]){//AD
						'mods:originInfo'('displayLabel':'LoC'){
							'mods:place' {
								'mods:placeTerm'('type':'text',fields[29]){
								}
							}
							if(fields[30]){//AE
								'mods:place' {
									'mods:placeTerm'('type':'text',fields[30]){
								}
							}
						}

							if(fields[31]){//AF
								'mods:place' {
									'mods:placeTerm'('type':'text',fields[31]){
									}
								}
							}
						}
					}

					if(fields[32]){//AG
						'mods:subject' {
							'mods:cartographics' {
								'mods:coordinates'(fields[32]){
								}
							}
						}
					}

					if(fields[33]){//AH
						'mods:subject' {
							'mods:cartographics' {
								'mods:coordinates'(fields[33]){
								}
							}
						}
					}

					if(fields[34]){//AI
						'mods:subject' {
							'mods:cartographics' {
								'mods:coordinates'(fields[34]){
								}
							}
						}
					}

					if(fields[35] || fields[36] || fields[37] || fields[38]){
					'mods:physicalDescription' {
						if(fields[35]){//AJ
							'mods:note'('type':'physical details',fields[35]){
							}
						}

						if(fields[36]){//AK
							'mods:extent'('unit':'pages',fields[36]){
							}
						}
						if(fields[37]){//AL
							'mods:note'(fields[37]){
							}
						}
						if(fields[38]){//AM
							'mods:extent'('unit':'mm',fields[38]){
								}
							}
						}
					}


					if(fields[40]){//AO
						'mods:relatedItem'('type':'original'){
						'mods:name'('type':'corporate','authorityURI':'http://id.loc.gov/authorities/names','valueURI':fields[40]){
								'mods:namePart'(fields[39]){
							}
							'mods:role' {
								'mods:roleTerm'('type':'text','authority':'marclerator',fields[42]){
							}
						}
					}

					if(fields[43]){//AR
						'mods:location' {
							'mods:shelfLocator'(fields[43]){
							}
						}
					}

					if(fields[44]){//AS
						'mods:accessCondition'('type':'use and reproduction',fields[44]) {
						}
					}

					if(fields[45]){//AT
						'mods:accessCondition'('type':'use and reproduction',fields[45]) {
						}
					}

					if(fields[46]){//AU
						'mods:accessCondition'('type':'use and reproduction',fields[46]) {
									}
								}
							}
						}


					if(fields[41]){//AP
						'mods:relatedItem'('type':'original'){
							'mods:name'('type':'corporate','authority':'local'){
								'mods:namePart'(fields[39]){
							}
							'mods:role' {
								'mods:roleTerm'('type':'text','authority':'marclerator',fields[42]){
							}
						}
					}

					if(fields[43]){//AR
						'mods:location' {
							'mods:shelfLocator'(fields[43]){
							}
						}
					}

					if(fields[44]){//AS
						'mods:accessCondition'('type':'use and reproduction',fields[44]) {
						}
					}

					if(fields[45]){//AT
						'mods:accessCondition'('type':'use and reproduction',fields[45]) {
						}
					}

					if(fields[46]){//AU
						'mods:accessCondition'('type':'use and reproduction',fields[46]) {
									}
								}
							}
						}


					if(fields[48]){//AW
						'mods:relatedItem'('type':'original'){
						'mods:name'('type':'corporate','authorityURI':'http://id.loc.gov/authorities/names','valueURI':fields[48]){
								'mods:namePart'(fields[47]){
							}
							'mods:role' {
								'mods:roleTerm'('type':'text','authority':'marclerator',fields[50]){
							}
						}
					}

					if(fields[51]){//AZ
						'mods:location' {
							'mods:shelfLocator'(fields[51]){
							}
						}
					}

					if(fields[52]){//BA
						'mods:accessCondition'('type':'use and reproduction',fields[52]) {
						}
					}

					if(fields[53]){//BB
						'mods:accessCondition'('type':'use and reproduction',fields[53]) {
						}
					}

					if(fields[54]){//BC
						'mods:accessCondition'('type':'use and reproduction',fields[54]) {
								}
							}
						}
					}

					if(fields[49]){//AX
						'mods:relatedItem'('type':'original'){
							'mods:name'('type':'corporate','authority':'local'){
								'mods:namePart'(fields[47]){
							}
							'mods:role' {
								'mods:roleTerm'('type':'text','authority':'marclerator',fields[50]){
							}
						}
					}

					if(fields[51]){//AZ
						'mods:location' {
							'mods:shelfLocator'(fields[51]){
							}
						}
					}

					if(fields[52]){//BA
						'mods:accessCondition'('type':'use and reproduction',fields[52]) {
						}
					}

					if(fields[53]){//BB
						'mods:accessCondition'('type':'use and reproduction',fields[53]) {
						}
					}

					if(fields[54]){//BC
						'mods:accessCondition'('type':'use and reproduction',fields[54]) {
								}
							}
						}
					}

					if(fields[55]){//BD
						'mods:identifier'('type':'local','displayLabel':'NLS copy identifier',fields[55]){
						}
					}

					if(fields[56]){//BE
						'mods:relatedItem'('type':'otherVersion'){
							'mods:identifier'(fields[56]){
							}
						}
					}

					if(fields[57]){//BF
						'mods:relatedItem'('type':'otherVersion'){
							'mods:identifier'(fields[57]){
							}
						}
					}

					if(fields[58]){//BG
						'mods:relatedItem'('type':'otherVersion'){
							'mods:identifier'(fields[58]){
							}
						}
					}

				}
			new File('Manuscript-MODS/'+fields[0]+'_MODS.xml') << writer.toString();
			//println writer.toString();
		}else{
			notfirstline = true;
		}
	}


