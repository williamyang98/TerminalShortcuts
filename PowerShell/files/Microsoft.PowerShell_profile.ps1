function Write-Git() {
    try {
        $branch = git rev-parse --abbrev-ref HEAD
        if ($branch -eq "HEAD") {
            $branch = git rev-parse --short HEAD
            Write-Host "($branch)" -ForegroundColor "red" -NoNewline
        } else {
            Write-Host "($branch)" -ForegroundColor "red" -NoNewline
        }
    } catch {
        Write-Host "(no branches yet)" -ForegroundColor "yellow" -NoNewline
    }
}

function prompt {
    $username = [System.Environment]::Username
    $curr_path = (Convert-Path $pwd).Replace((Convert-Path "~"), "~")

    Write-Host "$($username) " -ForegroundColor Green -NoNewline
    Write-Host "$($curr_path) " -ForegroundColor Blue -NoNewline
    if (Test-Path ".git") {
	Write-Git
    }
    Write-Host ""
    Write-Host ">" -ForegroundColor Red -NoNewline
    return " "
} 
