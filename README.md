# terraform-tag-catagory-bug

to reproduce the bug:
1. run ```terraform init```
2. run ```terraform apply```
3. modify ```cardinality``` to ```"MULTIPLE"``` in ```./tags.tf```
4. run ```terraform apply```
