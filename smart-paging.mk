##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=smart-paging
ConfigurationName      :=Debug
WorkspacePath          :=/Users/eddie/GitRepo/smart-paging
ProjectPath            :=/Users/eddie/GitRepo/smart-paging
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=皮艾迪
Date                   :=09/04/2019
CodeLitePath           :="/Users/eddie/Library/Application Support/CodeLite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="smart-paging.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)./src/include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/Applications/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/src_server.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_fadv.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_server.cpp$(ObjectSuffix): src/server.cpp $(IntermediateDirectory)/src_server.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/eddie/GitRepo/smart-paging/src/server.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_server.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_server.cpp$(DependSuffix): src/server.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_server.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_server.cpp$(DependSuffix) -MM src/server.cpp

$(IntermediateDirectory)/src_server.cpp$(PreprocessSuffix): src/server.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_server.cpp$(PreprocessSuffix) src/server.cpp

$(IntermediateDirectory)/src_fadv.cpp$(ObjectSuffix): src/fadv.cpp $(IntermediateDirectory)/src_fadv.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/eddie/GitRepo/smart-paging/src/fadv.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_fadv.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fadv.cpp$(DependSuffix): src/fadv.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_fadv.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fadv.cpp$(DependSuffix) -MM src/fadv.cpp

$(IntermediateDirectory)/src_fadv.cpp$(PreprocessSuffix): src/fadv.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fadv.cpp$(PreprocessSuffix) src/fadv.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


