# XSL Transformation for IOF Result xml into OEvent result csv

Provided XSL transforms the IOF Result xml into OEvent result csv format. Only a **subset of fields are transformed**: BibNumber, ControlCard, Surname, Firstname, Time, Status, Organisation id, Organisation name, Person nationality and Class id.
Other fields are left empty / default in csv.

## Usage
- use own local XSL tranformer with your result.xml file and provided iof2oevent.xsl as inputs
- or use one of many free online transformers (eg. http://xsltransform.net/), upload or copy/paste your result.xml and provided iof2oevent.xsl and run transformation
