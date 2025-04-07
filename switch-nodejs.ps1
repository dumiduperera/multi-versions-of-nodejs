$paths = [Environment]::GetEnvironmentVariable("PATH", "User")

echo "Before : " $paths
#node-v20.18.3-win-x86

# foreach ($path in $paths) {

   # if ($path -like "*node-v10*") 
   # {
	   # echo $path + "node"
   # } 
   # if ($path -like "*node-v20*") 
   # {
	   # echo $path + "node"
   # } 

# }

$updatedPaths = $paths

if ($paths -like "*node-v10.15.3-win-x64*") 
{
	echo "after : " $paths.Replace('node-v10.15.3-win-x64', 'node-v20.18.3-win-x86')
	$updatedPaths = $paths.Replace('node-v10.15.3-win-x64', 'node-v20.18.3-win-x86')
} 
if ($paths -like "*node-v20.18.3-win-x86*") 
{
	echo "after : " $paths.Replace('node-v20.18.3-win-x86', 'node-v10.15.3-win-x64')
	$updatedPaths = $paths.Replace('node-v20.18.3-win-x86', 'node-v10.15.3-win-x64')
} 


[Environment]::SetEnvironmentVariable("PATH", $updatedPaths, "User")