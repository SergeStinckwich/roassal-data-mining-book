

##II\. Datasets, Import and Export

From inside Pharo, Roassal can take in entry different kind of datas, depending on the builder used\. Simple data structures like collections or complexe dataset structures\. For example, a RTBoxPlotDataSet will take a collection while the RTGrapher will take the RTBoxPlotDataSet itself\. We will discuss the complex structure datasets that Roassal offers in the coming chapters\.

The challenge here will most likely be to bring the datas inside Pharo before modulate them as will\.



###II\.1\. Import from CSV

The Roassal class RTTabTable is made to work with CSV file content\. Let's assume that we dispose of a "data\.csv" file in the workdirectory of or Pharo image, with the following content:



```smalltalk
names,henry,paul,bob,michel,john,ramirez
age,15,65,33,68,24,45
taille,1.6,1.7,1.8,1.5,1.8,1.6
```



The first step is to import the content of the file in the workspace:     


```smalltalk
'data.csv' asFileReference contents
```



Then we create an instance of RTTabTable then send it the message \#input:usingDelimiter:, knowing or separators are comas:


```smalltalk
tab := RTTabTable new input: 'data.csv' asFileReference contents usingDelimiter: $, .
```


&nbsp;<p class="note">more than one delimiter can be defined sending \#input:usingDelimiters:\.  </p>
At this point or datas are imported in Pharo and perfectly usable \! Let's verify now the content of or RTTabtable instance by inspecting "tab" or simply printing each of this line:


```smalltalk
tab numberOfRows.
tab numberOfColumns.
```


We should obtain 3 and 7\. Note that by inspecting


```smalltalk
tab values
```


we see that or structure is just 3 arrays of values for 3 rows\.

We can also import the csv file from an URL\. In that case:


```smalltalk
tab := RTTabTable new input: 'http://bl.ocks.org/mbostock/raw/4063318/dji.csv' asUrl retrieveContents usingDelimiter: $, .
```





###II\.2\. Export to CSV

&nbsp;<p class="todo">Create \#RTTabTable>>exportTo:usingDelimiter:</p>


###II\.3\. Import via SQLite3

It exist other pharo packages, external from Roassal, to import datas into Pharo\. Here is an example with the NBSQLite3 package to import \.db files and extarct a perfectly usable content for Roassal\.

&nbsp;<p class="todo">a complete example ? Reference other Sources \(more complex installation, specially Linux\)?</p>
&nbsp;<p class="todo">Other formats like SAS, ODBC, XLS ?</p>





