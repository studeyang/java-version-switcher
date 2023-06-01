param ($javaVersion, $perm)

switch ($javaVersion) {
	"Java 1.2" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk1.2.2" }
	"Java 1.3" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk1.3.1_28" }
	"Java 1.4" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk1.4.2_19" }
	"Java 5" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk1.5.0_22" }
	"Java 6" { $env:JAVA_HOME = "C:\Program Files\Java\jdk1.6.0_45" }
	"Java 7" { $env:JAVA_HOME = "C:\Program Files\Java\jdk1.7.0_80" }
	"Java 8" { $env:JAVA_HOME = "D:\dev\Java\jdk1.8.0_211" }
	"Java 9" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-9.0.4" }
	"Java 10" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-10.0.2" }
	"Java 11" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-11.0.11" }
	"Java 12" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-12.0.2" }
	"Java 13" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-13.0.2" }
	"Java 14" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-14.0.2" }
	"Java 15" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-15.0.2" }
	"Java 16" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-16.0.2" }
	"Java 17" { $env:JAVA_HOME = "D:\dev\Java\jdk-17.0.2" }
	"Java 18" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-18" }
	"Java 19" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-19" }
	"Java 20" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-20" }
	"Java 21" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-21" }
}

if ($perm -eq "perm") {
  [Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)
}

$env:Path = $env:JAVA_HOME + '\bin;' + $env:Path

Write-Output "$javaVersion activated."
