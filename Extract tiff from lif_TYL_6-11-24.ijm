path = getDir("Choose a Directory");
Flist = getFileList(path);
print(path);

if (Flist.length==0)
     	print("No files in the folder");
  	else {
    
		for (k=0; k<Flist.length; k++)
			{
		    open(path+"/"+Flist[k]);
			
			list = getList("image.titles");
	
  			if (list.length==0)
     		print("No image windows are open");
  			else 
  				{
  				// Get Image Windows and Titles
     			print("Image windows:");
     			for (i=0; i<list.length; i++)
        		print("   "+list[i]);
        		
        		dir = getDir("Choose a Directory to Save the Images");
				print("dir");
				
				for (i = 0; i < list.length; i++)
					{
					T = getTitle();
					saveAs("Tiff", dir+"/"+T+".tiff");
					close();
					}
        		
  				}
			}
  		}

