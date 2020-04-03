" Vim syntax file
" Language:      Igor Pro
" Maintainer:    Thomas Braun <thomas.braun at byte-physics dot de>
" Last Modified: XXX
" Filetype:      *.ipf
" Remark:        Based on the original version by Peter Li <peterli@spam.eriifiic.salk.edu>

" TODO note operation vs note function

" Loaded XOPs
"
" - AxonTelegraph
" - HDF Loader
" - HDF5
" - ITCXOP2
" - IgorGIS
" - MatrixFileReader
" - MultiClamp700xCommander
" - NIDAQmx
" - NIGPIB2
" - NILoadWave
" - NetCDF
" - SQL
" - TDM
" - Tango_binding
" - VDT2
" - VISA
"
" The list of functions and operations has been generated by:
" ###########################################################
" Function gatherDataForVim()
"
" 	string opList   = SortList(OperationList("*",";",""))
" 	string funcList = SortList(FunctionList("*",";","KIND:5"))
"
" 	print "\" Operations {{{"
" 	OutputVimList("syn keyword igorOperation", opList)
" 	print "\" }}}"
" 	print "\r"
" 	print "\" Functions {{{"
" 	OutputVimList("syn keyword igorFunction", funcList)
" 	print "\" }}}"
" End
"
" Function OutputVimList(prefix,list)
" 	string list, prefix
"
" 	variable numItems = ItemsInList(list,";")
"
" 	string str = prefix
" 	string item
"
" 	variable i
" 	for(i=0; i < numItems; i+=1)
" 		item = StringFromList(i,list)
"
" 		if( strlen(item) <= 1) // skip single character items
" 			continue
" 		endif
"
" 		if( (strlen(str) + strlen(item) + 1) > 80)
" 			print str
" 			str = prefix
" 		endif
" 		str += " " + item
" 	endfor
"
" 	print str
" End
" ###########################################################

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" Operations {{{
syn keyword igorOperation APMath Abort AddFIFOData AddFIFOVectData AddMovieAudio
syn keyword igorOperation AddMovieFrame AddWavesToBoxPlot AddWavesToViolinPlot
syn keyword igorOperation AdoptFiles Append AppendBoxPlot AppendImage
syn keyword igorOperation AppendLayoutObject AppendMatrixContour AppendText
syn keyword igorOperation AppendToGizmo AppendToGraph AppendToLayout
syn keyword igorOperation AppendToTable AppendViolinPlot AppendXYZContour
syn keyword igorOperation AutoPositionWindow AxonTelegraphFindServers
syn keyword igorOperation BackgroundInfo Beep BoundingBall BoxSmooth BrowseURL
syn keyword igorOperation BuildMenu Button CWT Chart CheckBox CheckDisplayed
syn keyword igorOperation ChooseColor Close CloseHelp CloseMovie CloseProc
syn keyword igorOperation ColorScale ColorTab2Wave Concatenate ControlBar
syn keyword igorOperation ControlInfo ControlUpdate
syn keyword igorOperation ConvertGlobalStringTextEncoding ConvexHull Convolve
syn keyword igorOperation CopyDimLabels CopyFile CopyFolder CopyScales Correlate
syn keyword igorOperation CreateAliasShortcut CreateBrowser Cross CtrlBackground
syn keyword igorOperation CtrlFIFO CtrlNamedBackground Cursor CurveFit
syn keyword igorOperation CustomControl DAQmx_AI_SetupReader DAQmx_AO_SetOutputs
syn keyword igorOperation DAQmx_CTR_CountEdges DAQmx_CTR_OutputPulse
syn keyword igorOperation DAQmx_CTR_Period DAQmx_CTR_PulseWidth DAQmx_DIO_Config
syn keyword igorOperation DAQmx_DIO_WriteNewData DAQmx_Scan DAQmx_WaveformGen
syn keyword igorOperation DPSS DSPDetrend DSPPeriodogram DWT Debugger
syn keyword igorOperation DebuggerOptions DefaultFont DefaultGuiControls
syn keyword igorOperation DefaultGuiFont DefaultTextEncoding DefineGuide
syn keyword igorOperation DelayUpdate DeleteAnnotations DeleteFile DeleteFolder
syn keyword igorOperation DeletePoints Differentiate Display DisplayHelpTopic
syn keyword igorOperation DisplayProcedure DoAlert DoIgorMenu DoUpdate DoWindow
syn keyword igorOperation DoXOPIdle DrawAction DrawArc DrawBezier DrawLine
syn keyword igorOperation DrawOval DrawPICT DrawPoly DrawRRect DrawRect DrawText
syn keyword igorOperation DrawUserShape Duplicate DuplicateDataFolder EdgeStats
syn keyword igorOperation Edit ErrorBars EstimatePeakSizes Execute
syn keyword igorOperation ExecuteScriptText ExperimentInfo ExperimentModified
syn keyword igorOperation ExportGizmo Extract FBinRead FBinWrite FFT FGetPos
syn keyword igorOperation FIFO2Wave FIFOStatus FMaxFlat FPClustering FReadLine
syn keyword igorOperation FSetPos FStatus FTPCreateDirectory FTPDelete
syn keyword igorOperation FTPDownload FTPUpload FastGaussTransform FastOp
syn keyword igorOperation FilterFIR FilterIIR FindAPeak FindContour
syn keyword igorOperation FindDuplicates FindLevel FindLevels FindPeak
syn keyword igorOperation FindPointsInPoly FindRoots FindSequence FindValue
syn keyword igorOperation FuncFit FuncFitMD GBLoadWave GISCreateVectorLayer
syn keyword igorOperation GISGetRasterInfo GISGetRegisteredFileInfo
syn keyword igorOperation GISGetVectorLayerInfo GISLoadRasterData
syn keyword igorOperation GISLoadVectorData GISRasterizeVectorData
syn keyword igorOperation GISRegisterFile GISTransformCoords GISUnRegisterFile
syn keyword igorOperation GISWriteFieldData GISWriteGeometryData GISWriteRaster
syn keyword igorOperation GPIB2 GPIBRead2 GPIBReadBinary2 GPIBReadBinaryWave2
syn keyword igorOperation GPIBReadWave2 GPIBWrite2 GPIBWriteBinary2
syn keyword igorOperation GPIBWriteBinaryWave2 GPIBWriteWave2 GetAxis GetCamera
syn keyword igorOperation GetFileFolderInfo GetGizmo GetLastUserMenuInfo
syn keyword igorOperation GetMarquee GetMouse GetSelection GetWindow GraphNormal
syn keyword igorOperation GraphWaveDraw GraphWaveEdit Grep GroupBox
syn keyword igorOperation HDF5CloseFile HDF5CloseGroup HDF5ConvertColors
syn keyword igorOperation HDF5CreateFile HDF5CreateGroup HDF5CreateLink HDF5Dump
syn keyword igorOperation HDF5DumpErrors HDF5DumpState HDF5FlushFile
syn keyword igorOperation HDF5ListAttributes HDF5ListGroup HDF5LoadData
syn keyword igorOperation HDF5LoadGroup HDF5LoadImage HDF5OpenFile HDF5OpenGroup
syn keyword igorOperation HDF5SaveData HDF5SaveGroup HDF5SaveImage
syn keyword igorOperation HDF5TestOperation HDF5UnlinkObject HDFInfo
syn keyword igorOperation HDFReadImage HDFReadSDS HDFReadVset Hanning
syn keyword igorOperation HideIgorMenus HideInfo HideProcedures HideTools
syn keyword igorOperation HilbertTransform Histogram ICA IFFT ITCCloseAll2
syn keyword igorOperation ITCCloseDevice2 ITCConfigAllChannels2
syn keyword igorOperation ITCConfigChannel2 ITCConfigChannelReset2
syn keyword igorOperation ITCConfigChannelUpload2 ITCFIFOAvailable2
syn keyword igorOperation ITCFIFOAvailableAll2 ITCGetAllChannelsConfig2
syn keyword igorOperation ITCGetChannelConfig2 ITCGetCurrentDevice2
syn keyword igorOperation ITCGetDeviceInfo2 ITCGetDevices2 ITCGetErrorString2
syn keyword igorOperation ITCGetSerialNumber2 ITCGetState2 ITCGetVersions2
syn keyword igorOperation ITCInitialize2 ITCOpenDevice2 ITCReadADC2
syn keyword igorOperation ITCReadDigital2 ITCReadTimer2 ITCSelectDevice2
syn keyword igorOperation ITCSetDAC2 ITCSetGlobals2 ITCSetModes2 ITCSetState2
syn keyword igorOperation ITCStartAcq2 ITCStopAcq2 ITCUpdateFIFOPosition2
syn keyword igorOperation ITCUpdateFIFOPositionAll2 ITCWriteDigital2
syn keyword igorOperation ImageAnalyzeParticles ImageBlend ImageBoundaryToMask
syn keyword igorOperation ImageComposite ImageEdgeDetection ImageFileInfo
syn keyword igorOperation ImageFilter ImageFocus ImageFromXYZ ImageGLCM
syn keyword igorOperation ImageGenerateROIMask ImageHistModification
syn keyword igorOperation ImageHistogram ImageInterpolate ImageLineProfile
syn keyword igorOperation ImageLoad ImageMorphology ImageRegistration
syn keyword igorOperation ImageRemoveBackground ImageRestore ImageRotate
syn keyword igorOperation ImageSave ImageSeedFill ImageSkeleton3d ImageSnake
syn keyword igorOperation ImageStats ImageThreshold ImageTransform
syn keyword igorOperation ImageUnwrapPhase ImageWindow IndexSort InsertPoints
syn keyword igorOperation Integrate Integrate2D IntegrateODE Interp3DPath
syn keyword igorOperation Interpolate2 Interpolate3D JCAMPLoadWave
syn keyword igorOperation JointHistogram KMeans KillBackground KillControl
syn keyword igorOperation KillDataFolder KillFIFO KillFreeAxis KillPICTs
syn keyword igorOperation KillPath KillStrings KillVariables KillWaves
syn keyword igorOperation KillWindow Label Layout LayoutPageAction
syn keyword igorOperation LayoutSlideShow Legend LinearFeedbackShiftRegister
syn keyword igorOperation ListBox LoadData LoadPICT LoadPackagePreferences
syn keyword igorOperation LoadWave Loess LombPeriodogram MCC_FindServers
syn keyword igorOperation MFR_CheckForNewBricklets MFR_CloseResultFile
syn keyword igorOperation MFR_CreateOverviewTable MFR_GetBrickletCount
syn keyword igorOperation MFR_GetBrickletData MFR_GetBrickletDeployData
syn keyword igorOperation MFR_GetBrickletMetaData MFR_GetBrickletRawData
syn keyword igorOperation MFR_GetReportTemplate MFR_GetResultFileMetaData
syn keyword igorOperation MFR_GetResultFileName MFR_GetVernissageVersion
syn keyword igorOperation MFR_GetVersion MFR_GetXOPErrorMessage
syn keyword igorOperation MFR_OpenResultFile
syn keyword igorOperation MLLoadWave Make MakeIndex MarkPerfTestTime
syn keyword igorOperation MatrixConvolve MatrixCorr MatrixEigenV MatrixFilter
syn keyword igorOperation MatrixGLM MatrixGaussJ MatrixInverse MatrixLLS
syn keyword igorOperation MatrixLUBkSub MatrixLUD MatrixLUDTD MatrixLinearSolve
syn keyword igorOperation MatrixLinearSolveTD MatrixMultiply MatrixOP
syn keyword igorOperation MatrixSVBkSub MatrixSVD MatrixSchur MatrixSolve
syn keyword igorOperation MatrixTranspose MeasureStyledText Modify ModifyBoxPlot
syn keyword igorOperation ModifyBrowser ModifyCamera ModifyContour ModifyControl
syn keyword igorOperation ModifyControlList ModifyFreeAxis ModifyGizmo
syn keyword igorOperation ModifyGraph ModifyImage ModifyLayout ModifyPanel
syn keyword igorOperation ModifyTable ModifyViolinPlot ModifyWaterfall
syn keyword igorOperation MoveDataFolder MoveFile MoveFolder MoveString
syn keyword igorOperation MoveSubwindow MoveVariable MoveWave MoveWindow
syn keyword igorOperation MultiTaperPSD MultiThreadingControl NC_CloseFile
syn keyword igorOperation NC_DumpErrors NC_Inquire NC_ListAttributes
syn keyword igorOperation NC_ListObjects NC_LoadData NC_OpenFile NI4882
syn keyword igorOperation NILoadWave NeuralNetworkRun NeuralNetworkTrain
syn keyword igorOperation NewCamera NewDataFolder NewFIFO NewFIFOChan
syn keyword igorOperation NewFreeAxis NewGizmo NewImage NewLayout NewMovie
syn keyword igorOperation NewNotebook NewPanel NewPath NewWaterfall Note
syn keyword igorOperation Notebook NotebookAction Open OpenHelp OpenNotebook
syn keyword igorOperation Optimize PCA ParseOperationTemplate PathInfo
syn keyword igorOperation PauseForUser PauseUpdate PlayMovie PlayMovieAction
syn keyword igorOperation PlaySound PopupContextualMenu PopupMenu Preferences
syn keyword igorOperation PrimeFactors Print PrintGraphs PrintLayout
syn keyword igorOperation PrintNotebook PrintSettings PrintTable Project
syn keyword igorOperation PulseStats PutScrapText Quit RatioFromNumber
syn keyword igorOperation Redimension Remez Remove RemoveContour RemoveFromGizmo
syn keyword igorOperation RemoveFromGraph RemoveFromLayout RemoveFromTable
syn keyword igorOperation RemoveImage RemoveLayoutObjects RemovePath Rename
syn keyword igorOperation RenameDataFolder RenamePICT RenamePath RenameWindow
syn keyword igorOperation ReorderImages ReorderTraces ReplaceText ReplaceWave
syn keyword igorOperation Resample ResumeUpdate Reverse Rotate SQLHighLevelOp
syn keyword igorOperation STFT Save SaveData SaveExperiment SaveGizmoCopy
syn keyword igorOperation SaveGraphCopy SaveNotebook SavePICT
syn keyword igorOperation SavePackagePreferences SaveTableCopy
syn keyword igorOperation SetActiveSubwindow SetAxis SetBackground
syn keyword igorOperation SetDashPattern SetDataFolder SetDimLabel SetDrawEnv
syn keyword igorOperation SetDrawLayer SetFileFolderInfo SetFormula
syn keyword igorOperation SetIdlePeriod SetIgorHook SetIgorMenuMode
syn keyword igorOperation SetIgorOption SetMarquee SetProcessSleep SetRandomSeed
syn keyword igorOperation SetScale SetVariable SetWaveLock SetWaveTextEncoding
syn keyword igorOperation SetWindow ShowIgorMenus ShowInfo ShowTools Silent
syn keyword igorOperation Sleep Slider Smooth SmoothCustom Sort SortColumns
syn keyword igorOperation SoundInRecord SoundInSet SoundInStartChart
syn keyword igorOperation SoundInStatus SoundInStopChart SoundLoadWave
syn keyword igorOperation SoundSaveWave SphericalInterpolate
syn keyword igorOperation SphericalTriangulate SplitString SplitWave Stack
syn keyword igorOperation StackWindows StatsANOVA1Test StatsANOVA2NRTest
syn keyword igorOperation StatsANOVA2RMTest StatsANOVA2Test
syn keyword igorOperation StatsAngularDistanceTest StatsChiTest
syn keyword igorOperation StatsCircularCorrelationTest StatsCircularMeans
syn keyword igorOperation StatsCircularMoments StatsCircularTwoSampleTest
syn keyword igorOperation StatsCochranTest StatsContingencyTable StatsDIPTest
syn keyword igorOperation StatsDunnettTest StatsFTest StatsFriedmanTest
syn keyword igorOperation StatsHodgesAjneTest StatsJBTest StatsKDE StatsKSTest
syn keyword igorOperation StatsKWTest StatsKendallTauTest
syn keyword igorOperation StatsLinearCorrelationTest StatsLinearRegression
syn keyword igorOperation StatsMultiCorrelationTest StatsNPMCTest
syn keyword igorOperation StatsNPNominalSRTest StatsQuantiles
syn keyword igorOperation StatsRankCorrelationTest StatsResample StatsSRTest
syn keyword igorOperation StatsSample StatsScheffeTest StatsShapiroWilkTest
syn keyword igorOperation StatsSignTest StatsTTest StatsTukeyTest
syn keyword igorOperation StatsVariancesTest StatsWRCorrelationTest
syn keyword igorOperation StatsWatsonUSquaredTest StatsWatsonWilliamsTest
syn keyword igorOperation StatsWheelerWatsonTest StatsWilcoxonRankTest String
syn keyword igorOperation StructFill StructGet StructPut SumDimension SumSeries
syn keyword igorOperation TDMLoadData TDMSaveData TabControl Tag TextBox
syn keyword igorOperation ThreadGroupPutDF ThreadStart TickWavesFromAxis Tile
syn keyword igorOperation TileWindows TitleBox ToCommandLine ToolsGrid
syn keyword igorOperation Triangulate3d URLRequest Unwrap VDT2 VDTClosePort2
syn keyword igorOperation VDTGetPortList2 VDTGetStatus2 VDTOpenPort2
syn keyword igorOperation VDTOperationsPort2 VDTRead2 VDTReadBinary2
syn keyword igorOperation VDTReadBinaryWave2 VDTReadHex2 VDTReadHexWave2
syn keyword igorOperation VDTReadWave2 VDTTerminalPort2 VDTWrite2
syn keyword igorOperation VDTWriteBinary2 VDTWriteBinaryWave2 VDTWriteHex2
syn keyword igorOperation VDTWriteHexWave2 VDTWriteWave2 VISAControl VISARead
syn keyword igorOperation VISAReadBinary VISAReadBinaryWave VISAReadWave
syn keyword igorOperation VISAWrite VISAWriteBinary VISAWriteBinaryWave
syn keyword igorOperation VISAWriteWave ValDisplay Variable WaveMeanStdv
syn keyword igorOperation WaveStats WaveTransform WignerTransform WindowFunction
syn keyword igorOperation XLLoadWave cd dir fprintf printf pwd sprintf sscanf
syn keyword igorOperation wfprintf
" }}}

" Functions {{{
syn keyword igorFunction AddListItem AiryA AiryAD AiryB AiryBD AnnotationInfo
syn keyword igorFunction AnnotationList AxisInfo AxisList AxisValFromPixel
syn keyword igorFunction AxonTelegraphAGetDataNum AxonTelegraphAGetDataString
syn keyword igorFunction AxonTelegraphAGetDataStruct AxonTelegraphGetDataNum
syn keyword igorFunction AxonTelegraphGetDataString AxonTelegraphGetDataStruct
syn keyword igorFunction AxonTelegraphGetTimeoutMs AxonTelegraphSetTimeoutMs
syn keyword igorFunction Base64Decode Base64Encode Besseli Besselj Besselk
syn keyword igorFunction Bessely BinarySearch BinarySearchInterp CTabList
syn keyword igorFunction CaptureHistory CaptureHistoryStart CheckName
syn keyword igorFunction ChildWindowList CleanupName ContourInfo ContourNameList
syn keyword igorFunction ContourNameToWaveRef ContourZ ControlNameList
syn keyword igorFunction ConvertTextEncoding CountObjects CountObjectsDFR
syn keyword igorFunction CreationDate CsrInfo CsrWave CsrWaveRef CsrXWave
syn keyword igorFunction CsrXWaveRef DataFolderDir DataFolderExists
syn keyword igorFunction DataFolderRefStatus DataFolderRefsEqual DateToJulian
syn keyword igorFunction Dawson DimDelta DimOffset DimSize Faddeeva FetchURL
syn keyword igorFunction FindDimLabel FindListItem FontList FontSizeHeight
syn keyword igorFunction FontSizeStringWidth FresnelCos FresnelSin FuncRefInfo
syn keyword igorFunction FunctionInfo FunctionList FunctionPath
syn keyword igorFunction GISGetAllFileFormats GISSRefsAreEqual Gauss Gauss1D
syn keyword igorFunction Gauss2D GetBrowserLine GetBrowserSelection
syn keyword igorFunction GetDataFolder GetDataFolderDFR GetDefaultFont
syn keyword igorFunction GetDefaultFontSize GetDefaultFontStyle GetDimLabel
syn keyword igorFunction GetEnvironmentVariable GetErrMessage GetFormula
syn keyword igorFunction GetIndependentModuleName GetIndexedObjName
syn keyword igorFunction GetIndexedObjNameDFR GetKeyState GetRTErrMessage
syn keyword igorFunction GetRTError GetRTLocInfo GetRTLocation GetRTStackInfo
syn keyword igorFunction GetScrapText GetUserData GetWavesDataFolder
syn keyword igorFunction GetWavesDataFolderDFR GizmoInfo GizmoScale GrepList
syn keyword igorFunction GrepString GuideInfo GuideNameList HDF5AttributeInfo
syn keyword igorFunction HDF5DatasetInfo HDF5LibraryInfo HDF5TypeInfo Hash
syn keyword igorFunction HyperG0F1 HyperG1F1 HyperG2F1 HyperGNoise HyperGPFQ
syn keyword igorFunction IgorInfo IgorVersion ImageInfo ImageNameList
syn keyword igorFunction ImageNameToWaveRef IndependentModuleList IndexToScale
syn keyword igorFunction IndexedDir IndexedFile Inf Integrate1D Interp2D
syn keyword igorFunction Interp3D ItemsInList JacobiCn JacobiSn JulianToDate
syn keyword igorFunction Laguerre LaguerreA LaguerreGauss LambertW LayoutInfo
syn keyword igorFunction LegendreA ListMatch ListToTextWave ListToWaveRefWave
syn keyword igorFunction LowerStr MCC_AutoBridgeBal MCC_AutoFastComp
syn keyword igorFunction MCC_AutoPipetteOffset MCC_AutoSlowComp
syn keyword igorFunction MCC_AutoWholeCellComp MCC_GetBridgeBalEnable
syn keyword igorFunction MCC_GetBridgeBalResist MCC_GetFastCompCap
syn keyword igorFunction MCC_GetFastCompTau MCC_GetHolding MCC_GetHoldingEnable
syn keyword igorFunction MCC_GetMode MCC_GetNeutralizationCap
syn keyword igorFunction MCC_GetNeutralizationEnable MCC_GetOscKillerEnable
syn keyword igorFunction MCC_GetPipetteOffset MCC_GetPrimarySignalGain
syn keyword igorFunction MCC_GetPrimarySignalHPF MCC_GetPrimarySignalLPF
syn keyword igorFunction MCC_GetRsCompBandwidth MCC_GetRsCompCorrection
syn keyword igorFunction MCC_GetRsCompEnable MCC_GetRsCompPrediction
syn keyword igorFunction MCC_GetSecondarySignalGain MCC_GetSecondarySignalLPF
syn keyword igorFunction MCC_GetSlowCompCap MCC_GetSlowCompTau
syn keyword igorFunction MCC_GetSlowCompTauX20Enable MCC_GetSlowCurrentInjEnable
syn keyword igorFunction MCC_GetSlowCurrentInjLevel
syn keyword igorFunction MCC_GetSlowCurrentInjSetlTime MCC_GetWholeCellCompCap
syn keyword igorFunction MCC_GetWholeCellCompEnable MCC_GetWholeCellCompResist
syn keyword igorFunction MCC_SelectMultiClamp700B MCC_SetBridgeBalEnable
syn keyword igorFunction MCC_SetBridgeBalResist MCC_SetFastCompCap
syn keyword igorFunction MCC_SetFastCompTau MCC_SetHolding MCC_SetHoldingEnable
syn keyword igorFunction MCC_SetMode MCC_SetNeutralizationCap
syn keyword igorFunction MCC_SetNeutralizationEnable MCC_SetOscKillerEnable
syn keyword igorFunction MCC_SetPipetteOffset MCC_SetPrimarySignalGain
syn keyword igorFunction MCC_SetPrimarySignalHPF MCC_SetPrimarySignalLPF
syn keyword igorFunction MCC_SetRsCompBandwidth MCC_SetRsCompCorrection
syn keyword igorFunction MCC_SetRsCompEnable MCC_SetRsCompPrediction
syn keyword igorFunction MCC_SetSecondarySignalGain MCC_SetSecondarySignalLPF
syn keyword igorFunction MCC_SetSlowCompCap MCC_SetSlowCompTau
syn keyword igorFunction MCC_SetSlowCompTauX20Enable MCC_SetSlowCurrentInjEnable
syn keyword igorFunction MCC_SetSlowCurrentInjLevel
syn keyword igorFunction MCC_SetSlowCurrentInjSetlTime MCC_SetTimeoutMs
syn keyword igorFunction MCC_SetWholeCellCompCap MCC_SetWholeCellCompEnable
syn keyword igorFunction MCC_SetWholeCellCompResist MPFXEMGPeak
syn keyword igorFunction MPFXExpConvExpPeak MPFXGaussPeak MPFXLorenzianPeak
syn keyword igorFunction MPFXVoigtPeak MacroList MandelbrotPoint MarcumQ
syn keyword igorFunction MatrixCondition MatrixDet MatrixDot MatrixRank
syn keyword igorFunction MatrixTrace ModDate NVAR_Exists NaN NameOfWave
syn keyword igorFunction NewFreeDataFolder NewFreeWave NormalizeUnicode
syn keyword igorFunction NumVarOrDefault NumberByKey OperationList PICTInfo
syn keyword igorFunction PICTList PadString PanelResolution ParamIsDefault
syn keyword igorFunction ParseFilePath PathList Pi PixelFromAxisVal PolygonArea
syn keyword igorFunction PossiblyQuoteName ProcedureText RemoveByKey
syn keyword igorFunction RemoveEnding RemoveFromList RemoveListItem
syn keyword igorFunction ReplaceNumberByKey ReplaceString ReplaceStringByKey
syn keyword igorFunction SQL2DBinaryWaveToTextWave SQLAllocHandle SQLAllocStmt
syn keyword igorFunction SQLBinaryWavesToTextWave SQLBindCol SQLBindParameter
syn keyword igorFunction SQLBrowseConnect SQLBulkOperations SQLCancel
syn keyword igorFunction SQLCloseCursor SQLColAttributeNum SQLColAttributeStr
syn keyword igorFunction SQLColumnPrivileges SQLColumns SQLConnect
syn keyword igorFunction SQLDataSources SQLDescribeCol SQLDescribeParam
syn keyword igorFunction SQLDisconnect SQLDriverConnect SQLDrivers SQLEndTran
syn keyword igorFunction SQLError SQLExecDirect SQLExecute SQLFetch
syn keyword igorFunction SQLFetchScroll SQLForeignKeys SQLFreeConnect SQLFreeEnv
syn keyword igorFunction SQLFreeHandle SQLFreeStmt SQLGetConnectAttrNum
syn keyword igorFunction SQLGetConnectAttrStr SQLGetCursorName SQLGetDataNum
syn keyword igorFunction SQLGetDataStr SQLGetDescFieldNum SQLGetDescFieldStr
syn keyword igorFunction SQLGetDescRec SQLGetDiagFieldNum SQLGetDiagFieldStr
syn keyword igorFunction SQLGetDiagRec SQLGetEnvAttrNum SQLGetEnvAttrStr
syn keyword igorFunction SQLGetFunctions SQLGetInfoNum SQLGetInfoStr
syn keyword igorFunction SQLGetStmtAttrNum SQLGetStmtAttrStr SQLGetTypeInfo
syn keyword igorFunction SQLMoreResults SQLNativeSql SQLNumParams
syn keyword igorFunction SQLNumResultCols SQLNumResultRowsIfKnown
syn keyword igorFunction SQLNumRowsFetched SQLParamData SQLPrepare
syn keyword igorFunction SQLPrimaryKeys SQLProcedureColumns SQLProcedures
syn keyword igorFunction SQLPutData SQLReinitialize SQLRowCount
syn keyword igorFunction SQLSetConnectAttrNum SQLSetConnectAttrStr
syn keyword igorFunction SQLSetCursorName SQLSetDescFieldNum SQLSetDescFieldStr
syn keyword igorFunction SQLSetDescRec SQLSetEnvAttrNum SQLSetEnvAttrStr
syn keyword igorFunction SQLSetPos SQLSetStmtAttrNum SQLSetStmtAttrStr
syn keyword igorFunction SQLSpecialColumns SQLStatistics SQLTablePrivileges
syn keyword igorFunction SQLTables SQLTextWaveTo2DBinaryWave
syn keyword igorFunction SQLTextWaveToBinaryWaves SQLUpdateBoundValues
syn keyword igorFunction SQLXOPCheckState SVAR_Exists ScreenResolution Secs2Date
syn keyword igorFunction Secs2Time SelectNumber SelectString
syn keyword igorFunction SetEnvironmentVariable SortList SpecialCharacterInfo
syn keyword igorFunction SpecialCharacterList SpecialDirPath SphericalBessJ
syn keyword igorFunction SphericalBessJD SphericalBessY SphericalBessYD
syn keyword igorFunction SphericalHarmonics StartMSTimer StatsBetaCDF
syn keyword igorFunction StatsBetaPDF StatsBinomialCDF StatsBinomialPDF
syn keyword igorFunction StatsCMSSDCDF StatsCauchyCDF StatsCauchyPDF StatsChiCDF
syn keyword igorFunction StatsChiPDF StatsCorrelation StatsDExpCDF StatsDExpPDF
syn keyword igorFunction StatsEValueCDF StatsEValuePDF StatsErlangCDF
syn keyword igorFunction StatsErlangPDF StatsErrorPDF StatsExpCDF StatsExpPDF
syn keyword igorFunction StatsFCDF StatsFPDF StatsFriedmanCDF StatsGEVCDF
syn keyword igorFunction StatsGEVPDF StatsGammaCDF StatsGammaPDF
syn keyword igorFunction StatsGeometricCDF StatsGeometricPDF StatsHyperGCDF
syn keyword igorFunction StatsHyperGPDF StatsInvBetaCDF StatsInvBinomialCDF
syn keyword igorFunction StatsInvCMSSDCDF StatsInvCauchyCDF StatsInvChiCDF
syn keyword igorFunction StatsInvDExpCDF StatsInvEValueCDF StatsInvExpCDF
syn keyword igorFunction StatsInvFCDF StatsInvFriedmanCDF StatsInvGammaCDF
syn keyword igorFunction StatsInvGeometricCDF StatsInvKuiperCDF
syn keyword igorFunction StatsInvLogNormalCDF StatsInvLogisticCDF
syn keyword igorFunction StatsInvMaxwellCDF StatsInvMooreCDF
syn keyword igorFunction StatsInvNBinomialCDF StatsInvNCChiCDF StatsInvNCFCDF
syn keyword igorFunction StatsInvNormalCDF StatsInvParetoCDF StatsInvPoissonCDF
syn keyword igorFunction StatsInvPowerCDF StatsInvQCDF StatsInvQpCDF
syn keyword igorFunction StatsInvRayleighCDF StatsInvRectangularCDF
syn keyword igorFunction StatsInvSpearmanCDF StatsInvStudentCDF
syn keyword igorFunction StatsInvTopDownCDF StatsInvTriangularCDF
syn keyword igorFunction StatsInvUsquaredCDF StatsInvVonMisesCDF
syn keyword igorFunction StatsInvWeibullCDF StatsKuiperCDF StatsLogNormalCDF
syn keyword igorFunction StatsLogNormalPDF StatsLogisticCDF StatsLogisticPDF
syn keyword igorFunction StatsMaxwellCDF StatsMaxwellPDF StatsMedian
syn keyword igorFunction StatsMooreCDF StatsNBinomialCDF StatsNBinomialPDF
syn keyword igorFunction StatsNCChiCDF StatsNCChiPDF StatsNCFCDF StatsNCFPDF
syn keyword igorFunction StatsNCTCDF StatsNCTPDF StatsNormalCDF StatsNormalPDF
syn keyword igorFunction StatsParetoCDF StatsParetoPDF StatsPermute
syn keyword igorFunction StatsPoissonCDF StatsPoissonPDF StatsPowerCDF
syn keyword igorFunction StatsPowerNoise StatsPowerPDF StatsQCDF StatsQpCDF
syn keyword igorFunction StatsRayleighCDF StatsRayleighPDF StatsRectangularCDF
syn keyword igorFunction StatsRectangularPDF StatsRunsCDF StatsSpearmanRhoCDF
syn keyword igorFunction StatsStudentCDF StatsStudentPDF StatsTopDownCDF
syn keyword igorFunction StatsTriangularCDF StatsTriangularPDF StatsTrimmedMean
syn keyword igorFunction StatsUSquaredCDF StatsVonMisesCDF StatsVonMisesNoise
syn keyword igorFunction StatsVonMisesPDF StatsWaldCDF StatsWaldPDF
syn keyword igorFunction StatsWeibullCDF StatsWeibullPDF StopMSTimer
syn keyword igorFunction StrVarOrDefault StringByKey StringFromList StringList
syn keyword igorFunction StudentA StudentT TDMAddChannel TDMAddGroup
syn keyword igorFunction TDMAppendDataValues TDMAppendDataValuesTime
syn keyword igorFunction TDMChannelPropertyExists TDMCloseChannel TDMCloseFile
syn keyword igorFunction TDMCloseGroup TDMCreateChannelProperty TDMCreateFile
syn keyword igorFunction TDMCreateFileProperty TDMCreateGroupProperty
syn keyword igorFunction TDMFilePropertyExists TDMGetChannelPropertyNames
syn keyword igorFunction TDMGetChannelPropertyNum TDMGetChannelPropertyStr
syn keyword igorFunction TDMGetChannelPropertyTime TDMGetChannelPropertyType
syn keyword igorFunction TDMGetChannelStringPropertyLen TDMGetChannels
syn keyword igorFunction TDMGetDataType TDMGetDataValues TDMGetDataValuesTime
syn keyword igorFunction TDMGetFilePropertyNames TDMGetFilePropertyNum
syn keyword igorFunction TDMGetFilePropertyStr TDMGetFilePropertyTime
syn keyword igorFunction TDMGetFilePropertyType TDMGetFileStringPropertyLen
syn keyword igorFunction TDMGetGroupPropertyNames TDMGetGroupPropertyNum
syn keyword igorFunction TDMGetGroupPropertyStr TDMGetGroupPropertyTime
syn keyword igorFunction TDMGetGroupPropertyType TDMGetGroupStringPropertyLen
syn keyword igorFunction TDMGetGroups TDMGetLibraryErrorDescription
syn keyword igorFunction TDMGetNumChannelProperties TDMGetNumChannels
syn keyword igorFunction TDMGetNumDataValues TDMGetNumFileProperties
syn keyword igorFunction TDMGetNumGroupProperties TDMGetNumGroups
syn keyword igorFunction TDMGroupPropertyExists TDMOpenFile TDMOpenFileEx
syn keyword igorFunction TDMRemoveChannel TDMRemoveGroup TDMReplaceDataValues
syn keyword igorFunction TDMReplaceDataValuesTime TDMSaveFile
syn keyword igorFunction TDMSetChannelPropertyNum TDMSetChannelPropertyStr
syn keyword igorFunction TDMSetChannelPropertyTime TDMSetDataValues
syn keyword igorFunction TDMSetDataValuesTime TDMSetFilePropertyNum
syn keyword igorFunction TDMSetFilePropertyStr TDMSetFilePropertyTime
syn keyword igorFunction TDMSetGroupPropertyNum TDMSetGroupPropertyStr
syn keyword igorFunction TDMSetGroupPropertyTime TableInfo TagVal TagWaveRef
syn keyword igorFunction TextEncodingCode TextEncodingName TextFile
syn keyword igorFunction ThreadGroupCreate ThreadGroupGetDF ThreadGroupGetDFR
syn keyword igorFunction ThreadGroupRelease ThreadGroupWait ThreadProcessorCount
syn keyword igorFunction ThreadReturnValue TraceFromPixel TraceInfo
syn keyword igorFunction TraceNameList TraceNameToWaveRef TrimString URLDecode
syn keyword igorFunction URLEncode UnPadString UniqueName
syn keyword igorFunction UnsetEnvironmentVariable UpperStr VariableList Variance
syn keyword igorFunction VoigtFunc VoigtPeak WaveCRC WaveDims WaveExists
syn keyword igorFunction WaveHash WaveInfo WaveList WaveMax WaveMin WaveName
syn keyword igorFunction WaveRefIndexed WaveRefIndexedDFR WaveRefWaveToList
syn keyword igorFunction WaveRefsEqual WaveTextEncoding WaveType WaveUnits
syn keyword igorFunction WhichListItem WinList WinName WinRecreation WinType
syn keyword igorFunction XWaveName XWaveRefFromTrace ZernikeR abs acos acosh
syn keyword igorFunction alog area areaXY asin asinh atan atan2 atanh beta betai
syn keyword igorFunction binomial binomialNoise binomialln cabs ceil cequal
syn keyword igorFunction char2num chebyshev chebyshevU cmplx cmpstr conj cos
syn keyword igorFunction cosIntegral cosh cot coth cpowi csc csch date date2secs
syn keyword igorFunction datetime defined deltax digamma dilogarithm ei enoise
syn keyword igorFunction equalWaves erf erfc erfcw exists exp expInt
syn keyword igorFunction expIntegralE1 expNoise fDAQmx_AI_GetReader
syn keyword igorFunction fDAQmx_AO_UpdateOutputs fDAQmx_CTR_Finished
syn keyword igorFunction fDAQmx_CTR_IsFinished fDAQmx_CTR_IsPulseFinished
syn keyword igorFunction fDAQmx_CTR_ReadCounter fDAQmx_CTR_ReadWithOptions
syn keyword igorFunction fDAQmx_CTR_SetPulseFrequency fDAQmx_CTR_Start
syn keyword igorFunction fDAQmx_ConnectTerminals fDAQmx_DIO_Finished
syn keyword igorFunction fDAQmx_DIO_PortWidth fDAQmx_DIO_Read fDAQmx_DIO_Write
syn keyword igorFunction fDAQmx_DeviceNames fDAQmx_DisconnectTerminals
syn keyword igorFunction fDAQmx_ErrorString fDAQmx_ExternalCalDate
syn keyword igorFunction fDAQmx_NumAnalogInputs fDAQmx_NumAnalogOutputs
syn keyword igorFunction fDAQmx_NumCounters fDAQmx_NumDIOPorts fDAQmx_ReadChan
syn keyword igorFunction fDAQmx_ReadNamedChan fDAQmx_ResetDevice
syn keyword igorFunction fDAQmx_ScanGetAvailable fDAQmx_ScanGetNextIndex
syn keyword igorFunction fDAQmx_ScanStart fDAQmx_ScanStop fDAQmx_ScanWait
syn keyword igorFunction fDAQmx_ScanWaitWithTimeout fDAQmx_SelfCalDate
syn keyword igorFunction fDAQmx_SelfCalibration fDAQmx_WF_IsFinished
syn keyword igorFunction fDAQmx_WF_WaitUntilFinished fDAQmx_WaveformStart
syn keyword igorFunction fDAQmx_WaveformStop fDAQmx_WriteChan factorial fakedata
syn keyword igorFunction faverage faverageXY floor gamma gammaEuler gammaInc
syn keyword igorFunction gammaNoise gammln gammp gammq gcd gnoise hcsr hermite
syn keyword igorFunction hermiteGauss imag interp inverseERF inverseERFC leftx
syn keyword igorFunction limit ln log logNormalNoise lorentzianNoise magsqr max
syn keyword igorFunction mean median min mod norm note num2char num2istr num2str
syn keyword igorFunction numpnts numtype p2rect pcsr pnt2x poissonNoise poly
syn keyword igorFunction poly2D qcsr r2polar real rightx round sawtooth
syn keyword igorFunction scaleToIndex sec sech sign sin sinIntegral sinc sinh
syn keyword igorFunction sqrt str2num stringCRC stringmatch strlen strsearch sum
syn keyword igorFunction tan tango_close_device tango_command_inout
syn keyword igorFunction tango_compute_image_proj tango_get_dev_attr_list
syn keyword igorFunction tango_get_dev_black_box tango_get_dev_cmd_list
syn keyword igorFunction tango_get_dev_status tango_get_dev_timeout
syn keyword igorFunction tango_get_error_stack tango_open_device
syn keyword igorFunction tango_ping_device tango_read_attribute
syn keyword igorFunction tango_read_attributes tango_reload_dev_interface
syn keyword igorFunction tango_resume_attr_monitor tango_set_attr_monitor_period
syn keyword igorFunction tango_set_dev_timeout tango_start_attr_monitor
syn keyword igorFunction tango_stop_attr_monitor tango_suspend_attr_monitor
syn keyword igorFunction tango_write_attribute tango_write_attributes tanh ticks
syn keyword igorFunction time trunc vcsr viAssertIntrSignal viAssertTrigger
syn keyword igorFunction viAssertUtilSignal viClear viClose viDisableEvent
syn keyword igorFunction viDiscardEvents viEnableEvent viFindNext viFindRsrc
syn keyword igorFunction viGetAttribute viGetAttributeString viGpibCommand
syn keyword igorFunction viGpibControlATN viGpibControlREN viGpibPassControl
syn keyword igorFunction viGpibSendIFC viIn16 viIn32 viIn8 viLock viMapAddress
syn keyword igorFunction viMapTrigger viMemAlloc viMemFree viMoveIn16 viMoveIn32
syn keyword igorFunction viMoveIn8 viMoveOut16 viMoveOut32 viMoveOut8 viOpen
syn keyword igorFunction viOpenDefaultRM viOut16 viOut32 viOut8 viPeek16
syn keyword igorFunction viPeek32 viPeek8 viPoke16 viPoke32 viPoke8 viRead
syn keyword igorFunction viReadSTB viSetAttribute viSetAttributeString
syn keyword igorFunction viStatusDesc viTerminate viUnlock viUnmapAddress
syn keyword igorFunction viUnmapTrigger viUsbControlIn viUsbControlOut
syn keyword igorFunction viVxiCommandQuery viWaitOnEvent viWrite wnoise x2pnt
syn keyword igorFunction xcsr zcsr zeromq_client_connect zeromq_client_connect
syn keyword igorFunction zeromq_client_recv zeromq_client_recv
syn keyword igorFunction zeromq_client_send zeromq_client_send
syn keyword igorFunction zeromq_handler_start zeromq_handler_start
syn keyword igorFunction zeromq_handler_stop zeromq_handler_stop
syn keyword igorFunction zeromq_server_bind zeromq_server_bind
syn keyword igorFunction zeromq_server_recv zeromq_server_recv
syn keyword igorFunction zeromq_server_send zeromq_server_send zeromq_set
syn keyword igorFunction zeromq_set zeromq_stop zeromq_stop
syn keyword igorFunction zeromq_test_callfunction zeromq_test_callfunction
syn keyword igorFunction zeromq_test_serializeWave zeromq_test_serializeWave
syn keyword igorFunction zeta
" }}}

syn region  igorStringDQ  start=+"+ end=+"+ skip=+\\\\\|\\"+
syn region  igorStringQ   start=+'+ end=+'+ skip=+\\\\\|\\'+
syn region  igorASCII     start=+ASCII85Begin+ end=+ASCII85End+ skip=+"|'+

syn keyword igorStructure structure endstructure contained
syn keyword igorStructure struct
syn keyword igorPicture   picture contained
syn keyword igorConstant  nan inf
syn keyword igorStat      break return continue
syn keyword igorCond      if else elseif endif switch endswitch strswitch
syn keyword igorMod       multithread AbortOnRTE AbortOnValue try catch endtry
syn keyword igorRepeat    for endfor do while
syn keyword igorLabel     case default
syn match   igorSpecial   "\(V\|S\)_[a-zA-Z]\+" " auto variables from operations like V_flag, S_names etc.

syn keyword igorDefine    override threadsafe static macro window function endmacro end contained
" we must also highlight end as closing for menu and submenu (which we don't fold)
syn keyword igorDefine    menu submenu end Prompt DoPrompt WaveClear
syn match   igorDefine    "proc\s\+[^=]"he=e-1 contained

syn keyword igorType      constant strconstant variable string svar
syn keyword igorType      nvar funcref dfref
syn keyword igorType      char uchar int int16 uint16 int32 uint32 int64 uint64 float double complex
" hack, highlight static also in front of Constant and StrConstant
syn match   igorType      "static\s\+\(StrConstant\|Constant\)"
syn match   igorType      "^\s*\<wave\>"

syn match   igorPreproc   "^#\(pragma\|define\|else\|elif\|endif\|ifdef\|ifndef\|if\|include\|undef\)"
syn match   igorDelimiter "[(){}]\|\[\|\]"

syn match   igorTab       "[^^\t[:space:]]\zs\t\+"

syn match   igorComment   "//.*"  contains=igorTab,igorExtra,igorRst
syn match   igorExtra     "\(todo\|fixme\)" contained
syn region  igorRst start="\\rst" end="\\endrst" contained

syn region  igorFunctionFold  start="^\s*\(\|override\s\+\)\(\|static\s\+\|threadsafe\s\+\|static\s\+threadsafe\s\+\|threadsafe\s\+static\s\+\)function\(\s\+\|\/\)" end="^\s*end\(\s\+\|$\)" fold transparent keepend contains=ALLBUT,igorExtra
syn region  igorMacroFold     start="^\s*\(macro\|window\|proc\)\s\+" end="^\s*\(end\|endmacro\)\(\s\+\|$\)" fold transparent keepend contains=ALLBUT,igorExtra
syn region  igorStructureFold start="^\s*\(\|static\s\+\)structure " end="^\s*endstructure" fold transparent keepend contains=ALLBUT,igorExtra
syn region  igorPictureFold start="^\s*\(\|static\s\+\)picture " end="^\s*end" fold transparent keepend contains=ALLBUT,igorExtra

hi igorTab guibg=#FFD0D0 ctermbg=lightred

if exists("igorpro_default_colors")
  hi igorStructure guifg=#0000FF ctermfg=4*
  hi igorPicture   guifg=#0000FF ctermfg=4*
  hi igorConstant  guifg=#C34E00 ctermfg=3*
  hi igorDefine    guifg=#0000FF ctermfg=4*
  hi igorType      guifg=#0000FF ctermfg=4*
  hi igorCond      guifg=#0000FF ctermfg=4*
  hi igorMod       guifg=#0000FF ctermfg=4*
  hi igorStat      guifg=#0000FF ctermfg=4*
  hi igorRepeat    guifg=#0000FF ctermfg=4*
  hi igorLabel     guifg=#0000FF ctermfg=4*

  hi igorFunction  guifg=#C34E00 ctermfg=3*
  hi igorOperation guifg=#007575 ctermfg=4*
  hi igorPreProc   guifg=#CC00A3 ctermfg=5*
  hi igorStringDQ  guifg=#009C00 ctermfg=2*
  hi igorStringQ   guifg=#009C00 ctermfg=2*
  hi igorComment   guifg=#FF0000 ctermfg=1*
  hi link igorExtra   Todo
  hi link igorRst   igorComment
else
  hi link igorOperation Function
  hi link igorFunction  Function
  hi link igorPicture   Function

  hi link igorStringDQ  String
  hi link igorStringQ   String

  hi link igorStructure Structure
  hi link igorConstant  Constant
  hi link igorCond      Conditional
  hi link igorStat      Statement
  hi link igorRepeat    Repeat
  hi link igorLabel     Label
  hi link igorSpecial   Special
  hi link igorMod       Special

  hi link igorDefine    Define
  hi link igorType      Type
  hi link igorPreproc   PreProc
  hi link igorDelimiter Delimiter
  hi link igorComment   Comment
  hi link igorExtra     Todo
  hi link igorRst   igorComment
endif

let b:current_syntax = "igorpro"

" vim: set fdm=marker:
