
import groovy.xml.MarkupBuilder;

def filename = "Illustrative-MODS-03.6.csv";


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
						'mods:titleInfo' {
							'mods:title'(fields[1]){
							}
						}
					}

					if(fields[2]){//C
						'mods:titleInfo'('type':'alternative'){
							'mods:title'(fields[2]){
							}
						}
					}


					if(fields[3]){//D
						'mods:note'(fields[3]){
							}
						}

					if(fields[4]){//E
					'mods:name'('type':'corporate','authority':'local') {
							'mods:namePart'(fields[4]){
							}
					if(fields[6]){//G
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[6]){
									}
								}
							}
						}
					}



					if(fields[5]){//F
					'mods:name'('type':'personal','authority':'local') {
							'mods:namePart'(fields[5]){
							}
					if(fields[6]){//G
						'mods:role' {
								'mods:roleTerm'('type':'text',fields[6]){
									}
								}
							}
						}
					}



					if(fields[7]){//H
						'mods:genre'('authority':'aat',fields[7]){
						}
					}

					if(fields[8]){//I
							'mods:physicalDescription'{
							'mods:note'(fields[8]){
							}
						}
					}

					'mods:originInfo' {
						if(fields[9]){//J
								'mods:dateCreated'(fields[9]){
							}
						}
						if(fields[10]){//K
							'mods:dateCreated'('encoding':'iso8601',fields[10]){
							}
						}
						if(fields[11]){//L
							'mods:publisher'(fields[11]){
							}
						}
					}

					if(fields[12]){//M
						'mods:relatedItem'('type':'original'){
						'mods:name'('type':'corporate','authorityURI':'http://id.loc.gov/authorities/names','valueURI':fields[13]){
								'mods:namePart'(fields[12]){
								}
							'mods:role' {
								'mods:roleTerm'('type':'text','authority':'marclerator',fields[14]){
									}
								}
							}
						}
					}
					if(fields[15]){//N
						'mods:accessCondition'('type':'use and reproduction',fields[15]) {
								}
							}

				}
			new File('Illustrative-MODS/'+fields[0]+'_MODS.xml') << writer.toString();
			//println writer.toString();
		}else{
			notfirstline = true;
		}
	}


