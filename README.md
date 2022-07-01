                             CCCC     EEEEE 
                            CC        EE
                            CC        EEEE     
                            CC        EE    
                             CCCC     EEEEE                                
                                           

                               
   Protein Structure Alignment by Incremental COMBINATORIAL EXTENSION of 
                           the Optimal Path.
                                                                       
                                                                          
                                                                          
               Authors:   Shindyalov I.N., Bourne P.E. 

                 e-mail:   {shindyal,bourne}@sdsc.edu

                  URL:   http://ce.sdsc.edu/ce.html	



 
Copyright (c)  1997-2001   The Regents of the University of California
All Rights Reserved
 
Permission to use, copy, modify and distribute any part of this CE
software for educational, research and non-profit purposes, without fee,
and without a written agreement is hereby granted, provided that the above
copyright notice, this paragraph and the following three paragraphs appear
in all copies.
 
Those desiring to incorporate this CE Software into commercial products
or use for commercial purposes should contact the Technology Transfer
Office, University of California, San Diego, 9500 Gilman Drive, La Jolla,
CA 92093-0910, Ph: (858) 534-5815, FAX: (858) 534-7345.
 
IN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY FOR
DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING
LOST PROFITS, ARISING OUT OF THE USE OF THIS CE SOFTWARE, EVEN IF THE
UNIVERSITY OF CALIFORNIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGE.
 
THE CE SOFTWARE PROVIDED HEREIN IS ON AN "AS IS" BASIS, AND THE
UNIVERSITY OF CALIFORNIA HAS NO OBLIGATION TO PROVIDE MAINTENANCE,
SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.  THE UNIVERSITY OF
CALIFORNIA MAKES NO REPRESENTATIONS AND EXTENDS NO WARRANTIES OF ANY KIND,
EITHER IMPLIED OR EXPRESS, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, OR THAT
THE USE OF THE CE SOFTWARE WILL NOT INFRINGE ANY PATENT, TRADEMARK OR
OTHER RIGHTS.

**************************************************************************

  How to compile and run the software.
  ------------------------------------


1. To compile CE software in this directory, use command:

```bash
$ gmake
```

  or

```bash
$ make
```


2. To run CE software:

```bash
$ mkdir -p scratch/
$ CE - pdb_file1 chain_id1 pdb_file2 chain_id2 scratch/
```

Note: '-' can be used for chain id1 and chain id2 for iterative comparison 
      of all chains parsed from the corresponding files.

3. Examples

```bash
$ mkdir -p scratch/
$ CE - 4hhb.pdb A 1hba.pdb B scratch
$ CE - 4hhb.pdb - 1hba.pdb - scratch
```

4. Interpreting results:

```
Structure Alignment Calculator, version 1.02, last modified: Mar 13, 2003.

CE Algorithm, version 1.00, 1998.

Chain 1: 4hhb.pdb:A (Size=141) 
Chain 2: 1hba.pdb:B (Size=146)

Alignment length = 139 Rmsd = 1.36A Z-Score = 6.5 Gaps = 8(5.8%) CPU = 0s Sequence identities = 43.2%

Chain 1:    1 VLSPADKTNVKAAWGKVGAHAGEYGAEALERMFLSFPTTKTYFPHFDL------SHGSAQVKGHGKKVAD
Chain 2:    2 HLTPEEKSAVTALWGKV--NVDEVGGEALGRLLVVYPRTQRFFESFGDLSTPDAVMGNPKVKAHGKKVLG

Chain 1:   65 ALTNAVAHVDDMPNALSALSDLHAHKLRVDPVNFKLLSHCLLVTLAAHLPAEFTPAVHASLDKFLASVST
Chain 2:   70 AFSDGLAHLDNLKGTFATLSELHCDKLHVDPENFRLLGNVLVCVLAHHFGKEFTPPVQAAYQKVVAGVAN

Chain 1:  135 VLTSKYR
Chain 2:  140 ALAHKYH

     X2 = ( 0.980144)*X1 + ( 0.023409)*Y1 + (-0.196902)*Z1 + (   -0.134999)
     Y2 = ( 0.023575)*X1 + (-0.999721)*Y1 + (-0.001503)*Z1 + (   -0.552679)
     Z2 = (-0.196883)*X1 + (-0.003169)*Y1 + (-0.980422)*Z1 + (    1.982153)
```
  
  Alignment length - number of aligned positions;

  Rmsd - root mean square deviation (in Angstroms) calculated for the 
	 best superposition;

  Z-Score - z-score from CE statistical model. Typical values:

            >4.5    - family level similarity;

            4.0-4.5 - superfamily level similarities, strong 
                      function related similarities or strong
                      recurring fold;

            3.7-4.0 - twilight zone where some similarities
                      of biological significance can be seen;

            <3.7    - similarities of low significance, but still 
                      some biologically important similarities 
                      can be revealed, but interpretation normally
                      requires additional evidence.                 

  Gaps - number of not aligned position within the alignment;

  CPU - computation time in seconds;

  Sequence identities - sequence identites for aligned positions;


Sequence alignment based on structure alignment is given followed by
transformation matrix based on structure superposition calculated for 
this alignment.

**************************************************************************

Reference:

Shindyalov I.N., Bourne P.E. Protein structure alignment by incremental 
combinatorial extension (CE) of the optimal path. Protein Engng, 1998, 9, 
739-747.



