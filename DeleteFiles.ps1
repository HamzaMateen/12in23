param(
    [string[]]$ExtensionsToKeep,
    [string]$StartDirectory
)

function Delete-Files {
    param(
        [string]$Path
    )

    # Get all files in the current directory
    $files = Get-ChildItem -Path $Path -File

    # Filter out files with extensions to keep
    $filesToDelete = $files | Where-Object { $ExtensionsToKeep -notcontains $_.Extension }

    # Delete files
    foreach ($file in $filesToDelete) {
        Remove-Item -Path $file.FullName
    }

    # Get all directories in the current directory
    $directories = Get-ChildItem -Path $Path -Directory

    # Recursively call function on each subdirectory
    foreach ($directory in $directories) {
        if ((Get-ChildItem -Path $directory.FullName | Measure-Object).Count -eq 0) {
            Remove-Item -Recurse -Force -Path $directory.FullName
        } else {
            Delete-Files -Path $directory.FullName
        }
        
    }
}

Delete-Files -Path $StartDirectory
param(
    [string[]]$ExtensionsToKeep,
    [string]$StartDirectory
)

function Delete-Files {
    param(
        [string]$Path
    )

    # Get all files in the current directory
    $files = Get-ChildItem -Path $Path -File

    # Filter out files with extensions to keep
    $filesToDelete = $files | Where-Object { $ExtensionsToKeep -notcontains $_.Extension }

    # Delete files
    foreach ($file in $filesToDelete) {
        Remove-Item -Path $file.FullName
    }

    # Get all directories in the current directory
    $directories = Get-ChildItem -Path $Path -Directory

    # Recursively call function on each subdirectory
    foreach ($directory in $directories) {
        if ((Get-ChildItem -Path $directory.FullName | Measure-Object).Count -eq 0) {
            Remove-Item -Recurse -Force -Path $directory.FullName
        } else {
            Delete-Files -Path $directory.FullName
        }
        
    }
}

Delete-Files -Path $StartDirectory