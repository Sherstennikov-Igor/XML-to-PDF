<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>

    <xsl:template match="/">

        <xsl:apply-templates select="ExplanatoryNote"/>

    </xsl:template>

    <xsl:template match="ExplanatoryNote">
        
       <xsl:variable name="Object" select="NonIndustrialObject | IndustrialObject | LinearObject"/>
        
        <!-- Начало основного шаблона -->
        <html>
            <head>
                <style type="text/css">
                    h1 {
                        font-family: Times New Roman;
                        font-size: 20pt;
                        font-weight: bold;
                        text-align: center;
                        width: 100%;
                        margin-top: 0px;
                    }
                    p {
                        font-family: Times New Roman;
                        font-size: 14pt;
                        margin-bottom: 5px;
                        text-indent: 30px;
                        margin-top: 0;
                        text-align: justify;
                    }
                    body {
                        font-family: Times New Roman;
                        font-size: 14pt;
                        margin: 0;
                    }
                    .title {
                        font-size: 16pt;
                        font-weight: bold;
                        text-align: center;
                        text-indent: 0px;
                        padding-top: 10px;
                        padding-bottom: 10px;
                    }
                    .subtitle
                    {
                        font-size: 14pt;
                        font-weight: bold;
                        text-align: center;
                        text-indent: 0px;
                        padding-top: 10px;
                        padding-bottom: 10px;
                        font-style: italic;
                    }
                    .imagecomment {
                        font-family: Times New Roman;
                        font-size: 12pt;
                        margin-bottom: 5px;
                        text-indent: 0px;
                        margin-top: 0px;
                        margin-bottom: 10px;
                        text-align: center;
                    }
                    .no-first-line {
                        text-indent: 0px;
                    }
                    .content
                    {
                        font-size: 14pt;
                        text-align: left;
                        text-indent: 0px;
                    }
                    .content_1
                    {
                        font-size: 14pt;
                        text-align: left;
                        text-indent: 20px;
                        margin-left: 20px;
                        font-style: italic;
                    }
                    .field {
                        font-weight: bold;
                    }
                    .center {
                        text-align: center;
                        text-indent: 0px;
                    }
                    .right {
                        text-align: right;
                    }
                    .left {
                        text-align: left;
                    }
                    .organization {
                        text-align: left;
                        text-indent: 0px;
                    }
                    .expert {
                        text-align: left;
                        text-indent: 0px;
                        font-size: 12pt;
                    }
                    .title_org_name {
                        font-size: 16pt;
                        text-align: center;
                        font-weight: bold;
                        text-indent: 0px;
                    }
                    .title_org_name {
                        font-size: 16pt;
                        text-align: center;
                        font-weight: bold;
                        text-indent: 0px;
                    }
                    .title_org_data {
                        font-size: 14pt;
                        text-align: center;
                    }
                    .pagebreak {
                        page-break-before: always;
                    }
                    .frame {
                        border: 1px solid black;
                        padding: 30px;
                    }
                    
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        margin: 0em 0;
                        font-family: Times New Roman;
                        font-size: 12pt;
                    }
                    td {
                        border: 1px solid black;
                        padding: 0.2em 0.5em;
                        vertical-align: top;
                        font-family: Times New Roman;
                        font-size: 11pt;
                    }
                    td.noborder {
                        border: 0px solid black;
                        padding: 0.2em 0.5em;
                        vertical-align: top;
                        font-family: Times New Roman;
                        font-size: 11pt;
                    }
                    td.main {
                        border: 0px;
                        padding: 0.2em 0.5em;
                        vertical-align: top;
                    }
                    td.number {
                        border: 1px solid black;
                        font-family: Times New Roman;
                        font-size: 18pt;
                        text-align: center;
                    }
                    td.title {
                        border: 1px solid black;
                        padding: 0.2em 0.5em;
                        vertical-align: center;
                        align: center;
                        font-family: Times New Roman;
                        font-size: 11pt;
                        font-weight: bold;
                    }
                    td.subtitle {
                        border: 1px solid black;
                        padding: 0.2em 0.5em;
                        vertical-align: center;
                        align: center;
                        font-family: Times New Roman;
                        font-size: 11pt;
                        font-weight: bold;
                        font-style: italic;
                    }
                    img {
                        max-width: 90%;
                        align: center;
                        padding-top: 10px;
                        padding-bottom: 10px;
                    }
                    a {
                        text-decoration: none;
                        color: black;
                    }
                    a:hover {
                        text-decoration: underline;
                    }
					</style>
            </head>
            <title>Пояснительная записка</title>
            <body>
               <div align="center" style="width: 800px; position: absolute; left: 50%; margin-left: -400px;">

                    <!-- Начало титульного листа -->
                    <br/>
                    <div class="frame">
                        <p class="title_org_name">
                            <xsl:value-of select="IssueAuthor/Organization/OrgFullName"/>
                        </p>
                        <br/>
                        <xsl:if test="@AccessRestriction"><p class="right"><xsl:value-of select="@AccessRestriction"/></p></xsl:if>
                        <br/><br/>
                        <p class="title">
                            <xsl:value-of select="$Object/Name"/>
                        </p>
                        <br/><br/><br/>
                        <p class="title">ПРОЕКТНАЯ ДОКУМЕНТАЦИЯ</p>
                        <br/>
                        <p class="title">Раздел 1. «Пояснительная записка»</p>
                        <br/>
                        <p class="title">
                            <xsl:value-of select="ExplanatoryNoteNumber"/>
                        </p>
                        <br/>
                        <a name="ConstructionType"/>
                        <p class="center">
                            <span class="field">Вид работ: </span>
                            <xsl:call-template name="MakeWorkType">
                                <xsl:with-param name="Code" select="$Object/ConstructionType"/>
                            </xsl:call-template>
                        </p>
                        <br/><br/>

                        <xsl:if test="ExplanatoryNoteModifications">
                            <a name="ExplanatoryNoteModifications"/>
                            <table style="width: 300px; align: left; padding: 20px;" align="left">
                                <tr>
                                    <td colspan="2" class="title">Внесеные изменения</td>
                                </tr>
                                <tr>
                                    <td style="width: 150px;" class="title">Номер изменения</td>
                                    <td style="width: 150px;" class="title">Дата изменения</td>
                                </tr>
                                <xsl:for-each select="ExplanatoryNoteModifications/Modification">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="ModificationNumber"/>
                                        </td>
                                        <td>
                                            <xsl:call-template name="formatdate">
                                                <xsl:with-param name="DateTimeStr" select="ModificationDate"/>
                                            </xsl:call-template>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            <br/>
                            <br/>
                        </xsl:if>

                        <a name="Signers"/>
                        <table>
                            <xsl:for-each select="Signers/Signer">
                                <tr>
                                    <td class="noborder">
                                        <p class="left">
                                            <xsl:value-of select="./Position"/>
                                        </p>
                                    </td>
                                    <td class="noborder">
                                        <p class="right">
                                            <xsl:value-of select="./FamilyName"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="./FirstName"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="./SecondName"/>
                                        </p>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                        <br/>
                        <a name="ExplanatoryNoteYear"/>
                        <p class="center">
                            <xsl:value-of select="ExplanatoryNoteYear"/>
                        </p>
                    </div>
                    <div class="pagebreak"> </div>
                    <br/>
                    <br/>
                    <!-- Конец титульного листа -->

                    <p class="title">Содержание:</p>

                    <table>
                        <xsl:if test="UsedAbbreviations">
                            <tr>
                                <td class="content">
                                    <a href="#UsedAbbreviations">Перечень использованных сокращений</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <tr>
                            <td class="content">
                                <a href="#Author">Сведения о лице (лицах), разработавшем(их) проектную документацию, застройщике, техническом заказчике</a>
                            </td>
                        </tr>

                        <tr>
                            <td class="content">
                                <a href="#ProjectDocumentationContent">Состав проектной документации</a>
                            </td>
                        </tr>

                        <xsl:if test="//Model">
                            <tr>
                                <td class="content">
                                    <a href="#Model">Сведения о составе 3D модели объекта</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="UsedNorms">
                            <tr>
                                <td class="content">
                                    <a href="#UsedNorms">Перечень документов по стандартизации, используемых полностью или частично на добровольной основе для соблюдения требований технических регламентов (из числа документов по стандартизации, включенных в перечни документов в области
                                        стандартизации, в результате применения которых на добровольной основе обеспечивается соблюдение требований технических регламентов)</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <tr>
                            <td class="content">
                                <a href="#ProjectDecisionDocuments">Основания для разработки проектной документации</a>
                            </td>
                        </tr>

                        <tr>
                            <td class="content">
                                <a href="#ProjectInitialDocuments">Состав исходно-разрешительной документации</a>
                            </td>
                        </tr>
                        
                        <xsl:if test="AdditionalData">
                            <tr>
                                <td class="content">
                                    <a href="#AdditionalData">Перечень дополнительных материалов</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="FinanceSources">
                            <tr>
                                <td class="content">
                                    <a href="#FinanceSources">Сведения об источнике (источниках) и размере финансирования строительства (реконструкции, капитального ремонта, сноса) объекта капитального строительства</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="$Object/ClimateConditions">
                            <tr>
                                <td class="content">
                                    <a href="#ClimateConditions">Сведения о климатической, географической и инженерно-геологической характеристике района, на территории которого предполагается осуществлять строительство объекта</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/ClimateConditions/DangerousNatureProcesses">
                            <tr>
                                <td class="content">
                                    <a href="#DangerousNatureProcesses">Возможность опасных природных процессов и явлений и техногенных воздействий на территории, на которой будут осуществляться строительство, реконструкция и эксплуатация здания или сооружения</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="IndustrialObject or NonIndustrialObject">
                            <tr>
                                <td class="content">
                                    <a href="#Object">Сведения об объекте капитального строительства, его функциональном назначении, составе и характеристики производства, номенклатуре выпускаемой продукции (работ, услуг)</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="LinearObject">
                            <tr>
                                <td class="content">
                                    <a href="#Object">Сведения о линейном объекте</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/Functions or $Object/LinearObjectNote">
                            <tr>
                                <td class="content">
                                    <a href="#Functions">Сведения о линейном объекте</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test=" $Object/FunctionsFeature">
                            <tr>
                                <td class="content">
                                    <a href="#FunctionsFeatures">Сведения о принадлежности к объектам транспортной инфраструктуры и к другим объектам, функционально-технологические особенности которых влияют на их безопасность</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                            <xsl:if test="$Object/PowerIndicator">
                                <tr>
                                    <td class="content">
                                        <a href="#PowerIndicator">Сведения о проектной мощности объекта капитального стрительства</a>
                                    </td>
                                </tr>
                            </xsl:if>

                            <xsl:if test="$Object/TEI">
                                <tr>
                                    <td class="content">
                                        <a href="#TEI">Технико-экономические показатели объекта капитального строительства</a>
                                    </td>
                                </tr>
                            </xsl:if>

                        <xsl:if test="$Object/DangerousIndustrialObject">
                                <tr>
                                    <td class="content">
                                        <a href="#DangerousIndustrialObject">Сведения о принадлежности к опасным производственным объектам</a>
                                    </td>
                                </tr>
                            </xsl:if>
                        
                        <xsl:if test="$Object/EnergyEfficiency">
                            <tr>
                                <td class="content">
                                    <a href="#EnergyEfficiency">Сведения о классе энергетической эффективности  и о повышении энергетической эффективности</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/LinearObjectCategory">
                            <tr>
                                <td class="content">
                                    <a href="#LinearObjectCategory">Сведения о категории линейного объекта</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/LinearObjectClass">
                            <tr>
                                <td class="content">
                                    <a href="#LinearObjectClass">Сведения о классе линейного объекта</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/FireDangerCategory">
                            <tr>
                                <td class="content">
                                    <a href="#FireDangerCategory">Сведения о пожарной и взрывопожарной опасности</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/PeoplePermanentStay">
                            <tr>
                                <td class="content">
                                    <a href="#PeoplePermanentStay">Сведения о наличии помещений с постоянным пребыванием людей</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/ResponsibilityLevel">
                            <tr>
                                <td class="content">
                                    <a href="#ResponsibilityLevel">Сведения об уровне ответсвенности</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/ObjectParts">
                            <tr>
                                <td class="content">
                                    <a href="#Parts">Сведения об составе сложного (составного) объекта капитального строительства</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/LinearObject/Routes">
                            <tr>
                                <td class="content">
                                    <a href="#Routes">Описание вариантов маршрутов прохождения линейного объекта по территории района строительства, обоснование выбранного варианта трассы</a>
                                </td>
                            </tr>
                        </xsl:if>


                        <xsl:if test="$Object/Resources">
                                <tr>
                                    <td class="content">
                                        <a href="#Resources">Cведения о потребности объекта капитального строительства в топливе, газе, воде и электрической энергии</a>
                                    </td>
                                </tr>
                            </xsl:if>

                        <xsl:if test="$Object/RawResources">
                                <tr>
                                    <td class="content">
                                        <a href="#RawResources">Сведения о сырьевой базе, потребности производства в воде, топливно-энергетических ресурсах</a>
                                    </td>
                                </tr>
                            </xsl:if>

                        <xsl:if test="$Object/ResourceUseInfo">
                                <tr>
                                    <td class="content">
                                        <a href="#ResourceUseInfo">Сведения о комплексном использовании сырья, вторичных энергоресурсов, отходов производства</a>
                                    </td>
                                </tr>
                            </xsl:if>

                        <xsl:if test="$Object/RenewableSourceInfo">
                                <tr>
                                    <td class="content">
                                        <a href="#RenewableSourceInfo">Сведения об использовании возобновляемых источников энергии и вторичных энергетических ресурсов</a>
                                    </td>
                                </tr>
                            </xsl:if>

                        <xsl:if test="$Object/LandCategory">
                            <tr>
                                <td class="content">
                                    <a href="#LandCategory">Сведения о категории земель, на которых планируется разместить (размещен) объект капитального строительства</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/LandInfo">
                            <tr>
                                <td class="content">
                                    <a href="#LandInfo">Сведения о земельных участках, изымаемых для государственных или муниципальных нужд, о земельных участках, в отношении которых устанавливается сервитут, публичный сервитут и (или) заключается договор аренды (субаренды)</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="$Object/LandFunds">
                            <tr>
                                <td class="content">
                                    <a href="#LandFunds">Cведения о размере средств, требующихся для возмещения убытков правообладателям земельных участков и (или) для внесения в качестве арендной платы, платы за сервитут, публичный сервитут и (или) для выкупа земельных участков</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/PatentsUsed">
                            <tr>
                                <td class="content">
                                    <a href="#PatentsUsed">Сведения об использованных в проекте изобретениях, результатах проведенных патентных исследований</a>
                                </td>
                            </tr>
                        </xsl:if>
                                               
                        <xsl:if test="ProjectInitialDocuments/Document[DocType = '19.01' or DocType = '19.02'] or $Object/SpecialRequirements">
                            <tr>
                                <td class="content">
                                    <a href="#SpecialRequirements">Сведения о наличии разработанных и согласованных специальных технических условий</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/StaffNote">
                            <tr>
                                <td class="content">
                                    <a href="#StaffNote">Данные о численности работников на объекте капитального строительства и их профессионально-квалификационном составе, числе рабочих мест и другие данные, установленные заданием на проектирование и характеризующие объект капитального строительства</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/SoftwareUsed">
                            <tr>
                                <td class="content">
                                    <a href="#SoftwareUsed">Сведения о компьютерных программах, которые использовались выполнении расчетов конструктивных элементов зданий, строений и сооружений</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/StagesInfo">
                            <tr>
                                <td class="content">
                                    <a href="#StagesInfo">
                                        <xsl:if test="LinearObject">Описание принципиальных проектных решений, обеспечивающих надежность линейного объекта, последовательность его строительства, намечаемые этапы строительства и планируемые сроки ввода их в эксплуатацию</xsl:if>
                                        <xsl:if test="IndustrialObject or NonIndustrialObject">Сведения об этапах строительства объекта капитального строительства (обоснование возможности осуществления строительства по этапам)</xsl:if>
                                    </a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="$Object/DestroyFunds">
                            <tr>
                                <td class="content">
                                    <a href="#DestroyFunds">Сведения о предполагаемых затратах, связанных со сносом зданий и сооружений, переселением людей, переносом сетей инженерно-технического обеспечения</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/EnergyEfficiencyLinks">
                            <tr>
                                <td class="content">
                                    <a href="#EnergyEfficiencyLinks">Сведения о разделах и пунктах проектной документации, содержащих решения и мероприятия по обеспечению соблюдения требований энергетической эффективности и оснащенности зданий, строений, сооружений приборами учета используемых энергетических ресурсов</a>
                                </td>
                            </tr>
                        </xsl:if>                        

                        <xsl:if test="$Object/IndustrialSafetyLinks">
                            <tr>
                                <td class="content">
                                    <a href="#IndustrialSafetyLinks">Сведения о разделах и пунктах проектной документации, содержащих решения и мероприятия по обеспечению соблюдения требований промышленной безопасности</a>
                                </td>
                            </tr>
                        </xsl:if> 

                        <xsl:if test="$Object/LandReclamationLink">
                            <tr>
                                <td class="content">
                                    <a href="#IndustrialSafetyLinks">Сведения о наличии проекта рекультивации земель</a>
                                </td>
                            </tr>
                        </xsl:if> 
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/ObjectList">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesObjectList">Список объектов производственного и непроизводственного назначения, входящих в состав проектируемой атомной станции</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/NuclearSafety">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesNuclearSafety">Общие сведения о требованиях к системам, обеспечивающим ядерную и радиационную безопасность атомной станции</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/OperationalLimits">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesOperationalLimits">Исходные данные, пределы безопасной эксплуатации и эксплуатационные пределы оборудования и систем</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/NuclearPlantControl">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesNuclearPlantControl">Сведения об организации управления атомной станцией, ее эксплуатационном, ремонтном, техническом обслуживании, штатном расписании, требованиях к персоналу и условиях труда работников</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/ReactorPlant">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesReactorPlant">Основные сведения о реакторной установке, применяемой на атомной станции, об исходных технических требованиях на оборудование, применяемое на атомной станции, об основном и вспомогательном оборудовании основных технологических контуров атомной станции</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/NuclearSafitySoftware">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesNuclearSafitySoftware">Сведения о компьютерных программах, которые использовались для анализов безопасности атомной станции, об аттестации и верификации применяемых компьютерных программ, о системах сертификации, стандартизации и метрологическом обеспечении, о разработке
                                        программы обеспечения качества, отчета по обоснованию безопасности и вероятностных анализов безопасности атомной станции первого и второго уровней, о стационарной системе непрерывного мониторинга технического состояния объекта капитального строительства</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms">
                            <tr>
                                <td class="content">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms1">Сведения о программах мониторинга</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/GeotechnicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms1">Геотехнический мониторинг, включая мониторинг кренов и осадок</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/HydrogeologicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms2">Гидрогеологический мониторинг</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/SeismologicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms3">Сейсмологический мониторинг</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/MeteorologicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms4">Метеорологический мониторингг</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/AerologicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms5">Аэрологический мониторинг</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/HydrologicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms6">Гидрологический мониторинг</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/GeodynamicalMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms7">Геодинамический мониторинг</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/NuclearPlantFeatures/MonitoringPrograms/TechnogenicMonitoring">
                            <tr>
                                <td class="content_1">
                                    <a href="#NuclearPlantFeaturesNuclearMonitoringPrograms8">Периодический контроль параметров внешних техногенных воздействий</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/GasNetworksFeatures/StrengthCalculation">
                            <tr>
                                <td class="content">
                                    <a href="#GasNetworksFeaturesStrengthCalculation">Расчет трубопроводов на прочность и устойчивость</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/GasNetworksFeatures/EnvironmentalProtection">
                            <tr>
                                <td class="content">
                                    <a href="#GasNetworksFeaturesEnvironmentalProtection">Перечень мероприятий по охране окружающей среды, включающий мероприятия по предотвращению и (или) снижению возможного негативного воздействия на окружающую среду при эксплуатации линейного объекта и рациональному использованию природных ресурсов на период строительства и эксплуатации линейного объекта</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/GasNetworksFeatures/FireSafety">
                            <tr>
                                <td class="content">
                                    <a href="#GasNetworksFeaturesFireSafety">Перечень мероприятий по обеспечению пожарной безопасности</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/GasNetworksFeatures/OperationalSafety">
                            <tr>
                                <td class="content">
                                    <a href="#GasNetworksFeaturesOperationalSafety">Перечень мероприятий по безопасной эксплуатации линейного объекта</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/GasNetworksFeatures/PerairFrequency">
                            <tr>
                                <td class="content">
                                    <a href="#GasNetworksFeaturesPerairFrequency">Нормативная периодичность выполнения работ по капитальному ремонту линейного объекта</a>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        <xsl:if test="$Object/EngineeringTerritoryProtection">
                            <tr>
                                <td class="content">
                                    <a href="#EngineeringTerritoryProtection">Описание принципиальных проектных решений по инженерной защите территории при строительстве, реконструкции автомобильных дорог</a>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="DesignerNote">
                            <xsl:for-each select="DesignerNote">
                                <xsl:if test="@Title">
                                    <tr>
                                        <td class="content">
                                            <a>
                                                <xsl:attribute name="href">#Note<xsl:value-of select="position()"/></xsl:attribute>
                                                <xsl:value-of select="@Title"/>
                                            </a>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="DesignerAssurance">
                            <tr>
                                <td class="content">
                                    <a href="#DesignerAssurance">Заверение проектной организации о том, что проектная документация разработана в соответствии с градостроительным планом земельного участка, заданием на проектирование, градостроительным регламентом, документами об использовании
                                        земельного участка для строительства (в случае если на земельный участок не распространяется действие градостроительного регламента или в отношении его не устанавливается градостроительный регламент), техническими регламентами, в том числе устанавливающими
                                        требования по обеспечению безопасной эксплуатации зданий, строений, сооружений и безопасного использования прилегающих к ним территорий, и с соблюдением технических условий.</a>
                                </td>
                            </tr>
                        </xsl:if>
                    </table>

                    <div class="pagebreak"> </div>
                    <br/>
                    <br/>

                    <!-- Список использованных сокращений -->
                    <xsl:if test="UsedAbbreviations">
                        <a name="UsedAbbreviations"/>
                        <p class="title">Перечень использованных сокращений:</p>
                        <xsl:apply-templates select="UsedAbbreviations"/>
                        <br/>
                        <br/>
                    </xsl:if>

                    <!-- Сведения об авторе пояснительно записки, застройщике, техническом заказчике -->
                    <a name="IssueAuthor"/>
                    <p class="field no-first-line">Генеральный проектировщик:</p>
                    <xsl:for-each select="IssueAuthor">
                        <p class="organization">
                            <xsl:choose>
                                <xsl:when test="Organization">
                                    <xsl:apply-templates select="Organization"/>
                                </xsl:when>
                                <xsl:when test="ForeignOrganization">
                                    <xsl:apply-templates select="ForeignOrganization"/>
                                </xsl:when>
                                <xsl:when test="IP">
                                    <xsl:apply-templates select="IP"/>
                                </xsl:when>
                                <xsl:when test="Person">
                                    <xsl:apply-templates select="Person"/>
                                </xsl:when>
                            </xsl:choose>
                        </p>
                        <p class="no-first-line">
                        <xsl:if test="SROMembership">
                            <xsl:apply-templates select="SROMembership"/>
                        </xsl:if>
                        </p>
                        <br/>
                    </xsl:for-each>

                    <a name="ProjectDocumentationAuthors"/>
                    <xsl:if test="ProjectDocumentationAuthors">
                        <p class="field no-first-line">Сведения о лицах, принимавших участие в разработке проектной документации:</p>
                        <xsl:for-each select="ProjectDocumentationAuthors/ProjectDocumentationAuthor">
                            <p class="organization">
                                <xsl:choose>
                                    <xsl:when test="Organization">
                                        <xsl:apply-templates select="Organization"/>
                                    </xsl:when>
                                    <xsl:when test="ForeignOrganization">
                                        <xsl:apply-templates select="ForeignOrganization"/>
                                    </xsl:when>
                                    <xsl:when test="IP">
                                        <xsl:apply-templates select="IP"/>
                                    </xsl:when>
                                    <xsl:when test="Person">
                                        <xsl:apply-templates select="Person"/>
                                    </xsl:when>
                                </xsl:choose>
                            </p>
                            <p class="no-first-line">
                            <xsl:if test="SROMembership">
                                <xsl:apply-templates select="SROMembership"/>
                            </xsl:if>
                            </p>
                            <br/>
                        </xsl:for-each>
                    </xsl:if>

                    <a name="Developer"/>
                    <xsl:if test="Developer">
                        <xsl:if test="count(Developer) = 1">
                            <p class="field no-first-line">Застройщик:</p>
                        </xsl:if>
                        <xsl:if test="count(Developer) &gt; 1">
                            <p class="field no-first-line">Застройщики:</p>
                        </xsl:if>
                        <xsl:for-each select="Developer">
                            <p class="organization">
                                <xsl:choose>
                                    <xsl:when test="Organization">
                                        <xsl:apply-templates select="Organization"/>
                                    </xsl:when>
                                    <xsl:when test="ForeignOrganization">
                                        <xsl:apply-templates select="ForeignOrganization"/>
                                    </xsl:when>
                                    <xsl:when test="IP">
                                        <xsl:apply-templates select="IP"/>
                                    </xsl:when>
                                    <xsl:when test="Person">
                                        <xsl:apply-templates select="Person"/>
                                    </xsl:when>
                                </xsl:choose>
                            </p>
                            <br/>
                        </xsl:for-each>
                    </xsl:if>

                    <a name="TechnicalCustomer"/>
                    <xsl:if test="TechnicalCustomer">
                        <xsl:if test="count(TechnicalCustomer) = 1">
                            <p class="field  no-first-line">Технический заказчик:</p>
                        </xsl:if>
                        <xsl:if test="count(TechnicalCustomer) &gt; 1">
                            <p class="field  no-first-line">Технические заказчики:</p>
                        </xsl:if>
                        <xsl:for-each select="TechnicalCustomer">
                            <p class="organization">
                                <xsl:choose>
                                    <xsl:when test="Organization">
                                        <xsl:apply-templates select="Organization"/>
                                    </xsl:when>
                                    <xsl:when test="ForeignOrganization">
                                        <xsl:apply-templates select="ForeignOrganization"/>
                                    </xsl:when>
                                </xsl:choose>
                            </p>
                            <p class="no-first-line">
                            <xsl:if test="SROMembership">
                                <xsl:apply-templates select="SROMembership"/>
                            </xsl:if>
                            </p>
                            <br/>
                        </xsl:for-each>
                    </xsl:if>
                    <div class="pagebreak"/>
                    <br/>
                    <br/>

                    <!-- Сведения о составе проектной документации -->
                    <a name="ProjectDocumentationContent"/>
                    <p class="title">Состав проектной документации</p>
                    <xsl:choose>
                        <xsl:when test="NonIndustrialObject">
                            <xsl:call-template name="NonLinearProjectDocumentContent">
                                <xsl:with-param name="DocumentationContent" select="$Object/ProjectDocumentation"/>
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="IndustrialObject">
                            <xsl:call-template name="NonLinearProjectDocumentContent">
                                <xsl:with-param name="DocumentationContent" select="$Object/ProjectDocumentation"/>
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="LinearObject">
                            <xsl:call-template name="LinearProjectDocumentContent">
                                <xsl:with-param name="DocumentationContent" select="$Object/ProjectDocumentation"/>
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                    <br/>

                    <!-- Сведения о составе 3D - модели  -->
                    <xsl:if test="//Model">
                        <a name="Model"/>
                        <p class="title">Сведения о составе 3D модели объекта</p>

                        <table>
                            <tr>
                                <td class="title" width="50%">Объект / Составная часть объекта</td>
                                <td class="title" width="50%">Сведения о составе модели</td>
                            </tr>

                            <xsl:for-each select="//Model">
                                <xsl:variable name="FileCount" select="count(ModelFile)"/>
                                <xsl:for-each select="ModelFile">
                                    <tr>
                                        <xsl:if test="position() = 1">
                                            <td>
                                                <xsl:attribute name="rowspan">
                                                    <xsl:value-of select="$FileCount"/>
                                                </xsl:attribute>
                                                <xsl:value-of select="../../Name"/>
                                                <br/>
                                                <xsl:value-of select="../Description"/>
                                            </td>
                                        </xsl:if>
                                        <td> 
										<xsl:if test="@description">Описание: <xsl:value-of select="@description"/><br/></xsl:if>
										Имя файла: <xsl:value-of select="FileName"/><br/> Тип модели: <xsl:value-of select="FileFormat"/><br/> Контрольная сумма: <xsl:value-of select="FileChecksum"/>

										<xsl:if test="SignFile">
										<br/><br/>Подписи файла модели:<br/>
											<xsl:for-each select="SignFile">
											<xsl:number value="position()" format="1) "/>Имя файла подписи: <xsl:value-of select="FileName"/><br/> Тип файла подписи: <xsl:value-of select="FileFormat"/><br/> Контрольная сумма: <xsl:value-of select="FileChecksum"/><br/><br/>
											</xsl:for-each>
										</xsl:if>
										</td>
										</tr>
                                </xsl:for-each>
                            </xsl:for-each>

                        </table>

                    </xsl:if>

                    <xsl:if test="UsedNorms">
                        <a name="UsedNorms"/>
                        <p class="title">Перечень документов по стандартизации, используемых полностью или частично на добровольной основе для соблюдения требований технических регламентов (из числа документов по стандартизации, включенных в перечни документов в области стандартизации, в результате
                            применения которых на добровольной основе обеспечивается соблюдение требований технических регламентов)</p>
                        <xsl:for-each select="UsedNorms/UsedNorm">
                            <p>
                                <xsl:number value="position()" format="1. "/>
                                <xsl:value-of select="."/>
                            </p>
                        </xsl:for-each>
                        <br/>
                        <br/>
                    </xsl:if>

                    <a name="ProjectDecisionDocuments"/>
                    <p class="title">Основания для разработки проектной документации</p>
                    <table>
                        <tr>
                            <td style="width: 10%;" class="title">№ п/п</td>
                            <td style="width: 50%;" class="title">Наименование и реквизиты документа</td>
                            <td style="width: 25%;" class="title">Имя файла документа (подписи документа)</td>
                            <td class="title">Контрольная сумма файла документа (подписи документа)</td>
                        </tr>

                        <xsl:for-each select="ProjectDecisionDocuments/Document">
                            <xsl:sort select="DocType"/>
                            <xsl:call-template name="MakeDocFileTable"/>
                        </xsl:for-each>

                    </table>

                    <a name="ProjectInitialDocuments"/>
                    <p class="title">Состав исходно-разрешительной документации</p>
                    <table>
                        <tr>
                            <td style="width: 10%;" class="title">№ п/п</td>
                            <td style="width: 50%;" class="title">Наименование и реквизиты документа</td>
                            <td style="width: 25%;" class="title">Имя файла документа (подписи документа)</td>
                            <td class="title">Контрольная сумма файла документа (подписи документа)</td>
                        </tr>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType = '05.03']">
                            <tr>
                                <td colspan="4" class="title">Задание на проектирование</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType = '05.03']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '17.00' and DocType &lt; '17.00']">
                            <tr>
                                <td colspan="4" class="title">Правоустанавливающие документы</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '17.00' and DocType &lt; '18.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '03.00' and DocType &lt; '04.00']">
                            <tr>
                                <td colspan="4" class="title">Документы по планировке территории, в том числе градостроительный план земельного участка</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '03.00' and DocType &lt; '04.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '02.00' and DocType &lt; '03.00']">
                            <tr>
                                <td colspan="4" class="title">Заключения экспертизы</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '02.00' and DocType &lt; '03.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '05.00' and DocType &lt; '06.00']">
                            <tr>
                                <td colspan="4" class="title">Задания и программы инженерных изысканий</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '05.00' and DocType &lt; '06.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="EngineeringSurveyDocuments/Document[DocType &gt; '06.00' and DocType &lt; '07.00']">
                            <tr>
                                <td colspan="4" class="title"><a name="EngineeringSurveyDocuments"/>Отчетная документация по результатам инженерных изысканий</td>
                            </tr>
                            <xsl:for-each select="EngineeringSurveyDocuments/Document[DocType &gt; '06.00' and DocType &lt; '07.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '04.00' and DocType &lt; '05.00']">
                            <tr>
                                <td colspan="4" class="title">Технические условия предусмотренные частью 7 статьи 48 Градостроительного кодекса Российской Федерации и иными нормативными правовыми актами, документы о согласовании отступлений от положений технических условий</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '04.00' and DocType &lt; '05.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '19.00' and DocType &lt; '20.00']">
                            <tr>
                                <td colspan="4" class="title">Специальные технические условия предусмотренные частью 7 статьи 48 Градостроительного кодекса Российской Федерации и иными нормативными правовыми актами, документы о согласовании отступлений от положений специальных технических
                                    условий</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '19.00' and DocType &lt; '20.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '12.00' and DocType &lt; '13.00']">
                            <tr>
                                <td colspan="4" class="title">Документы в отношении типовой проектной документации повторного использования</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '12.00' and DocType &lt; '13.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '13.00' and DocType &lt; '14.00']">
                            <tr>
                                <td colspan="4" class="title">Решения и обоснования сноса объектов капитального строительства</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '13.00' and DocType &lt; '14.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '20.00' and DocType &lt; '21.00']">
                            <tr>
                                <td colspan="4" class="title">Разрешения</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '20.00' and DocType &lt; '21.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '18.00' and DocType &lt; '19.00']">
                            <tr>
                                <td colspan="4" class="title">Обоснование безопасности опасного производственного объекта</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '18.00' and DocType &lt; '19.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '22.00' and DocType &lt; '23.00']">
                            <tr>
                                <td colspan="4" class="title">Документы в области организации транспортной инфраструктуры</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '22.00' and DocType &lt; '23.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '23.00' and DocType &lt; '24.00']">
                            <tr>
                                <td colspan="4" class="title">Документы в отношении объектов культурного наследия</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '23.00' and DocType &lt; '24.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '21.00' and DocType &lt; '22.00']">
                            <tr>
                                <td colspan="4" class="title">Документы в сфере охраны окружающей среды и недрапользования</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '21.00' and DocType &lt; '22.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '10.00' and DocType &lt; '11.00']">
                            <tr>
                                <td colspan="4" class="title">Выписка из реестра членов саморегулируемой организации</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '10.00' and DocType &lt; '11.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType &gt; '24.00' and DocType &lt; '25.00']">
                            <tr>
                                <td colspan="4" class="title">Расчеты</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '24.00' and DocType &lt; '25.00']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType = '99.99']">
                            <tr>
                                <td colspan="4" class="title">Иные исходно-разрешительные документы</td>
                            </tr>
                            <xsl:for-each select="ProjectInitialDocuments/Document[DocType = '99.99']">
                                <xsl:sort select="DocType"/>
                                <xsl:call-template name="MakeDocFileTable"/>
                            </xsl:for-each>
                        </xsl:if>
                    </table>
                <br/>
                    
                    <xsl:if test="AdditionalData">
                        <a name="AdditionalData"/>
                        <p class="title">Перечень дополнительных материалов</p>
                        <table style="border-style: solid; border-width:1px; border-collapse: collapse; align: center;">
                            <tr>
                                <td style="width: 65%" class="title">Описание материала</td>
                                <td style="width: 35%" class="title">Имя файла материала (подписи)</td>
                            </tr>
                            
                            <xsl:for-each select="AdditionalData/Data">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </table>
                        <br/>
                    </xsl:if>

                    <xsl:if test="FinanceSources">
                        <a name="FinanceSources"/>
                        <p class="title">Сведения об источнике (источниках) и размере финансирования строительства (реконструкции, капитального ремонта, сноса) объекта капитального строительства</p>

                        <table style="border-style: solid; border-width:1px; border-collapse: collapse; align: center;">
                            <tr>
                                <td style="width: 40%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Источник финансирования <xsl:if test="FinanceSources/FinanceComment">
                                        <sup><small>*</small></sup>
                                    </xsl:if>
                                </td>
                                <td style="width: 40%; border-style: solid; border-width:1px; font-weight: bold;text-align: center;">Наименование уровня бюджета/ Сведения о юридическом лице (владельце средств)</td>
                                <td style="width: 20%; border-style: solid; border-width:1px; font-weight: bold;text-align: center;">Доля финансирования, %</td>
                            </tr>

                            <xsl:for-each select="FinanceSources/BudgetSource">
                                <tr>
                                    <td>Бюджетные средства</td>
                                    <td>
                                        <xsl:value-of select="BudgetLevel"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="SourceRatio"/>
                                    </td>
                                </tr>
                            </xsl:for-each>

                            <xsl:for-each select="FinanceSources/StateCustomerSource">
                                <tr>
                                    <td>Средства юридических лиц, перечисленных в части 2 статьи 8.3 Градостроительного кодекса Российской Федерации</td>
                                    <td>
                                        <xsl:apply-templates select="Owner/Organization"/>
                                        <xsl:apply-templates select="Owner/ForeignOrganization"/>
                                        <xsl:apply-templates select="Owner/IP"/>
                                        <xsl:apply-templates select="Owner/Person"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="SourceRatio"/>
                                    </td>
                                </tr>
                            </xsl:for-each>

                            <xsl:for-each select="FinanceSources/PrivateSource">
                                <tr>
                                    <td>Средства, не входящие в перечень, указанный в части 2 статьи 8.3 Градостроительного кодекса Российской Федерации</td>
                                    <td> </td>
                                    <td>
                                        <xsl:value-of select="SourceRatio"/>
                                    </td>
                                </tr>
                            </xsl:for-each>

                        </table>
						<br/>
						<xsl:if test="FinanceSources/FinanceComment">
							<xsl:call-template name="StringReplace">
								<xsl:with-param name="input" select="FinanceSources/FinanceComment"/>
							</xsl:call-template>
						</xsl:if>
                    </xsl:if>

                    <xsl:if test="$Object/ClimateConditions">
                        <a name="ClimateConditions"/>
                        <p class="title">Сведения о климатической, географической и инженерно-геологической характеристике района, на территории которого предполагается осуществлять строительство объекта</p>

                        <xsl:if test="$Object/ClimateConditions/ClimateDistrict">
                            <p>Климатический район, подрайон: <xsl:text> </xsl:text>
                                <xsl:for-each select="$Object/ClimateConditions/ClimateDistrict">
                                    <xsl:value-of select="."/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </p>
                        </xsl:if>

                        <xsl:if test="$Object/ClimateConditions/GeologicalConditions">
                            <p>Категория сложности инженерно-геологических условий: <xsl:text> </xsl:text>
                                <xsl:for-each select="$Object/ClimateConditions/GeologicalConditions">
                                    <xsl:value-of select="."/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </p>
                        </xsl:if>

                        <xsl:if test="$Object/ClimateConditions/WindDistrict">
                            <p>Ветровой район: <xsl:text> </xsl:text>
                                <xsl:for-each select="$Object/ClimateConditions/WindDistrict">
                                    <xsl:value-of select="."/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </p>
                        </xsl:if>

                        <xsl:if test="$Object/ClimateConditions/SnowDistrict">
                            <p>Снеговой район: <xsl:text> </xsl:text>
                                <xsl:for-each select="$Object/ClimateConditions/SnowDistrict">
                                    <xsl:value-of select="."/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </p>
                        </xsl:if>

                        <xsl:if test="$Object/ClimateConditions/SeismicActivity">
                            <p>Интенсивность сейсмических воздействий: <xsl:text> </xsl:text>
                                <xsl:for-each select="$Object/ClimateConditions/SeismicActivity">
                                    <xsl:value-of select="."/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </p>
                        </xsl:if>
                        <br/>
                        <br/>
                        <xsl:apply-templates select="$Object/ClimateConditions/ClimateNote"/>
                        <br/>
                        <br/>
                    </xsl:if>

                    <xsl:if test="$Object/ClimateConditions/DangerousNatureProcesses">
                        <a name="DangerousNatureProcesses"/>
                        <p class="title">Возможность опасных природных процессов и явлений и техногенных воздействий на территории, на которой будут осуществляться строительство, реконструкция и эксплуатация здания или сооружения</p>
                        <xsl:apply-templates select="$Object/ClimateConditions/DangerousNatureProcesses"/>
                        <br/>
                        <br/>
                    </xsl:if>

                    <!-- Сведения об объекте, функцональном назначении -->
                    <!-- Нелинейный объект -->
                    <a name="Object"/>
                    <xsl:if test="IndustrialObject or NonIndustrialObject">
                        <p class="title">Сведения об объекте капитального строительства, его функциональном назначении, составе и характеристики производства, номенклатуре выпускаемой продукции (работ, услуг)</p>
                        <br/>
                        <p>
                            <span class="field">Наименование объекта капитального строительства: </span>
                            <xsl:value-of select="$Object/Name"/>
                        </p>
                        <p>
                            <span class="field">Почтовый (строительный) адрес (местоположение) объекта капитального строительства: </span>
                            <xsl:apply-templates select="$Object/Address"/>
                        </p>
                        <br/>
                    </xsl:if>

                    <!-- Линейный объект -->
                    <xsl:if test="LinearObject">
                        <a name="LinearObject"/>
                        <p class="title">Сведения о линейном объекте</p>
                        <br/>
                        <p>
                            <span class="field">Наименование объекта капитального строительства: </span>
                            <xsl:value-of select="$Object/Name"/>
                        </p>
                        <br/>
                        <p class="field">Почтовый (строительный) адрес (местоположение) объекта капитального строительства: </p>
                        <br/>
                        <p>
                            <span class="field">Местоположение начального пункта: </span>
                            <xsl:apply-templates select="$Object/Address"/>
                        </p>
                        <br/>
                        <p>
                            <span class="field">Местоположение конечного пункта: </span>
                            <xsl:apply-templates select="$Object/FinishAddress"/>
                        </p>
                        <br/>
                        <br/>
                    </xsl:if>
                   
                   <p>Объект расположен на 
                       <xsl:if test="$Object/@Placement=1"> суше.</xsl:if>
                       <xsl:if test="$Object/@Placement=2"> воде.</xsl:if>    
                   </p>
                   <br/>
                   
                   <xsl:if test="$Object/@DangerousAndComplex">
                       <xsl:call-template name="PrintDangerousAndComplexObject">
                           <xsl:with-param name="Code" select="$Object/@DangerousAndComplex"/>
                       </xsl:call-template>
                       <br/>
                   </xsl:if>
                   
                   <xsl:if test="$Object/@Unique">
                       <xsl:call-template name="PrintUniqueObject">
                           <xsl:with-param name="Code" select="$Object/@Unique"/>
                       </xsl:call-template>
                       <br/>
                   </xsl:if>

                    <a name="Functions"/>
                    <xsl:call-template name="PrintFunctions">
                        <xsl:with-param name="Functions" select="$Object/Functions"/>
                    </xsl:call-template>
                    <br/>

                    <xsl:if test="$Object/LinearObjectNote">
                        <xsl:apply-templates select="$Object/LinearObjectNote"/>
                    </xsl:if>

                    <xsl:if test="$Object/FunctionsFeatures">
                        <a name="FunctionsFeatures"/>
                        <p class="title">Сведения о принадлежности к объектам транспортной инфраструктуры и к другим объектам, функционально-технологические особенности которых влияют на их безопасность</p>

                        <xsl:apply-templates select="$Object/FunctionsFeatures"/>
                    </xsl:if>
                   
                   <p class="title">Сведения о сроках проведении работ: </p>
                   <p class="no-first-line">Продолжительность работ, месяц: <xsl:value-of select="$Object/ConstructionDuration"/></p>
                   
                   <xsl:if test="$Object/ConstructionDates">
                       <xsl:if test="$Object/ConstructionDates/BeginDate">
                           <p class="no-first-line">Дата начала работ: <xsl:call-template name="formatdate"><xsl:with-param name="DateTimeStr" select="$Object/ConstructionDates/BeginDate"/></xsl:call-template></p>
                       </xsl:if>
                       <xsl:if test="$Object/ConstructionDates/EndDate">
                           <p class="no-first-line">Дата окончания работ: <xsl:call-template name="formatdate"><xsl:with-param name="DateTimeStr" select="$Object/ConstructionDates/EndDate"/></xsl:call-template></p>
                       </xsl:if>
                       <xsl:if test="$Object/ConstructionDates/OperationDate">
                           <p class="no-first-line">Дата ввода объекта в эксплуатацию: <xsl:call-template name="formatdate"><xsl:with-param name="DateTimeStr" select="$Object/ConstructionDates/OperationDate"/></xsl:call-template></p>
                       </xsl:if>
                   </xsl:if>
                   <br/>
                   

                    <xsl:if test="$Object/PowerIndicator">
                        <a name="PowerIndicator"/>
                        <p class="title">Сведения о проектной мощности объекта капитального стрительства</p>
                        <table style="border-style: solid; border-width:1px; border-collapse: collapse; align: center;">
                            <tr>
                                <td style="width: 50%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Наименование технико-экономического показателя </td>
                                <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Единица измерения</td>
                                <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold;text-align: center; ">Значение</td>
                            </tr>
                            <xsl:apply-templates select="$Object/PowerIndicator"/>
                        </table>
                        <br/>
                        <br/>
                    </xsl:if>

                    <xsl:if test="$Object/TEI">
                        <a name="TEI"/>
                        <p class="title">Технико-экономические показатели объекта капитального строительства</p>
                        <table style="border-style: solid; border-width:1px; border-collapse: collapse; align: center;">
                            <tr>
                                <td style="width: 50%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Наименование технико-экономического показателя</td>
                                <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold;text-align: center; ">Единица измерения</td>
                                <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold;text-align: center; ">Значение</td>
                            </tr>
                            <xsl:apply-templates select="$Object/TEI"/>
                        </table>
                        <br/>
                    </xsl:if>
                   
                    <xsl:if test="$Object/EnergyEfficiency">
                        <a name="EnergyEfficiency"/>
                        <p class="title">Сведения о классе энергетической эффективности  и о повышении энергетической эффективности</p>
                        <p>Класс энергоэффективности: <xsl:value-of select="$Object/EnergyEfficiency/EnergyEfficiencyClass"/></p>
                        <br/>
                        <xsl:if test="$Object/EnergyEfficiency/EnergyEfficiencyImproving">
                            <xsl:apply-templates select="$Object/EnergyEfficiency/EnergyEfficiencyImproving"/>
                        </xsl:if>
                    </xsl:if>

                    <xsl:if test="$Object/DangerousIndustrialObject">
                        <a name="DangerousIndustrialObject"/>
                        <p class="title">Сведения о принадлежности к опасным производственным объектам</p>
                        <p>Класс опасности производственного объекта: <xsl:value-of select="$Object/DangerousIndustrialObject"/></p>
                    </xsl:if>
                    
                    <xsl:if test="$Object/LinearObjectCategory">
                        <a name="LinearObjectCategory"/>
                        <p class="title">Сведения о категории линейного объекта</p>
                        <xsl:apply-templates select="$Object/LinearObjectCategory"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/LinearObjectClass">
                        <a name="LinearObjectClass"/>
                        <p class="title">Сведения о классе линейного объекта</p>
                        <xsl:apply-templates select="$Object/LinearObjectClass"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/FireDangerCategory">
                        <a name="FireDangerCategory"/>
                        <p class="title">Сведения о пожарной и взрывопожарной опасности</p>
                        <p>Класс взрывопожарной опасности: <xsl:value-of select="$Object/FireDangerCategory"/></p>
                        <br/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/PeoplePermanentStay">
                        <a name="PeoplePermanentStay"/>
                        <p class="title">Сведения о наличии помещений с постоянным пребыванием людей</p>
                        <xsl:apply-templates select="$Object/PeoplePermanentStay"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/ResponsibilityLevel">
                        <a name="ResponsibilityLevel"/>
                        <p class="title">Сведения об уровне ответственности</p>
                        <p>Уровень ответсвенности: <xsl:value-of select="$Object/ResponsibilityLevel"/></p>
                        <br/>                        
                    </xsl:if>

                    <xsl:if test="$Object/ObjectParts">
                        <a name="Parts"/>
                        <p class="title">В состав объекта входят следующие объекты капитального строительства:</p>
                        <xsl:apply-templates select="$Object/ObjectParts">
                            <xsl:with-param name="level" select="1."/>
                        </xsl:apply-templates>
                    </xsl:if>
                    
                    <xsl:if test="$Object/Routes">
                        <a name="Routes"/>
                        <xsl:if test="$Object/Routes/RoutesNote">
                            <p class="title">Описание вариантов маршрутов прохождения линейного объекта по территории района строительства, обоснование выбранного варианта трассы</p>
                            <xsl:apply-templates select="$Object/Routes/RoutesNote"/>
                        </xsl:if>
                        
                        <xsl:for-each select="$Object/Routes/Route">
                            <p class="subtitle">
                                <xsl:value-of select="Name"/>
                            </p>
                            <xsl:apply-templates select="Note"/>
                        </xsl:for-each>
                    </xsl:if>
                    
                    <xsl:if test="$Object/Resources">
                        <a name="Resources"/>
                            <p class="title">Cведения о потребности объекта капитального строительства в топливе, газе, воде и электрической энергии</p>
                        <xsl:apply-templates select="$Object/Resources/Note"/>
                            <table>
                                <tr>
                                    <td style="width: 10%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;"> № п/п </td>
                                    <td style="width: 65%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;"> Наименование ресурса (единица измерения) </td>
                                    <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;"> Требуемый объем </td>
                                </tr>
                                
                                <xsl:for-each select="//Resources/Resource">
                                    <tr>
                                        <td>
                                            <xsl:number value="position()" format="1. "/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Name"/> (<xsl:apply-templates select="Measure"/>) </td>
                                        <td>
                                            <xsl:value-of select="Value"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            <br/>
                            <br/>
                        
                    </xsl:if>
                    
                    <xsl:if test="$Object/RawResources">
                        <a name="RawResources"/>
                        <p class="title">Сведения о сырьевой базе, потребности производства в воде, топливно-энергетических ресурсах</p>
                        
                        <xsl:apply-templates select="$Object/RawResources/Note"/>
                        
                        <table>
                            <tr>
                                <td style="width: 10%;" class="title">№ п/п</td>
                                <td style="width: 65%;" class="title">Наименование сырья, ресурса (единица измерения)</td>
                                <td style="width: 25%;" class="title">Требуемый объем</td>
                            </tr>
                            <xsl:for-each select="$Object/RawResources/Resource">
                                <tr>
                                    <td>
                                        <xsl:number value="position()" format="1. "/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Name"/> (<xsl:apply-templates select="Measure"/>) </td>
                                    <td>
                                        <xsl:value-of select="Value"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </xsl:if>
                    
                    <xsl:if test="$Object/ResourceUseInfo">
                        <a name="ResourceUseInfo"/>
                        <p class="title">Сведения о комплексном использовании сырья, вторичных энергоресурсов, отходов производства</p>
                        <p>
                            <xsl:apply-templates select="$Object//ResourceUseInfo"/>
                        </p>
                    </xsl:if>
                    
                    <xsl:if test="$Object//RenewableSourceInfo">
                        <a name="RenewableSourceInfo"/>
                        <p class="title">Сведения об использовании возобновляемых источников энергии и вторичных энергетических ресурсов</p>
                        <p>
                            <xsl:apply-templates select="$Object//RenewableSourceInfo"/>
                        </p>
                    </xsl:if>

                    <xsl:if test="$Object/LandCategory">
                        <a name="LandCategory"/>
                        <p class="title">Сведения о категории земель, на которых планируется разместить (размещен) объект капитального строительства</p>
                        <xsl:call-template name="MakeLandCategory">
                            <xsl:with-param name="Code" select="$Object/LandCategory"/>
                        </xsl:call-template>
                    </xsl:if>
  

                    <xsl:if test="$Object/LandInfo">
                        <a name="LandInfo"/>
                        <p class="title">Сведения о земельных участках, изымаемых для государственных или муниципальных нужд, о земельных участках, в отношении которых устанавливается сервитут, публичный сервитут и (или) заключается договор аренды (субаренды)</p>

                        <xsl:apply-templates select="$Object/LandInfo/CommonLandInfo"/>
                        <xsl:if test="$Object/LandInfo/LandAreaInfo">
                            <table>
                                <tr>
                                    <td style="width: 30%;">
                                        <p class="center field">Кадастровый номер земельного участка (категория земель)</p>
                                    </td>
                                    <td style="width: 70%;">
                                        <p class="center field">Описание участка</p>
                                    </td>
                                </tr>

                                <xsl:for-each select="$Object/LandInfo/LandAreaInfo">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="CadastralNumber"/><br/> (Категория земель - <xsl:call-template name="MakeLandCategory"><xsl:with-param name="Code" select="LandCategory"/></xsl:call-template>) </td>
                                        <td>
                                            <xsl:value-of select="UsingNote"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            <br/><br/>
                        </xsl:if>
                    </xsl:if>

                    <xsl:if test="$Object/LandFunds">
                        <a name="LandFunds"/>
                        <p class="title">Cведения о размере средств, требующихся для возмещения убытков правообладателям земельных участков и (или) для внесения в качестве арендной платы, платы за сервитут, публичный сервитут и (или) для выкупа земельных участков</p>
                        <xsl:apply-templates select="$Object/LandFunds"/>
                    </xsl:if>

                    <xsl:if test="$Object/PatentsUsed">
                        <a name="PatentsUsed"/>
                        <p class="title">Сведения об использованных в проекте изобретениях, результатах проведенных патентных исследований</p>
                        <xsl:apply-templates select="$Object/PatentsUsed"/>
                        <br/>
                    </xsl:if> 
                    
                    <xsl:if test="ProjectInitialDocuments/Document[DocType = '19.01' or DocType = '19.02'] or $Object/SpecialRequirements">
                        <a name="SpecialRequirements"/>
                        <p class="title">Сведения о наличии разработанных и согласованных специальных технических условий</p>
                        <xsl:if test="$Object/SpecialRequirements">
                            <xsl:apply-templates select="$Object/SpecialRequirements"/>
                        </xsl:if>

                        <xsl:if test="ProjectInitialDocuments/Document[DocType = '19.01' or DocType = '19.02']">
                            <p class="title">Специальные технические условия</p>
                            <table>
                                <tr>
                                    <td style="width: 10%;"> № п/п </td>
                                    <td style="width: 50%;"> Наименование и реквизиты документа </td>
                                </tr>
                                <xsl:for-each select="ProjectInitialDocuments/Document[DocType &gt; '19.00' and DocType &lt; '20.00']">
                                    <xsl:sort select="DocType"/>
                                    <tr>
                                        <td>
                                            <xsl:number value="position()" format="1. "/>
                                        </td>
                                        <td>
                                            <xsl:apply-templates select="."/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            <br/>
                        </xsl:if>

                    </xsl:if>
                    
                    <xsl:if test="$Object/StaffNote">
                        <a name="StaffNote"/>
                        <p class="title">Данные о численности работников на объекте капитального строительства и их профессионально-квалификационном составе, числе рабочих мест и другие данные, установленные заданием на проектирование и характеризующие объект капитального строительства</p>
                        <xsl:apply-templates select="$Object/StaffNote"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/SoftwareUsed">
                        <a name="SoftwareUsed"/>
                        <p class="title">Сведения о компьютерных программах, которые использовались выполнении расчетов конструктивных элементов зданий, строений и сооружений</p>
                        <xsl:apply-templates select="$Object/SoftwareUsed/SoftwareNote"/>
                        <xsl:if test="$Object/SoftwareUsed/Software">
                            <table>
                                <tr>
                                    <td class="title" style="width: 10%;">№ п/п</td>
                                    <td class="title" style="width: 40%;">Наименование программного обеспечения (версия)</td>
                                    <td class="title" style="width: 50%;">Сведения при подготовки какой части проектной документации использовался программный продукт</td>
                                </tr>

                                <xsl:for-each select="$Object/SoftwareUsed/Software">
                                    <tr>
                                        <td>
                                            <xsl:number value="position()" format="1. "/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Name"/>
                                            <xsl:if test="Version"> (версия <xsl:value-of select="Version"/>)</xsl:if>
                                        </td>
                                        <td>
                                            <xsl:value-of select="UsingNote"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </xsl:if>
                        <br/>
                    </xsl:if>

                    <xsl:if test="$Object/StagesInfo">
                        <a name="StagesInfo"/>
                        <xsl:if test="LinearObject">
                            <p class="title">Описание принципиальных проектных решений, обеспечивающих надежность линейного объекта, последовательность его строительства, намечаемые этапы строительства и планируемые сроки ввода их в эксплуатацию</p>
                        </xsl:if>
                        <xsl:if test="not(LinearObject)">
                            <p class="title">Сведения об этапах строительства объекта капитального строительства (обоснование возможности осуществления строительства по этапам)</p>
                        </xsl:if>
                        <xsl:apply-templates select="$Object/StagesInfo/ReasonNote"/>
                        <xsl:if test="$Object/StagesInfo/Stage">
                            <xsl:for-each select="$Object/StagesInfo/Stage">
                                <p class="subtitle no-first-line">
                                    <xsl:value-of select="Number"/>
                                </p>
                                <xsl:if test="BeginDate">
                                    <p class="no-first-line">Дата начала: <xsl:call-template name="formatdate"><xsl:with-param name="DateTimeStr" select="BeginDate"/></xsl:call-template></p>
                                </xsl:if>
                                <xsl:if test="EndDate">
                                    <p class="no-first-line">Дата окончания: <xsl:call-template name="formatdate"><xsl:with-param name="DateTimeStr" select="EndDate"/></xsl:call-template></p>
                                </xsl:if>
                                <xsl:if test="OperationDate">
                                    <p class="no-first-line">Дата ввода в эксплуатацию: <xsl:call-template name="formatdate"><xsl:with-param name="DateTimeStr" select="OperationDate"/></xsl:call-template></p>
                                </xsl:if>
                                <xsl:apply-templates select="Note"/>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:if>
                    
                    <xsl:if test="$Object/DestroyFunds">
                        <a name="DestroyFunds"/>
                        <p class="title">Сведения о предполагаемых затратах, связанных со сносом зданий и сооружений, переселением людей, переносом сетей инженерно-технического обеспечения</p>
                        <xsl:apply-templates select="$Object/DestroyFunds"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/EnergyEfficiencyLinks">
                        <a name="EnergyEfficiencyLinks"/>
                        <p class="title">Сведения о разделах и пунктах проектной документации, содержащих решения и мероприятия по обеспечению соблюдения требований энергетической эффективности и оснащенности зданий, строений, сооружений приборами учета используемых энергетических ресурсов</p>
                        <xsl:for-each select="$Object/EnergyEfficiencyLinks/ProjectDocumentationLink">
                            <xsl:variable name="Num" select="DocNumber"/>
							<xsl:variable name="space">&#160;</xsl:variable>
                            <p><xsl:number value="position()" format="1. "/><xsl:text> </xsl:text><xsl:value-of select="DocSectionLink"/><xsl:text>,</xsl:text><xsl:value-of select="$space"/><xsl:value-of select="$Object/ProjectDocumentation//Document[DocNumber=$Num]/DocNumber"/><xsl:value-of select="$space"/><xsl:value-of select="$Object/ProjectDocumentation//Document[DocNumber=$Num]/DocName"/></p>
                        </xsl:for-each>
                        <br/>
                        <br/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/IndustrialSafetyLinks">
                        <a name="IndustrialSafetyLinks"/>
                        <p class="title">Сведения о разделах и пунктах проектной документации, содержащих решения и мероприятия по обеспечению соблюдения требований промышленной безопасности</p>
                        <xsl:for-each select="$Object/IndustrialSafetyLinks/ProjectDocumentationLink">
                            <xsl:variable name="Num" select="DocNumber"/>
							<xsl:variable name="space">&#160;</xsl:variable>
                            <p><xsl:number value="position()" format="1. "/><xsl:text> </xsl:text><xsl:value-of select="DocSectionLink"/><xsl:text>,</xsl:text><xsl:value-of select="$space"/><xsl:value-of select="$Object/ProjectDocumentation//Document[DocNumber=$Num]/DocNumber"/><xsl:value-of select="$space"/><xsl:value-of select="$Object/ProjectDocumentation//Document[DocNumber=$Num]/DocName"/></p>
                        </xsl:for-each>
                        <br/>
                        <br/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/LandReclamationLink">
                        <a name="LandReclamationLink"/>
                        <p class="title">Сведения о наличии проекта рекультивации земель</p>
                        <xsl:apply-templates select="$Object/LandReclamationLink"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/NuclearPlantFeatures">
                        <a name="NuclearPlantFeaturesObjectList"/>
                        <p class="title">Список объектов производственного и непроизводственного назначения, входящих в состав проектируемой атомной станции</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/ObjectList"/>
                        
                        <a name="NuclearPlantFeaturesNuclearSafety"/>
                        <p class="title">Общие сведения о требованиях к системам, обеспечивающим ядерную и радиационную безопасность атомной станции</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/NuclearSafety"/>
      
                        <a name="NuclearPlantFeaturesOperationalLimits"/>
                        <p class="title">Исходные данные, пределы безопасной эксплуатации и эксплуатационные пределы оборудования и систем</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/OperationalLimits"/>
 
                        <a name="NuclearPlantFeaturesNuclearPlantControl"/>
                        <p class="title">Сведения об организации управления атомной станцией, ее эксплуатационном, ремонтном, техническом обслуживании, штатном расписании, требованиях к персоналу и условиях труда работников</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/NuclearPlantControl"/>

                        <a name="NuclearPlantFeaturesReactorPlant"/>
                        <p class="title">Основные сведения о реакторной установке, применяемой на атомной станции, об исходных технических требованиях на оборудование, применяемое на атомной станции, об основном и вспомогательном оборудовании основных технологических контуров атомной станции</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/ReactorPlant"/>

                        <a name="NuclearPlantFeaturesNuclearSafitySoftware"/>
                        <p class="title">Сведения о компьютерных программах, которые использовались для анализов безопасности атомной станции, об аттестации и верификации применяемых компьютерных программ, о системах сертификации, стандартизации и метрологическом обеспечении, о разработке
                            программы обеспечения качества, отчета по обоснованию безопасности и вероятностных анализов безопасности атомной станции первого и второго уровней, о стационарной системе непрерывного мониторинга технического состояния объекта капитального строительства</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/NuclearSafitySoftware"/>
                        
                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms1"/>
                        <p class="title">Сведения о программах мониторинга</p>
                        <p class="subtitle">Геотехнический мониторинг, включая мониторинг кренов и осадок:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/GeotechnicalMonitoring"/>
 
                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms2"/>
                        <p class="subtitle">Гидрогеологический мониторинг:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/HydrogeologicalMonitoring"/>
 
                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms3"/>
                        <p class="subtitle">Сейсмологический мониторинг:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/SeismologicalMonitoring"/>
 
                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms4"/>
                        <p class="subtitle">Метеорологический мониторинг:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/MeteorologicalMonitoring"/>
 
                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms5"/>
                        <p class="subtitle">Аэрологический мониторинг:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/AerologicalMonitoring"/>

                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms6"/>
                        <p class="subtitle">Гидрологический мониторинг:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/HydrologicalMonitoring"/>

                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms7"/>
                        <p class="subtitle">Геодинамический мониторинг:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/GeodynamicalMonitoring"/>

                        <a name="NuclearPlantFeaturesNuclearMonitoringPrograms8"/>
                        <p class="subtitle">Периодический контроль параметров внешних техногенных воздействий:</p>
                        <xsl:apply-templates select="$Object/NuclearPlantFeatures/MonitoringPrograms/TechnogenicMonitoring"/>
                    </xsl:if>

                    <xsl:if test="$Object/GasNetworksFeatures">
                        <a name="GasNetworksFeaturesStrengthCalculation"/>
                        <p class="title">Расчет трубопроводов на прочность и устойчивость</p>
                        <xsl:apply-templates select="$Object/GasNetworksFeatures/StrengthCalculation"/>

                        <a name="GasNetworksFeaturesEnvironmentalProtection"/>
                        <p class="title">Перечень мероприятий по охране окружающей среды, включающий мероприятия по предотвращению и (или) снижению возможного негативного воздействия на окружающую среду при эксплуатации линейного объекта и рациональному использованию природных ресурсов на период строительства и эксплуатации линейного объекта</p>
                        <xsl:apply-templates select="$Object/GasNetworksFeatures/EnvironmentalProtection"/>

                        <a name="GasNetworksFeaturesFireSafety"/>
                        <p class="title">Перечень мероприятий по обеспечению пожарной безопасности</p>
                        <xsl:apply-templates select="$Object/GasNetworksFeatures/FireSafety"/>

                        <a name="GasNetworksFeaturesOperationalSafety"/>
                        <p class="title">Перечень мероприятий по безопасной эксплуатации линейного объекта</p>
                        <xsl:apply-templates select="$Object/GasNetworksFeatures/OperationalSafety"/>

                        <a name="GasNetworksFeaturesPerairFrequency"/>
                        <p class="title">Нормативная периодичность выполнения работ по капитальному ремонту линейного объекта</p>
                        <xsl:apply-templates select="$Object/GasNetworksFeatures/PerairFrequency"/>
                    </xsl:if>
                    
                    <xsl:if test="$Object/EngineeringTerritoryProtection">
                        <a name="EngineeringTerritoryProtection"/>
                        <p class="title">Описание принципиальных проектных решений по инженерной защите территории при строительстве, реконструкции автомобильных дорог</p>
                        <xsl:apply-templates select="$Object/EngineeringTerritoryProtection"/>
                    </xsl:if>

                    <xsl:if test="DesignerNote">
                        <xsl:for-each select="DesignerNote">
                            <a>
                                <xsl:attribute name="name">Note<xsl:value-of select="position()"/></xsl:attribute>
                            </a>
                            <xsl:apply-templates select="."/>
                        </xsl:for-each>
                    </xsl:if>

                    <xsl:if test="DesignerAssurance">
                        <a name="DesignerAssurance"/>
                        <xsl:apply-templates select="DesignerAssurance/Assurance"/>
                        <table>
                            <xsl:for-each select="DesignerAssurance/Signer">
                                <tr>
                                    <td class="noborder">
                                        <p class="left">
                                            <xsl:value-of select="./Position"/>
                                        </p>
                                    </td>
                                    <td class="noborder">
                                        <p class="right">
                                            <xsl:value-of select="./FamilyName"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="./FirstName"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="./SecondName"/>
                                        </p>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </xsl:if>


                </div>
            </body>
        </html>

    </xsl:template>

    <!-- Конец основного шаблона -->


    <!-- Вывод сведений о документе и его авторе -->
    <xsl:template match="Document">
        <xsl:value-of select="DocName"/>
        <xsl:choose>
            <xsl:when test="DocChanges != ''"> (<xsl:value-of select="DocChanges"/>) </xsl:when>
        </xsl:choose>
        <xsl:if test="DocDate">
            <xsl:if test="DocDate != ''">
                <xsl:text> от </xsl:text>
                <xsl:call-template name="formatdate">
                    <xsl:with-param name="DateTimeStr" select="DocDate"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:if>
        <xsl:if test="DocNumber">
            <xsl:if test="DocNumber != ''">
                <xsl:text> № </xsl:text>
                <xsl:value-of select="DocNumber"/>
            </xsl:if>
        </xsl:if>
        <xsl:if test="DocIssueAuthor">
            <xsl:if test="DocIssueAuthor != ''">, <xsl:value-of select="DocIssueAuthor"/>
            </xsl:if>
        </xsl:if>

        <xsl:if test="FullDocIssueAuthor">
		<xsl:for-each select="FullDocIssueAuthor">
            <br/>Подготовлен:<br/>
                <xsl:apply-templates select="Organization"/>
                <xsl:apply-templates select="ForeignOrganization"/>
                <xsl:if test="IP">
                    <xsl:value-of select="IP/FamilyName"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[ ]]></xsl:text>
                    <xsl:value-of select="IP/FirstName"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[ ]]></xsl:text>
                    <xsl:value-of select="IP/SecondName"/>
                </xsl:if>
                <br/>
                <xsl:if test="SROMembership">
                    <xsl:apply-templates select="SROMembership"/>
					<br/>
                </xsl:if>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>

    <xsl:template name="TableDocument">
        <xsl:variable name="FileNumber" select="count(File) + count(File/SignFile)"/>
        <xsl:variable name="Pos" select="position()"/>
        <xsl:for-each select="File">
            <tr>
                <xsl:if test="position() = 1">
                    <td>
                        <xsl:if test="$FileNumber != 1">
                            <xsl:attribute name="rowspan">
                                <xsl:value-of select="$FileNumber"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="$Pos"/>
                    </td>
                </xsl:if>
                <td>
                    <xsl:value-of select="FileName"/>
                </td>
                <td>
                    <xsl:value-of select="FileFormat"/>
                </td>
                <td class="center">
                    <xsl:value-of select="FileChecksum"/>
                </td>
                <xsl:if test="position() = 1">
                    <td>
                        <xsl:if test="$FileNumber != 1">
                            <xsl:attribute name="rowspan"><xsl:value-of select="$FileNumber"/></xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="../DocNumber"/> от <xsl:call-template name="formatdate">
                            <xsl:with-param name="DateTimeStr" select="../DocDate"/>
                        </xsl:call-template><br/>
                        <xsl:value-of select="../DocName"/>
                    </td>
                </xsl:if>
            </tr>
            <xsl:for-each select="SignFile">
                <tr>
                    <td style="font-style: italic;">
                        <xsl:value-of select="FileName"/>
                    </td>
                    <td style="font-style: italic;">
                        <xsl:value-of select="FileFormat"/>
                    </td>
                    <td class="center" style="font-style: italic;">
                        <xsl:value-of select="FileChecksum"/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="Address | FinishAddress  | PostAddress">

        <!--  Если в адресе есть неформализованное описание адреса выводится оно, если нет, то формируется строка из составных частей -->
        <xsl:if test="position() != 1">; </xsl:if>
		<xsl:if test="PostIndex">
            <xsl:value-of select="PostIndex"/><xsl:text>, </xsl:text> 
        </xsl:if>
        <xsl:if test="Country">
            <xsl:value-of select="Country"/>
            <xsl:if test="Region != '00' or District or City or Settlement or Street or Building or Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="Region != '00'">
            <xsl:call-template name="MakeRegion">
                <xsl:with-param name="Code" select="Region"/>
            </xsl:call-template>
            <xsl:if test="District or City or Settlement or Street or Building or Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="District">
            <xsl:value-of select="District"/>
            <xsl:if test="City or Settlement or Street or Building or Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="City">
            <xsl:value-of select="City"/>
            <xsl:if test="Settlement or Street or Building or Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="Settlement">
            <xsl:value-of select="Settlement"/>
            <xsl:if test="Street or Building or Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="Street">
            <xsl:value-of select="Street"/>
            <xsl:if test="Building or Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="Building">
            <xsl:value-of select="Building"/>
            <xsl:if test="Room or Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="Room">
            <xsl:value-of select="Room"/>
            <xsl:if test="Note">, </xsl:if>
        </xsl:if>
        <xsl:if test="Note">
            <xsl:value-of select="Note"/>
        </xsl:if>

    </xsl:template>

    <!-- Вывод технико-экономическом показателе -->
    <xsl:template match="TEI | PowerIndicator | Resource">
        <tr>
            <td>
                <xsl:value-of select="Name"/>
            </td>
			<td class="center">
                <xsl:apply-templates select="Measure"/>
            </td>
            <td class="center">
                <xsl:value-of select="Value"/>
                <xsl:if test="OldValue"><br/>Предыдущее значение: <xsl:value-of select="OldValue"/></xsl:if>
            </td>
        </tr>
    </xsl:template>

    <!-- Вывод сведений о юридическом лице -->
    <xsl:template match="Organization | ExpertOrganization">
        <span class="field">Наименование: </span>
        <xsl:value-of select="OrgFullName"/>
        <br/>
        <span class="field">ОГРН: </span>
        <xsl:value-of select="OrgOGRN"/>
        <br/>
        <span class="field">ИНН: </span>
        <xsl:value-of select="OrgINN"/>
        <br/>
        <span class="field">КПП: </span>
        <xsl:value-of select="OrgKPP"/>
        <br/>
        <xsl:if test="Email">
            <xsl:if test="Email != ''">
                <span class="field">Адрес электронной почты: </span>
                <xsl:value-of select="Email"/>
                <br/>
            </xsl:if>
        </xsl:if>
        <span class="field">Место нахождения и адрес: </span>
        <xsl:apply-templates select="Address"/>
    </xsl:template>

    <!-- Вывод сведений об иностранном юридическом лице -->
    <xsl:template match="ForeignOrganization">
        <span class="field">Наименование: </span>
        <xsl:value-of select="OrgFullName"/>
        <br/>
        <span class="field">ИНН: </span>
        <xsl:value-of select="OrgINN"/>
        <br/>
        <span class="field">КПП: </span>
        <xsl:value-of select="OrgKPP"/>
        <br/>
        <xsl:if test="Email">
            <xsl:if test="Email != ''">
                <span class="field">Адрес электронной почты: </span>
                <xsl:value-of select="Email"/>
                <br/>
            </xsl:if>
        </xsl:if>
        <span class="field">Адрес: </span>
        <xsl:if test="Address">
            <xsl:apply-templates select="Address"/>
        </xsl:if>

    </xsl:template>

    <!-- Вывод сведений об индивидуальном предпринимателе -->
    <xsl:template match="IP">
	<xsl:variable name="space">&#32;</xsl:variable>
        <span class="field">Индивидуальный предприниматель: </span>
        <xsl:value-of select="FamilyName"/>
        <xsl:value-of select="$space"/>
        <xsl:value-of select="FirstName"/>
        <xsl:value-of select="$space"/>
        <xsl:value-of select="SecondName"/>
        <br/>
        <span class="field">ОГРНИП: </span>
        <xsl:value-of select="OGRNIP"/>
        <br/>
        <xsl:if test="Email">
            <xsl:if test="Email != ''">
                <span class="field">Адрес электронной почты: </span>
                <xsl:value-of select="Email"/>

                <br/>
            </xsl:if>
        </xsl:if>
        <span class="field">Адрес: </span>
        <xsl:apply-templates select="PostAddress"/>
    </xsl:template>

    <!-- Вывод сведений о физическом лице-->
    <xsl:template match="Person">
        <span class="field">ФИО: </span>
        <xsl:value-of select="FamilyName"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="FirstName"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="SecondName"/>
        <br/>
        <span class="field">СНИЛС: </span>
        <xsl:value-of select="SNILS"/>
        <br/>
        <xsl:if test="Email">
            <xsl:if test="Email != ''">
                <span class="field">Адрес электронной почты: </span>
                <xsl:value-of select="Email"/>
                <br/>
            </xsl:if>
        </xsl:if>
        <span class="field">Адрес: </span>
        <xsl:apply-templates select="PostAddress"/>
    </xsl:template>

    <!-- Вывод наименования инженерных изысканий -->
    <xsl:template name="MakeRII">
        <xsl:param name="TypeCode"/>
        <xsl:if test="$TypeCode = '06.01' or $TypeCode = 1">Инженерно-геодезические изыскания</xsl:if>
        <xsl:if test="$TypeCode = '06.02' or $TypeCode = 2">Инженерно-геологические изыскания</xsl:if>
        <xsl:if test="$TypeCode = '06.03' or $TypeCode = 3">Инженерно-гидрометеоролические изыскания</xsl:if>
        <xsl:if test="$TypeCode = '06.04' or $TypeCode = 4">Инженерно-экологические изыскания</xsl:if>
        <xsl:if test="$TypeCode = '06.05' or $TypeCode = 5">Инженерно-геотехнические изыскания</xsl:if>
        <xsl:if test="$TypeCode = '06.06' or $TypeCode = 6">Геотехнические исследования</xsl:if>
        <xsl:if test="$TypeCode = '06.07' or $TypeCode = 7">Обследования состояния грунтов оснований зданий и сооружений, их строительных конструкций</xsl:if>
        <xsl:if test="$TypeCode = '06.08' or $TypeCode = 8">Поиск и разведка подземных вод для целей водоснабжения</xsl:if>
        <xsl:if test="$TypeCode = '06.09' or $TypeCode = 9">Локальный мониторинг компонентов окружающей среды</xsl:if>
        <xsl:if test="$TypeCode = '06.10' or $TypeCode = 10">Разведка грунтовых строительных материалов</xsl:if>
        <xsl:if test="$TypeCode = '06.11' or $TypeCode = 11">Локальные обследования загрязнения грунтов и грунтовых вод</xsl:if>
    </xsl:template>

    <!-- Вывод наименования разделов проектной документации -->
    <xsl:template name="MakeProjectSection">
        <xsl:param name="Code"/>
        <xsl:if test="$Code = '07.01'">Раздел 1. Пояснительная записка</xsl:if>
        <xsl:if test="$Code = '07.02'">Раздел 2. Схема планировочной организации земельного участка</xsl:if>
        <xsl:if test="$Code = '07.03'">Раздел 3. Архитектурные решения</xsl:if>
        <xsl:if test="$Code = '07.04'">Раздел 4. Конструктивные и объемно-планировочные решения</xsl:if>
        <xsl:if test="$Code = '07.05'">Система электроснабжения</xsl:if>
        <xsl:if test="$Code = '07.06'">Система водоснабжения</xsl:if>
        <xsl:if test="$Code = '07.07'">Система водоотведения</xsl:if>
        <xsl:if test="$Code = '07.08'">Отопление, вентиляция и кондиционирование воздуха, тепловые сети</xsl:if>
        <xsl:if test="$Code = '07.09'">Сети связи</xsl:if>
        <xsl:if test="$Code = '07.10'">Система газоснабжения</xsl:if>
        <xsl:if test="$Code = '07.12'">Раздел 6. Проект организации строительства</xsl:if>
        <xsl:if test="$Code = '07.13'">Раздел 7. Проект организации работ по сносу или демонтажу объектов капитального строительства</xsl:if>
        <xsl:if test="$Code = '07.14'">Раздел 8. Перечень мероприятий по охране окружающей среды</xsl:if>
        <xsl:if test="$Code = '07.15'">Раздел 9. Мероприятия по обеспечению пожарной безопасности</xsl:if>
        <xsl:if test="$Code = '07.16'">Раздел 10. Мероприятия по обеспечению доступа инвалидов</xsl:if>
        <xsl:if test="$Code = '07.17'">Раздел 10.1. Мероприятия по обеспечению соблюдения требований энергетической эффективности и требований оснащенности зданий, строений и сооружений приборами учета используемых энергетических ресурсов</xsl:if>
        <xsl:if test="$Code = '07.18'">Раздел 11. Смета на строительство объектов капитального строительства</xsl:if>
        <xsl:if test="$Code = '07.19'">Раздел 12. Иная документация в случаях, предусмотренных федеральными законами</xsl:if>
        <xsl:if test="$Code = '08.01'">Раздел 1. Пояснительная записка</xsl:if>
        <xsl:if test="$Code = '08.02'">Раздел 2. Проект полосы отвода</xsl:if>
        <xsl:if test="$Code = '08.03'">Раздел 3. Технологические и конструктивные решения линейного объекта. Искусственные сооружения.</xsl:if>
        <xsl:if test="$Code = '08.04'">Раздел 4. Здания, строения и сооружения, входящие в инфраструктуру линейного объекта.</xsl:if>
        <xsl:if test="$Code = '08.05'">Раздел 5. Проект организации строительства</xsl:if>
        <xsl:if test="$Code = '08.06'">Раздел 6. Проект организации работ по сносу (демонтажу) линейного объекта</xsl:if>
        <xsl:if test="$Code = '08.07'">Раздел 7. Мероприятия по охране окружающей среды</xsl:if>
        <xsl:if test="$Code = '08.08'">Раздел 8. Мероприятия по обеспечению пожарной безопасности</xsl:if>
        <xsl:if test="$Code = '08.09'">Раздел 9. Смета на строительство</xsl:if>
        <xsl:if test="$Code = '08.10'">Раздел 10. Иная документация в случаях, предусмотренных федеральными законами</xsl:if>
        <xsl:if test="$Code = '13.01'">Проект организации работ по сносу объекта капитального строительства</xsl:if>
        <xsl:if test="$Code = '13.02'">Смета на снос объекта капитального строительства</xsl:if>
    </xsl:template>


    <!-- Вывод даты в формате ДД.ММ.ГГГГ-->
    <xsl:template name="formatdate">
        <xsl:param name="DateTimeStr"/>

        <xsl:if test="$DateTimeStr != ''">
            <xsl:variable name="mm">
                <xsl:value-of select="substring($DateTimeStr, 9, 2)"/>
            </xsl:variable>

            <xsl:variable name="dd">
                <xsl:value-of select="substring($DateTimeStr, 6, 2)"/>
            </xsl:variable>

            <xsl:variable name="yyyy">
                <xsl:value-of select="substring($DateTimeStr, 1, 4)"/>
            </xsl:variable>

            <xsl:value-of select="concat($mm, '.', $dd, '.', $yyyy)"/>
        </xsl:if>
    </xsl:template>

    <!-- Вывод наименования субъекта Российской Федерации -->
    <xsl:template name="MakeRegion">
        <xsl:param name="Code"/>

        <xsl:choose>
            <xsl:when test="$Code = 1">Республика Адыгея (Адыгея)</xsl:when>
            <xsl:when test="$Code = 2">Республика Башкортостан</xsl:when>
            <xsl:when test="$Code = 3">Республика Бурятия</xsl:when>
            <xsl:when test="$Code = 4">Республика Алтай</xsl:when>
            <xsl:when test="$Code = 5">Республика Дагестан</xsl:when>
            <xsl:when test="$Code = 6">Республика Ингушетия</xsl:when>
            <xsl:when test="$Code = 7">Кабардино-Балкарская Республика</xsl:when>
            <xsl:when test="$Code = 8">Республика Калмыкия</xsl:when>
            <xsl:when test="$Code = 9">Карачаево-Черкесская Республика</xsl:when>
            <xsl:when test="$Code = 10">Республика Карелия</xsl:when>
            <xsl:when test="$Code = 11">Республика Коми</xsl:when>
            <xsl:when test="$Code = 12">Республика Марий Эл</xsl:when>
            <xsl:when test="$Code = 13">Республика Мордовия</xsl:when>
            <xsl:when test="$Code = 14">Республика Саха (Якутия)</xsl:when>
            <xsl:when test="$Code = 15">Республика Северная Осетия-Алания</xsl:when>
            <xsl:when test="$Code = 16">Республика Татарстан (Татарстан)</xsl:when>
            <xsl:when test="$Code = 17">Республика Тыва</xsl:when>
            <xsl:when test="$Code = 18">Удмуртская Республика</xsl:when>
            <xsl:when test="$Code = 19">Республика Хакасия</xsl:when>
            <xsl:when test="$Code = 20">Чеченская Республика</xsl:when>
            <xsl:when test="$Code = 21">Чувашская Республика-Чувашия</xsl:when>
            <xsl:when test="$Code = 22">Алтайский край</xsl:when>
            <xsl:when test="$Code = 23">Краснодарский край</xsl:when>
            <xsl:when test="$Code = 24">Красноярский край</xsl:when>
            <xsl:when test="$Code = 25">Приморский край</xsl:when>
            <xsl:when test="$Code = 26">Ставропольский край</xsl:when>
            <xsl:when test="$Code = 27">Хабаровский край</xsl:when>
            <xsl:when test="$Code = 28">Амурская область</xsl:when>
            <xsl:when test="$Code = 29">Архангельская область</xsl:when>
            <xsl:when test="$Code = 30">Астраханская область</xsl:when>
            <xsl:when test="$Code = 31">Белгородская область</xsl:when>
            <xsl:when test="$Code = 32">Брянская область</xsl:when>
            <xsl:when test="$Code = 33">Владимирская область</xsl:when>
            <xsl:when test="$Code = 34">Волгоградская область</xsl:when>
            <xsl:when test="$Code = 35">Вологодская область</xsl:when>
            <xsl:when test="$Code = 36">Воронежская область</xsl:when>
            <xsl:when test="$Code = 37">Ивановская область</xsl:when>
            <xsl:when test="$Code = 38">Иркутская область</xsl:when>
            <xsl:when test="$Code = 39">Калининградская область</xsl:when>
            <xsl:when test="$Code = 40">Калужская область</xsl:when>
            <xsl:when test="$Code = 41">Камчатский край</xsl:when>
            <xsl:when test="$Code = 42">Кемеровская область - Кузбасс</xsl:when>
            <xsl:when test="$Code = 43">Кировская область</xsl:when>
            <xsl:when test="$Code = 44">Костромская область</xsl:when>
            <xsl:when test="$Code = 45">Курганская область</xsl:when>
            <xsl:when test="$Code = 46">Курская область</xsl:when>
            <xsl:when test="$Code = 47">Ленинградская область</xsl:when>
            <xsl:when test="$Code = 48">Липецкая область</xsl:when>
            <xsl:when test="$Code = 49">Магаданская область</xsl:when>
            <xsl:when test="$Code = 50">Московская область</xsl:when>
            <xsl:when test="$Code = 51">Мурманская область</xsl:when>
            <xsl:when test="$Code = 52">Нижегородская область</xsl:when>
            <xsl:when test="$Code = 53">Новгородская область</xsl:when>
            <xsl:when test="$Code = 54">Новосибирская область</xsl:when>
            <xsl:when test="$Code = 55">Омская область</xsl:when>
            <xsl:when test="$Code = 56">Оренбургская область</xsl:when>
            <xsl:when test="$Code = 57">Орловская область</xsl:when>
            <xsl:when test="$Code = 58">Пензенская область</xsl:when>
            <xsl:when test="$Code = 59">Пермский край</xsl:when>
            <xsl:when test="$Code = 60">Псковская область</xsl:when>
            <xsl:when test="$Code = 61">Ростовская область</xsl:when>
            <xsl:when test="$Code = 62">Рязанская область</xsl:when>
            <xsl:when test="$Code = 63">Самарская область</xsl:when>
            <xsl:when test="$Code = 64">Саратовская область</xsl:when>
            <xsl:when test="$Code = 65">Сахалинская область</xsl:when>
            <xsl:when test="$Code = 66">Свердловская область</xsl:when>
            <xsl:when test="$Code = 67">Смоленская область</xsl:when>
            <xsl:when test="$Code = 68">Тамбовская область</xsl:when>
            <xsl:when test="$Code = 69">Тверская область</xsl:when>
            <xsl:when test="$Code = 70">Томская область</xsl:when>
            <xsl:when test="$Code = 71">Тульская область</xsl:when>
            <xsl:when test="$Code = 72">Тюменская область</xsl:when>
            <xsl:when test="$Code = 73">Ульяновская область</xsl:when>
            <xsl:when test="$Code = 74">Челябинская область</xsl:when>
            <xsl:when test="$Code = 75">Забайкальский край</xsl:when>
            <xsl:when test="$Code = 76">Ярославская область</xsl:when>
            <xsl:when test="$Code = 77">Москва</xsl:when>
            <xsl:when test="$Code = 78">Санкт-Петербург</xsl:when>
            <xsl:when test="$Code = 79">Еврейская автономная область</xsl:when>
            <xsl:when test="$Code = 83">Ненецкий автономный округ</xsl:when>
            <xsl:when test="$Code = 86">Ханты-Мансийский автономный округ - Югра</xsl:when>
            <xsl:when test="$Code = 87">Чукотский автономный округ</xsl:when>
            <xsl:when test="$Code = 89">Ямало-Ненецкий автономный округ</xsl:when>
            <xsl:when test="$Code = 91">Республика Крым</xsl:when>
            <xsl:when test="$Code = 92">Севастополь</xsl:when>
        </xsl:choose>
    </xsl:template>
 
    <!-- Вывод вида работ -->
    <xsl:template name="MakeWorkType">
        <xsl:param name="Code"/>
        <xsl:choose>
            <xsl:when test="$Code = 1">Строительство</xsl:when>
            <xsl:when test="$Code = 2">Реконструкция</xsl:when>
            <xsl:when test="$Code = 3">Капитальный ремонт</xsl:when>
            <xsl:when test="$Code = 4">Снос объекта капитального строительства</xsl:when>
            <xsl:when test="$Code = 5">Сохранение объекта культурного наследия</xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- Вывод предмета экспертизы -->
    <xsl:template name="MakeExaminationType">
        <xsl:param name="Code"/>
        <xsl:choose>
            <xsl:when test="$Code = 1">оценка соответствия результатов инженерных изысканий требованиям технических регламентов</xsl:when>
            <xsl:when test="$Code = 2">оценка соответствия проектной документации установленным требованиям</xsl:when>
            <xsl:when test="$Code = 3">проверка достоверности определения сметной стоимости</xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- Вывод объекта экспертизы -->
    <xsl:template name="MakeObjectType">
        <xsl:param name="Code"/>
        <xsl:choose>
            <xsl:when test="$Code = 1">результаты инженерных изысканий</xsl:when>
            <xsl:when test="$Code = 2">проектная документация</xsl:when>
            <xsl:when test="$Code = 3">проектная документация и результаты инженерных изысканий</xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- Вывод текстов по абзацам -->
    <xsl:template name="StringReplace">
        <xsl:param name="input"/>
        <xsl:choose>
            <xsl:when test="contains($input, '&#xA;')">
                <p>
                    <xsl:value-of select="substring-before($input, '&#xA;')"/>
                </p>
                <xsl:call-template name="StringReplace">
                    <xsl:with-param name="input" select="substring-after($input, '&#xA;')"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <xsl:value-of select="$input"/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="EstimatedCost">

        <!-- Вывод сведений о сметной стоимости (без детализации) -->
        <xsl:if test="EstimatedCompleteCostBefore">
            <table>
                <tr>
                    <td class="title" rowspan="2" width="40%">Структура затрат</td>
                    <td class="title" colspan="3" width="60%">Сметная стоимость, тыс. рублей</td>
                </tr>
                <tr>
                    <td class="title">на дату представления сметной документации</td>
                    <td class="title">на дату утверждения заключения экспертизы</td>
                    <td class="title">изменение(+/-)</td>
                </tr>
                <tr>
                    <td class="left">Всего</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedCompleteCostBefore"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedCompleteCostPost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedCompleteCostBefore) - number(EstimatedCompleteCostPost)"/>
                    </td>
                </tr>
            </table>
        </xsl:if>

        <!-- Вывод сведений о сметной стоимости (с детализации при проведении ПДОСС) -->
        <xsl:if test="EstimatedComplexCostBefore">
            <table>
                <tr>
                    <td class="title" rowspan="2" width="40%">Структура затрат</td>
                    <td class="title" colspan="3" width="60%">Сметная стоимость, тыс. рублей</td>
                </tr>
                <tr>
                    <td class="title">на дату представления сметной документации</td>
                    <td class="title">на дату утверждения заключения экспертизы</td>
                    <td class="title">изменение(+/-)</td>
                </tr>
                <tr>
                    <td class="title" colspan="4">В базисном уровне цен</td>
                </tr>
                <tr>
                    <td class="left">Всего</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/CostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/CostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/CostBasic) - number(EstimatedComplexCostPost/CostBasic)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">в том числе:</td>
                    <td class="center"/>
                    <td class="center"/>
                    <td class="center"/>
                </tr>
                <tr>
                    <td class="left">- строительно-монтажные работы</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/WorksCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/WorksCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/WorksCostBasic) - number(EstimatedComplexCostPost/WorksCostBasic)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- оборудование</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/HardwareCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/HardwareCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/HardwareCostBasic) - number(EstimatedComplexCostPost/HardwareCostBasic)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- прочие затраты,</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/OtherCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/OtherCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/OtherCostBasic) - number(EstimatedComplexCostPost/OtherCostBasic)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left" style="padding-left: 20px;">в том числе проектно-изыскательские работы</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/ProjectWorksCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/ProjectWorksCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/ProjectWorksCostBasic) - number(EstimatedComplexCostPost/ProjectWorksCostBasic)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- возвратные суммы</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/BackSumCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/BackSumCostBasic"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/BackSumCostBasic) - number(EstimatedComplexCostPost/BackSumCostBasic)"/>
                    </td>
                </tr>
                <tr>
                    <td class="title" colspan="4">В текущем уровне цен</td>
                </tr>
                <tr>
                    <td class="left">Всего</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/Cost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/Cost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/Cost) - number(EstimatedComplexCostPost/Cost)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">в том числе:</td>
                    <td class="center"/>
                    <td class="center"/>
                    <td class="center"/>
                </tr>
                <tr>
                    <td class="left">- строительно-монтажные работы</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/WorksCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/WorksCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/WorksCost) - number(EstimatedComplexCostPost/WorksCost)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- оборудование</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/HardwareCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/HardwareCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/HardwareCost) - number(EstimatedComplexCostPost/HardwareCost)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- прочие затраты,</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/OtherCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/OtherCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/OtherCost) - number(EstimatedComplexCostPost/OtherCost)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left" style="padding-left: 20px;">в том числе проектно-изыскательские работы</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/ProjectWorksCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/ProjectWorksCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/ProjectWorksCost) - number(EstimatedComplexCostPost/ProjectWorksCost)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- налог на добавленную стоимость</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/NDSCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/NDSCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/NDSCost) - number(EstimatedComplexCostPost/NDSCost)"/>
                    </td>
                </tr>
                <tr>
                    <td class="left">- возвратные суммы</td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostBefore/BackSumCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="EstimatedComplexCostPost/BackSumCost"/>
                    </td>
                    <td class="center">
                        <xsl:value-of select="number(EstimatedComplexCostBefore/BackSumCost) - number(EstimatedComplexCostPost/BackSumCost)"/>
                    </td>
                </tr>
            </table>
        </xsl:if>

    </xsl:template>


    <xsl:template name="EngineeringSurveysDocTable">
        <xsl:param name="Code"/>
        <xsl:if test="Documents/Document[DocType = $Code and File]">
            <tr>
                <td colspan="5">
                    <p class="title">
                        <xsl:choose>
                            <xsl:when test="$Code = '06.99'"> Иные отчетные материалы </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="MakeRII">
                                    <xsl:with-param name="TypeCode" select="$Code"/>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </p>
                </td>
            </tr>
            <xsl:for-each select="Documents/Document[DocType = $Code and File]">
                <xsl:call-template name="TableDocument"/>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>

    <xsl:template name="ProjectDocumentsDocTable">
        <xsl:param name="Code"/>
        <xsl:if test="Documents/Document[DocType = $Code and File]">
            <tr>
                <td colspan="5">
                    <p class="title">
                        <xsl:call-template name="MakeProjectSection">
                            <xsl:with-param name="Code" select="$Code"/>
                        </xsl:call-template>
                    </p>
                </td>
            </tr>
            <xsl:for-each select="Documents/Document[DocType = $Code and File]">
                <xsl:call-template name="TableDocument"/>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>


    <xsl:template name="EngineeringSurveysReports">
        <xsl:param name="Code"/>
        <xsl:if test="Documents/Document[DocType = $Code and File]">
            <tr>
                <td colspan="3">
                    <p class="title">
                        <xsl:choose>
                            <xsl:when test="$Code = '06.99'"> Иные отчетные материалы </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="MakeRII">
                                    <xsl:with-param name="TypeCode" select="$Code"/>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </p>
                </td>
            </tr>
            <xsl:for-each select="Documents/Document[DocType = $Code and File]">
                <xsl:sort select="DocDate"/>
                <tr>
                    <td>
                        <xsl:value-of select="DocName"/>
                    </td>
                    <td class="center">
                        <xsl:call-template name="formatdate">
                            <xsl:with-param name="DateTimeStr" select="DocDate"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:apply-templates select="FullDocIssueAuthor/Organization"/>
                        <xsl:apply-templates select="FullDocIssueAuthor/ForeignOrganization"/>
                        <xsl:apply-templates select="FullDocIssueAuthor/IP"/>
                        <xsl:apply-templates select="FullDocIssueAuthor/Person"/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>


    <xsl:template name="MakeDocFileTable">
        <xsl:variable name="FileNumber" select="count(File) + count(File/SignFile)"/>
        <xsl:variable name="Pos" select="position()"/>
        <xsl:if test="$FileNumber!=0">
        <xsl:for-each select="File">
            <tr>
                <xsl:if test="position() = 1">
                    <td>
                        <xsl:if test="$FileNumber != 1">
                            <xsl:attribute name="rowspan">
                                <xsl:value-of select="$FileNumber"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:number value="$Pos"/>
                    </td>
                    <td class="no-first-line">
                        <xsl:if test="$FileNumber != 1">
                            <xsl:attribute name="rowspan">
                                <xsl:value-of select="$FileNumber"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates select=".."/>
                    </td>
                </xsl:if>
                <td>
                    <xsl:value-of select="FileName"/>
                </td>
                <td class="center">
                    <xsl:value-of select="FileChecksum"/>
                </td>
			</tr>
                <xsl:for-each select="SignFile">
                    <tr>
                        <td style="font-style: italic;">
                            <xsl:value-of select="FileName"/>
                        </td>
                        <td class="center" style="font-style: italic;">
                            <xsl:value-of select="FileChecksum"/>
                        </td>
                    </tr>
                </xsl:for-each>
        </xsl:for-each>
        </xsl:if>
        <xsl:if test="$FileNumber=0 and Included">
            <tr>
                <td>
                    <xsl:number value="$Pos"/>
                </td>
                <td>
                    <xsl:apply-templates select="."/>
                </td>
                <td colspan="2">
                    <xsl:value-of select="Included"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="$FileNumber=0 and Link">
            <tr>
                <td>
                    <xsl:number value="$Pos"/>
                </td>
                <td>
                    <xsl:apply-templates select="."/>
                </td>
                <td colspan="2">
                    Документ опубликован: <br/>
                    <xsl:value-of select="Link"/>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template name="MakeLandCategory">
        <xsl:param name="Code"/>
        <xsl:if test="$Code = 1">Земли сельскохозяйственного назначения</xsl:if>
        <xsl:if test="$Code = 2">Земли населенных пунктов</xsl:if>
        <xsl:if test="$Code = 3">Земли промышленности, энергетики, транспорта, связи, радиовещания, телевидения, информатики, земли для обеспечения космической деятельности, земли обороны, безопасности и земли иного специального назначения</xsl:if>
        <xsl:if test="$Code = 4">Земли особо охраняемых территорий и объектов</xsl:if>
        <xsl:if test="$Code = 5">Земли лесного фонда</xsl:if>
        <xsl:if test="$Code = 6">Земли водного фонда</xsl:if>
        <xsl:if test="$Code = 7">Земли запаса</xsl:if>

    </xsl:template>

    <xsl:template name="NonLinearProjectDocumentContent">
        <xsl:param name="DocumentationContent"/>
        <xsl:if test="$DocumentationContent/*">
            <table>
                <tr>
                    <td style="width: 10%;" class="title"> Обозначение </td>
                    <td style="width: 50%;" class="title"> Наименование, исполнитель </td>
                    <td style="width: 25%;" class="title"> Имя файла документа (подписи документа) </td>
                    <td class="title"> Контрольная сумма файла документа (подписи документа) </td>
                </tr>
                <tr><td colspan="4" class="title">Раздел 1. «Пояснительная записка»</td></tr>
				<tr>
					<td><xsl:value-of select="ExplanatoryNoteNumber"/></td>
				    <td>Раздел 1. «Пояснительная записка»</td>
					<td> </td>
					<td> </td>
				</tr>
                <xsl:for-each select="$DocumentationContent/*">
                    <tr>
                        <td colspan="4" class="title">
                            <xsl:call-template name="NonLinearProjectDocumentsSectionName">
                                <xsl:with-param name="SectionNumber" select="name()"/>
                            </xsl:call-template>
                        </td>
                    </tr>
                    <xsl:choose>

                        <xsl:when test="name() = 'Section5'">
                            <xsl:for-each select="./*">
                                <tr>
                                    <td colspan="4" class="title">
                                        <xsl:call-template name="NonLinearProjectDocumentsSectionName">
                                            <xsl:with-param name="SectionNumber" select="name()"/>
                                        </xsl:call-template>
                                    </td>
                                </tr>
                                <xsl:for-each select="./Document">
                                    <xsl:call-template name="ProjectDocumentTableLine">
                                        <xsl:with-param name="Document" select="."/>
                                    </xsl:call-template>
								</xsl:for-each>
                                <xsl:for-each select="./SubSection">
                                        <xsl:call-template name="MakeSubSection">
                                            <xsl:with-param name="SubSection" select="."/>
                                        </xsl:call-template>
                                </xsl:for-each>
                            </xsl:for-each>
                        </xsl:when>
                        
                        <xsl:when test="name() = 'Section12'">
                            <xsl:for-each select="./*">
                                <tr>
                                    <td colspan="4" class="title">
                                        <xsl:call-template name="NonLinearProjectDocumentsSectionName">
                                            <xsl:with-param name="SectionNumber" select="name()"/>
                                        </xsl:call-template>
                                    </td>
                                </tr>
                                <xsl:for-each select="./Document">
                                    <xsl:call-template name="ProjectDocumentTableLine">
                                        <xsl:with-param name="Document" select="."/>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </xsl:for-each>
                        </xsl:when>
                        
                        <xsl:when test="name() = 'Section13'">
                            <xsl:for-each select="./*">
                                <tr>
                                    <td colspan="4" class="title">
                                        <xsl:call-template name="NonLinearProjectDocumentsSectionName">
                                            <xsl:with-param name="SectionNumber" select="name()"/>
                                        </xsl:call-template>
                                    </td>
                                </tr>
                                <xsl:for-each select="./Document">
                                    <xsl:call-template name="ProjectDocumentTableLine">
                                        <xsl:with-param name="Document" select="."/>
                                    </xsl:call-template>
                                </xsl:for-each>
                             </xsl:for-each>
                        </xsl:when>
                        
                        <xsl:otherwise>
                            <xsl:for-each select="./Document">
                                <xsl:call-template name="ProjectDocumentTableLine">
                                    <xsl:with-param name="Document" select="."/>
                                </xsl:call-template>
                            </xsl:for-each>
                            <xsl:for-each select="./SubSection">
                                <xsl:call-template name="MakeSubSection">
                                    <xsl:with-param name="SubSection" select="."/>
                                </xsl:call-template>
                            </xsl:for-each>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </table>
        </xsl:if>
    </xsl:template>

    <xsl:template name="NonLinearProjectDocumentsSectionName">
        <xsl:param name="SectionNumber"/>
        <xsl:choose>
            <xsl:when test="$SectionNumber = 'Section2'">Раздел 2. «Схема планировочной организации земельного участка»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section3'">Раздел 3. «Объемно-планировочные и архитектурные решения»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section4'">Раздел 4. «Конструктивные решения»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section5'">Раздел 5. "Сведения об инженерном оборудовании, о сетях и системах инженерно-технического обеспечения"</xsl:when>
            <xsl:when test="$SectionNumber = 'ElectricitySupply'">Раздел 5. Подраздел «Система электроснабжения»</xsl:when>
            <xsl:when test="$SectionNumber = 'WaterSupply'">Раздел 5. Подраздел «Система водоснабжения»</xsl:when>
            <xsl:when test="$SectionNumber = 'WaterRemoval'">Раздел 5. Подраздел «Система водоотведения»</xsl:when>
            <xsl:when test="$SectionNumber = 'HeatingVentilation'">Раздел 5. Подраздел «Отопление, вентиляция и кондиционирование воздуха, тепловые сети»</xsl:when>
            <xsl:when test="$SectionNumber = 'Communication'">Раздел 5. Подраздел «Сети связи»</xsl:when>
            <xsl:when test="$SectionNumber = 'GasSupply'">Раздел 5. Подраздел «Система газоснабжения»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section6'">Раздел 6. «Технологические решения»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section7'">Раздел 7. «Проект организации строительства»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section8'">Раздел 8. «Мероприятия по охране окружающей среды»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section9'">Раздел 9. «Мероприятия по обеспечению пожарной безопасности»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section10'">Раздел 10. «Требования к обеспечению безопасной эксплуатации объектов капитального строительства»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section11'">Раздел 11. «Мероприятия по обеспечению доступа инвалидов к объекту капитального строительства»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section12'">Раздел 12. «Смета на строительство, реконструкцию, капитальный ремонт, снос объекта капитального строительства»</xsl:when>
            <xsl:when test="$SectionNumber = 'EstimateExplanatoryNote'">Пояснительная записка к сметной документации</xsl:when>
            <xsl:when test="$SectionNumber = 'CostSummary'">Сводка затрат</xsl:when>
            <xsl:when test="$SectionNumber = 'SummaryEstimate'">Сводный сметный расчет</xsl:when>
            <xsl:when test="$SectionNumber = 'ObjectLocalEstimates'">Объектные и локальные расчеты</xsl:when>
            <xsl:when test="$SectionNumber = 'CostsEstimates'">Сметные расчеты на отдельные виды затрат</xsl:when>
            <xsl:when test="$SectionNumber = 'Section13'">Раздел 13. «Иная документация в случаях, предусмотренных законодательными и иными нормативными правовыми актами Российской Федерации»</xsl:when>
            <xsl:when test="$SectionNumber = 'IndustrialSafetyDeclaration'">Декларация промышленной безопасности опасных производственных объектов</xsl:when>
            <xsl:when test="$SectionNumber = 'HydraulicStructuresSafetyDeclaration'">Декларация безопасности гидротехнических сооружений</xsl:when>
            <xsl:when test="$SectionNumber = 'EventsList'">Перечень мероприятий по гражданской обороне, мероприятий по предупреждению чрезвычайных ситуаций природного и техногенного характера, мероприятий по противодействию терроризму для объектов использования атомной энергии (в том числе ядерных установок, пунктов хранения ядерных материалов и радиоактивных веществ), опасных производственных объектов, определяемых таковыми в соответствии с законодательством Российской Федерации, особо опасных, технически сложных, уникальных объектов, объектов обороны и безопасности</xsl:when>
            <xsl:when test="$SectionNumber = 'OtherDocuments'">Иная документация, установленная законодательными и иными нормативными правовыми актами Российской Федерации</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="LinearProjectDocumentContent">
        <xsl:param name="DocumentationContent"/>
        <xsl:if test="$DocumentationContent/*">
            <table>
                <tr>
                    <td style="width: 10%;" class="title"> Обозначение </td>
                    <td style="width: 50%;" class="title"> Наименование, исполнитель </td>
                    <td style="width: 25%;" class="title"> Имя файла документа (подписи документа) </td>
                    <td class="title"> Контрольная сумма файла документа (подписи документа) </td>
                </tr>
                <tr><td colspan="4" class="title">Раздел 1. «Пояснительная записка»</td></tr>
				<tr>
					<td><xsl:value-of select="ExplanatoryNoteNumber"/></td>
				    <td>Раздел 1. «Пояснительная записка»</td>
					<td> </td>
					<td> </td>
				</tr>
				<xsl:for-each select="$DocumentationContent/*">
                    <tr>
                        <td colspan="4" class="title">
                            <xsl:call-template name="LinearProjectDocumentsSectionName">
                                <xsl:with-param name="SectionNumber" select="name()"/>
                            </xsl:call-template>
                        </td>
                    </tr>
				    
				    <xsl:choose>
				        <xsl:when test="name() = 'Section9'">
				            <xsl:for-each select="./*">
				                <tr>
				                    <td colspan="4" class="title">
				                        <xsl:call-template name="LinearProjectDocumentsSectionName">
				                            <xsl:with-param name="SectionNumber" select="name()"/>
				                        </xsl:call-template>
				                    </td>
				                </tr>
				                <xsl:for-each select="./Document">
				                    <xsl:call-template name="ProjectDocumentTableLine">
				                        <xsl:with-param name="Document" select="."/>
				                    </xsl:call-template>
				                </xsl:for-each>
				            </xsl:for-each>
				        </xsl:when>
				        
				        <xsl:when test="name() = 'Section10'">
				            <xsl:for-each select="./*">
				                <tr>
				                    <td colspan="4" class="title">
				                        <xsl:call-template name="LinearProjectDocumentsSectionName">
				                            <xsl:with-param name="SectionNumber" select="name()"/>
				                        </xsl:call-template>
				                    </td>
				                </tr>
				                <xsl:for-each select="./Document">
				                    <xsl:call-template name="ProjectDocumentTableLine">
				                        <xsl:with-param name="Document" select="."/>
				                    </xsl:call-template>
				                </xsl:for-each>
				            </xsl:for-each>
				        </xsl:when>
				        
				        <xsl:otherwise>
				            <xsl:for-each select="./Document">
				                <xsl:call-template name="ProjectDocumentTableLine">
				                    <xsl:with-param name="Document" select="."/>
				                </xsl:call-template>
				            </xsl:for-each>
				            <xsl:for-each select="./SubSection">
				                <xsl:call-template name="MakeSubSection">
				                    <xsl:with-param name="SubSection" select="."/>
				                </xsl:call-template>
				            </xsl:for-each>
				        </xsl:otherwise>
				    </xsl:choose>
				    
				</xsl:for-each>
            </table>
        </xsl:if>
    </xsl:template>

    <xsl:template name="LinearProjectDocumentsSectionName">
        <xsl:param name="SectionNumber"/>
        <xsl:choose>
            <xsl:when test="$SectionNumber = 'Section2'">Раздел 2. «Проект полосы отвода»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section3'">Раздел 3. «Технологические и конструктивные решения линейного объекта. Искусственные сооружения»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section4'">Раздел 4. «Здания, строения и сооружения, входящие в инфраструктуру линейного объекта»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section5'">Раздел 5. «Проект организации строительства»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section6'">Раздел 6. «Мероприятия по охране окружающей среды»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section7'">Раздел 7. «Мероприятия по обеспечению пожарной безопасности»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section8'">Раздел 8. «Требования к обеспечению безопасной эксплуатации линейного объекта»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section9'">Раздел 9. «Смета на строительство, реконструкцию, капитальный ремонт, снос объекта капитального строительства»</xsl:when>
            <xsl:when test="$SectionNumber = 'Section10'">Раздел 10. «Иная документация в случаях, предусмотренных законодательными и иными нормативными правовыми актами Российской Федерации»</xsl:when>
            <xsl:when test="$SectionNumber = 'EstimateExplanatoryNote'">Пояснительная записка к сметной документации</xsl:when>
            <xsl:when test="$SectionNumber = 'CostSummary'">Сводка затрат</xsl:when>
            <xsl:when test="$SectionNumber = 'SummaryEstimate'">Сводный сметный расчет</xsl:when>
            <xsl:when test="$SectionNumber = 'ObjectLocalEstimates'">Объектные и локальные расчеты</xsl:when>
            <xsl:when test="$SectionNumber = 'CostsEstimates'">Сметные расчеты на отдельные виды затрат</xsl:when>
            <xsl:when test="$SectionNumber = 'IndustrialSafetyDeclaration'">Декларация промышленной безопасности опасных производственных объектов</xsl:when>
            <xsl:when test="$SectionNumber = 'HydraulicStructuresSafetyDeclaration'">Декларация безопасности гидротехнических сооружений</xsl:when>
            <xsl:when test="$SectionNumber = 'EventsList'">Перечень мероприятий по гражданской обороне, мероприятий по предупреждению чрезвычайных ситуаций природного и техногенного характера, мероприятий по противодействию терроризму для объектов использования атомной энергии (в том числе ядерных установок, пунктов хранения ядерных материалов и радиоактивных веществ), опасных производственных объектов, определяемых таковыми в соответствии с законодательством Российской Федерации, особо опасных, технически сложных, уникальных объектов, объектов обороны и безопасности</xsl:when>
            <xsl:when test="$SectionNumber = 'OtherDocuments'">Иная документация, установленная законодательными и иными нормативными правовыми актами Российской Федерации</xsl:when>
            
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="MakeSubSection">
        <xsl:param name="SubSection"/>
        <tr>
            <td colspan="4" class="subtitle">
                <xsl:value-of select="$SubSection/@Name"/>
            </td>
        </tr>
        <xsl:for-each select="$SubSection/Document">
            <xsl:call-template name="ProjectDocumentTableLine">
                <xsl:with-param name="Document" select="."/>
            </xsl:call-template>
        </xsl:for-each>
        <xsl:for-each select="$SubSection/SubSection">
            <xsl:call-template name="MakeSubSection">
                <xsl:with-param name="SubSection" select="."/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="ProjectDocumentTableLine">
        <xsl:param name="Document"/>
        <xsl:variable name="FileNumber" select="count($Document/File) + count($Document/File/SignFile)"/>
        <xsl:variable name="Pos" select="position()"/>
        <xsl:for-each select="$Document/File">
            <tr>
                <xsl:if test="position() = 1">
                    <td style="width: 10%;">
                        <xsl:attribute name="rowspan">
                            <xsl:value-of select="$FileNumber"/>
                        </xsl:attribute>
                        <xsl:value-of select="../DocNumber"/>
                    </td>
                    <td style="width: 50%;">
                        <xsl:attribute name="rowspan">
                            <xsl:value-of select="$FileNumber"/>
                        </xsl:attribute>
                        <xsl:value-of select="../DocName"/>, <xsl:value-of select="../DocIssueAuthor"/>
                    </td>
                </xsl:if>
                <td>
                    <xsl:value-of select="FileName"/>
                </td>
                <td class="center">
                    <xsl:value-of select="FileChecksum"/>
                </td>
			 </tr>
                <xsl:for-each select="SignFile">
                    <tr>
                        <td style="font-style: italic;">
                            <xsl:value-of select="FileName"/>
                        </td>
                        <td class="center" style="font-style: italic;">
                            <xsl:value-of select="FileChecksum"/>
                        </td>
                    </tr>
                </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="Data">
        <xsl:variable name="FileNumber" select="count(File) + count(File/SignFile)"/>
        <xsl:variable name="Pos" select="position()"/>
        <xsl:for-each select="File">
            <tr>
                <xsl:if test="position() = 1">
                    <td style="width: 10%;">
                        <xsl:attribute name="rowspan">
                            <xsl:value-of select="$FileNumber"/>
                        </xsl:attribute>
                        <xsl:value-of select="../DataDescription"/>
                    </td>
                </xsl:if>
                <td>
                    <xsl:value-of select="FileName"/>
                </td>
                <td class="center">
                    <xsl:value-of select="FileChecksum"/>
                </td>
            </tr>
            <xsl:for-each select="SignFile">
                <tr>
                    <td style="font-style: italic;">
                        <xsl:value-of select="FileName"/>
                    </td>
                    <td class="center" style="font-style: italic;">
                        <xsl:value-of select="FileChecksum"/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="PrintFunctions">
        <xsl:param name="Functions"/>

        <xsl:if test="$Functions/FunctionsClass">
            <p>
                <span class="field">Функциональное назначение по классификатору объектов капитального строительства по их назначению и функционально-технологическим особенностям (для целей архитектурно-строительного проектирования и ведения единого государственного реестра заключений экспертизы
                    проектной документации объектов капитального строительства), утвержденного приказом Минстроя России от 10.07.2020 №374/пр: </span>
                <xsl:value-of select="$Functions/FunctionsClass"/>
            </p>
            <br/>
        </xsl:if>
        <xsl:if test="$Functions/FunctionsNote">
            <p>
                <span class="field">Функциональное назначение объекта капитального строительства: </span>
                <xsl:value-of select="$Functions/FunctionsNote"/>
            </p>
            <br/>
            <br/>
        </xsl:if>

        <xsl:if test="$Functions/ProductsNote ">
            <p class="title">Cведения о составе и характеристике производства, номенклатура выпускаемой продукции (работ, услуг)</p>
            <xsl:if test="$Functions/ProductsNote">
                <xsl:apply-templates select="$Functions/ProductsNote"/>
            </xsl:if>
        </xsl:if>
        
    </xsl:template>

    <xsl:template match="UsedAbbreviations | DesignerNote | FunctionsFeatures | DangerousNatureProcesses | 
                         PeoplePermanentStay | ResourceUseInfo | RenewableSourceInfo | LandFunds | PatentsUsed | SpecialRequirements |
                         StaffNote | DestroyFunds | LandReclamationLink | FunctionsFeatures | DangerousNatureProcesses | 
                         LinearObjectCategory | LinearObjectClass | LinearObjectNote | EngineeringTerritoryProtection | 
                         StrengthCalculation | EnvironmentalProtection | FireSafety | OperationalSafety | PerairFrequency |
                         ObjectList | NuclearSafety | NuclearSafety | OperationalLimits | NuclearPlantControl | ReactorPlant | NuclearSafitySoftware |
                         GeotechnicalMonitoring | HydrogeologicalMonitoring | SeismologicalMonitoring | MeteorologicalMonitoring |
                         AerologicalMonitoring | HydrologicalMonitoring | GeodynamicalMonitoring | TechnogenicMonitoring |
                         CommonLandInfo | SoftwareNote | ReasonNote | Note | EnergyEfficiencyImproving | ProductsNote | 
                         ImportanceNote |  ClimateNote | RoutesNote | Assurance">
        <xsl:if test="@Title">
            <p class="title">
                <xsl:value-of select="@Title"/>
            </p>
        </xsl:if>
        <xsl:for-each select="*">
            <xsl:apply-templates select="."/>
        </xsl:for-each>
        <br/>
        <br/>
    </xsl:template>

    <xsl:template match="Title">
        <p class="title">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>

    <xsl:template match="Text">
        <xsl:call-template name="StringReplace">
            <xsl:with-param name="input" select="."/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="SubTitle">
        <p class="subtitle">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>

    <xsl:template match="Image">
        <img>
            <xsl:attribute name="src">
                <xsl:value-of select="concat('data:image/', @Type, ';base64,', ImageData)"/>
            </xsl:attribute>
        </img>
        <xsl:if test="Comment">
            <p class="imagecomment">
                <xsl:value-of select="Comment"/>
            </p>
        </xsl:if>
    </xsl:template>

    <xsl:template match="Table">
        <table>
            <xsl:for-each select="TitleRow | Row">
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template match="Row">
        <tr>
            <xsl:for-each select="Cell">
                <xsl:apply-templates select=".">
                    <xsl:with-param name="Title" select="0"/>
                </xsl:apply-templates>
            </xsl:for-each>
        </tr>
    </xsl:template>

    <xsl:template match="TitleRow">
        <tr>
            <xsl:for-each select="Cell">
                <xsl:apply-templates select=".">
                    <xsl:with-param name="Title" select="1"/>
                </xsl:apply-templates>
            </xsl:for-each>
        </tr>
    </xsl:template>

    <xsl:template match="Cell">
        <xsl:param name="Title"/>
        <td>
            <xsl:if test="$Title = 0">
                <xsl:if test="@align">
                <xsl:attribute name="style">text-align: <xsl:value-of select="@align"/></xsl:attribute>
                </xsl:if>
                <xsl:if test="not(@align)">
                    <xsl:attribute name="style">text-align: left</xsl:attribute>
                </xsl:if>
            </xsl:if>
            <xsl:if test="$Title = 1">
                <xsl:attribute name="class">title</xsl:attribute>
            </xsl:if>
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    
    <!-- Вывод коментария по абзацам со звездачками-->
    <xsl:template name="StringReplaceComment">
        <xsl:param name="input"/>
        <xsl:param name="count"/>
        <xsl:param name="first"/>
        
        <xsl:choose>
            <xsl:when test="contains($input, '&#xA;')">
                <p>
                    <xsl:if test="$first=1">
                        <sup><small>
                            <xsl:call-template name="MakeFootNoteSymbols">
                                <xsl:with-param name="Count" select="$count"></xsl:with-param>
                            </xsl:call-template>
                        </small></sup>
                        <xsl:text> </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="substring-before($input, '&#xA;')"/>
                </p>
                <xsl:call-template name="StringReplaceComment">
                    <xsl:with-param name="input" select="substring-after($input, '&#xA;')"/>
                    <xsl:with-param name="count" select="0"></xsl:with-param>
                    <xsl:with-param name="first" select="number($first)+1"></xsl:with-param>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <xsl:if test="$first=1">
                        <sup><small>
                            <xsl:call-template name="MakeFootNoteSymbols">
                                <xsl:with-param name="Count" select="$count"></xsl:with-param>
                            </xsl:call-template>
                        </small></sup>
                        <xsl:text> </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="$input"/>
                </p><br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="MakeFootNoteSymbols">
        <xsl:param name="Count"/>
        <xsl:if test="$Count!=0">
            <xsl:text>*</xsl:text>
            <xsl:if test="$Count != 1">
                <xsl:call-template name="MakeFootNoteSymbols">
                    <xsl:with-param name="Count" select="number($Count) - 1"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="ObjectParts">
        <xsl:param name="level"/>
        
        <hr/>
        <xsl:for-each select="ComplexPart">
            <p class="field"><xsl:value-of select="$level"/>.<xsl:value-of select="position()"/>.<br/></p>
            <xsl:apply-templates select="."/>
            <xsl:apply-templates select="ObjectParts">
                <xsl:with-param name="level" select="concat($level,'.',position())"></xsl:with-param>
            </xsl:apply-templates>
        </xsl:for-each>
        <xsl:for-each select="OKS">
            <p class="field"><xsl:value-of select="$level"/>.<xsl:value-of select="position()+count(../ComplexPart)"/>.<br/></p>
            <xsl:apply-templates select="."/>
        </xsl:for-each>
        <hr/>
    </xsl:template>
    
    <xsl:template match="ComplexPart | OKS">
        <a>
            <xsl:attribute name="name"><xsl:value-of select="@ObjectID"/></xsl:attribute>
        </a>
        <p>
            <span class="field">Наименование объекта капитального строительства: </span>
            <xsl:value-of select="Name"/>
        </p>
        <p>
            <span class="field">Адрес объекта капитального строительства: </span>
            <xsl:apply-templates select="Address"/>
        </p>
        <xsl:if test="FunctionsClass">
            <p>
                <span class="field">Функциональное назначение по классификатору объектов капитального строительства по их назначению и функционально-технологическим особенностям (для целей архитектурно-строительного проектирования и ведения единого государственного реестра
                    заключений экспертизы проектной документации объектов капитального строительства), утвержденного приказом Минстроя России от 10.07.2020 №374/пр: </span>
                <xsl:value-of select="FunctionsClass"/>
            </p>
            <br/>
        </xsl:if>
       
        <xsl:if test="FunctionsFeatures">
            <a name="FunctionsFeatures"/>
            <p class="title">Сведения о принадлежности к объектам транспортной инфраструктуры и к другим объектам, функционально-технологические особенности которых влияют на их безопасность:</p>
            <xsl:apply-templates select="FunctionsFeatures"/>
        </xsl:if>
        
        <xsl:if test="DangerousIndustrialObject">
            <a name="FunctionsFeatures"/>
            <p class="title">Сведения о принадлежности к опасным производственным объектам</p>
            <p>Класс опасности производственного объекта: <xsl:value-of select="DangerousIndustrialObject"/></p>
            <br/>
        </xsl:if>
        
        <xsl:if test="EnergyEfficiency">
            <p class="title">Сведения о классе энергетической эффективности  и о повышении энергетической эффективности</p>
            <p>Класс энергоэффективности: <xsl:value-of select="EnergyEfficiency/EnergyEfficiencyClass"/></p>
            <br/>
            <xsl:if test="EnergyEfficiency/EnergyEfficiencyImproving">
                <xsl:apply-templates select="FunctionsFeatures/EnergyEfficiencyImproving"/>
            </xsl:if>
        </xsl:if>
        
        <xsl:if test="FireDangerCategory">
            <a name="FireDangerCategory"/>
            <p class="title">Сведения о пожарной и взрывопожарной опасности</p>
            <p>Класс взрывопожарной опасности: <xsl:value-of select="FireDangerCategory"/></p>
            <br/>
        </xsl:if>
        
        <xsl:if test="PeoplePermanentStay">
            <p class="title">Сведения о наличии помещений с постоянным пребыванием людей</p>
            <xsl:apply-templates select="PeoplePermanentStay"/>
        </xsl:if>
        
        <xsl:if test="ResponsibilityLevel">
            <p class="title">Сведения об уровне ответственности</p>
            <p>Уровень ответсвенности: <xsl:value-of select="ResponsibilityLevel"/></p>
            <br/>
        </xsl:if>
             
        <xsl:if test="PowerIndicator">
            <p class="title">Показатели мощности объекта капитального строительства </p>
            <table style="border-style: solid; border-width:1px; border-collapse: collapse; align: center;">
                <tr>
                    <td style="width: 50%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Наименование технико-экономического показателя </td>
                    <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Единица измерения</td>
                    <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold;text-align: center; ">Значение</td>
                </tr>
                <xsl:apply-templates select="PowerIndicator"/>
            </table>
            <br/>
        </xsl:if>
        
        <xsl:if test="TEI">
            <p class="title">Технико-экономические показатели объекта капитального строительства </p>
            <table style="border-style: solid; border-width:1px; border-collapse: collapse; align: center;">
                <tr>
                    <td style="width: 50%; border-style: solid; border-width:1px; font-weight: bold; text-align: center;">Наименование технико-экономического показателя</td>
                    <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold;text-align: center; ">Единица измерения</td>
                    <td style="width: 25%; border-style: solid; border-width:1px; font-weight: bold;text-align: center; ">Значение</td>
                </tr>
                <xsl:apply-templates select="TEI"/>
            </table>
            <hr/>
            <br/>
            <br/>
        </xsl:if>
    </xsl:template>
	
	<xsl:template match="SROMembership">
		<span class="no-first-line field">Является членом СРО:</span><br/>
		<xsl:for-each select="SRO">
		    <span class="no-first-line"><xsl:value-of select="@SROType"/> - <xsl:value-of select="."/></span><br/>
		</xsl:for-each>
	</xsl:template>
		 
		<xsl:template match="Placement">
			<xsl:choose>
				<xsl:when test=".='1'">Объекты, расположенные на суше</xsl:when>
				<xsl:when test=".='2'">Водный объект</xsl:when>
			</xsl:choose>
		</xsl:template>	
		
    <xsl:template match="Measure">
        <xsl:choose>
            <xsl:when test=". = '003'">мм</xsl:when><!--Миллиметр-->
			<xsl:when test=". = '004'">см</xsl:when><!--Сантиметр-->
			<xsl:when test=". = '005'">дм</xsl:when><!--Дециметр-->
			<xsl:when test=". = '006'">м</xsl:when><!--Метр-->
			<xsl:when test=". = '008'">км; тыс. м</xsl:when><!--Километр; тысяча метров-->
			<xsl:when test=". = '009'">Мм; млн. м</xsl:when><!--Мегаметр; миллион метров-->
			<xsl:when test=". = '039'">дюйм</xsl:when><!--Дюйм (25,4 мм)-->
			<xsl:when test=". = '041'">фут</xsl:when><!--Фут (0,3048 м)-->
			<xsl:when test=". = '043'">ярд</xsl:when><!--Ярд (0,9144 м)-->
			<xsl:when test=". = '047'">миля</xsl:when><!--Морская миля (1852 м)-->
			<xsl:when test=". = '050'">мм<sup><small>2</small></sup></xsl:when><!--Квадратный миллиметр-->
			<xsl:when test=". = '051'">см<sup><small>2</small></sup></xsl:when><!--Квадратный сантиметр-->
			<xsl:when test=". = '053'">дм<sup><small>2</small></sup></xsl:when><!--Квадратный дециметр-->
			<xsl:when test=". = '055'">м<sup><small>2</small></sup></xsl:when><!--Квадратный метр-->
			<xsl:when test=". = '058'">тыс. м<sup><small>2</small></sup></xsl:when><!--Тысяча квадратных метров-->
			<xsl:when test=". = '059'">га</xsl:when><!--Гектар-->
			<xsl:when test=". = '061'">км<sup><small>2</small></sup></xsl:when><!--Квадратный километр-->
			<xsl:when test=". = '071'">дюйм<sup><small>2</small></sup></xsl:when><!--Квадратный дюйм (645,16 мм<sup><small>2)-->
			<xsl:when test=". = '073'">фут<sup><small>2</small></sup></xsl:when><!--Квадратный фут (0,092903 м<sup><small>2)-->
			<xsl:when test=". = '075'">ярд<sup><small>2</small></sup></xsl:when><!--Квадратный ярд (0,8361274 м<sup><small>2)-->
			<xsl:when test=". = '109'">а</xsl:when><!--Ар (100 м<sup><small>2)-->
			<xsl:when test=". = '110'">мм<sup><small>3</small></sup></xsl:when><!--Кубический миллиметр-->
			<xsl:when test=". = '111'">см<sup><small>3</small></sup>; мл</xsl:when><!--Кубический сантиметр; миллилитр-->
			<xsl:when test=". = '112'">л; дм<sup><small>3</small></sup></xsl:when><!--Литр; кубический дециметр-->
			<xsl:when test=". = '113'">м<sup><small>3</small></sup></xsl:when><!--Кубический метр-->
			<xsl:when test=". = '118'">дл</xsl:when><!--Децилитр-->
			<xsl:when test=". = '122'">гл</xsl:when><!--Гектолитр-->
			<xsl:when test=". = '126'">Мл</xsl:when><!--Мегалитр-->
			<xsl:when test=". = '131'">дюйм<sup><small>3</small></sup></xsl:when><!--Кубический дюйм (16387,1 мм<sup><small>3)-->
			<xsl:when test=". = '132'">фут<sup><small>3</small></sup></xsl:when><!--Кубический фут (0,02831685 м<sup><small>3)-->
			<xsl:when test=". = '133'">ярд<sup><small>3</small></sup></xsl:when><!--Кубический ярд (0,764555 м<sup><small>3)-->
			<xsl:when test=". = '159'">млн. м<sup><small>3</small></sup></xsl:when><!--Миллион кубических метров-->
			<xsl:when test=". = '160'">гг</xsl:when><!--Гектограмм-->
			<xsl:when test=". = '161'">мг</xsl:when><!--Миллиграмм-->
			<xsl:when test=". = '162'">кар</xsl:when><!--Метрический карат-->
			<xsl:when test=". = '163'">г</xsl:when><!--Грамм-->
			<xsl:when test=". = '166'">кг</xsl:when><!--Килограмм-->
			<xsl:when test=". = '168'">т</xsl:when><!--Тонна; метрическая тонна (1000 кг)-->
			<xsl:when test=". = '170'">тыс. т</xsl:when><!--Килотонна-->
			<xsl:when test=". = '173'">сг</xsl:when><!--Сантиграмм-->
			<xsl:when test=". = '181'">БРТ</xsl:when><!--Брутто-регистровая тонна (2,8316 м<sup><small>3)-->
			<xsl:when test=". = '185'">т грп</xsl:when><!--Грузоподъемность в метрических тоннах-->
			<xsl:when test=". = '206'">ц</xsl:when><!--Центнер (метрический) (100 кг); гектокилограмм; квинтал (метрический); децитонна-->
			<xsl:when test=". = '212'">Вт</xsl:when><!--Ватт-->
			<xsl:when test=". = '214'">кВт</xsl:when><!--Киловатт-->
			<xsl:when test=". = '215'">МВт; тыс. кВт</xsl:when><!--Мегаватт; тысяча киловатт-->
			<xsl:when test=". = '222'">В</xsl:when><!--Вольт-->
			<xsl:when test=". = '223'">кВ</xsl:when><!--Киловольт-->
			<xsl:when test=". = '227'">кВ.А</xsl:when><!--Киловольт-ампер-->
			<xsl:when test=". = '228'">МВ.А</xsl:when><!--Мегавольт-ампер (тысяча киловольт-ампер)-->
			<xsl:when test=". = '230'">квар</xsl:when><!--Киловар-->
			<xsl:when test=". = '243'">Вт.ч</xsl:when><!--Ватт-час-->
			<xsl:when test=". = '245'">кВт.ч</xsl:when><!--Киловатт-час-->
			<xsl:when test=". = '246'">МВт.ч; тыс. кВт.ч</xsl:when><!--Мегаватт-час; 1000 киловатт-часов-->
			<xsl:when test=". = '247'">ГВт.ч</xsl:when><!--Гигаватт-час (миллион киловатт-часов)-->
			<xsl:when test=". = '260'">А</xsl:when><!--Ампер-->
			<xsl:when test=". = '263'">А.ч</xsl:when><!--Ампер-час (3,6 кКл)-->
			<xsl:when test=". = '264'">тыс. А.ч</xsl:when><!--Тысяча ампер-часов-->
			<xsl:when test=". = '270'">Кл</xsl:when><!--Кулон-->
			<xsl:when test=". = '271'">Дж</xsl:when><!--Джоуль-->
			<xsl:when test=". = '273'">кДж</xsl:when><!--Килоджоуль-->
			<xsl:when test=". = '274'">Ом</xsl:when><!--Ом-->
			<xsl:when test=". = '280'">°C</xsl:when><!--Градус Цельсия-->
			<xsl:when test=". = '281'">°F</xsl:when><!--Градус Фаренгейта-->
			<xsl:when test=". = '282'">кд</xsl:when><!--Кандела-->
			<xsl:when test=". = '283'">лк</xsl:when><!--Люкс-->
			<xsl:when test=". = '284'">лм</xsl:when><!--Люмен-->
			<xsl:when test=". = '288'">K</xsl:when><!--Кельвин-->
			<xsl:when test=". = '289'">Н</xsl:when><!--Ньютон-->
			<xsl:when test=". = '290'">Гц</xsl:when><!--Герц-->
			<xsl:when test=". = '291'">кГц</xsl:when><!--Килогерц-->
			<xsl:when test=". = '292'">МГц</xsl:when><!--Мегагерц-->
			<xsl:when test=". = '294'">Па</xsl:when><!--Паскаль-->
			<xsl:when test=". = '296'">См</xsl:when><!--Сименс-->
			<xsl:when test=". = '297'">кПа</xsl:when><!--Килопаскаль-->
			<xsl:when test=". = '298'">МПа</xsl:when><!--Мегапаскаль-->
			<xsl:when test=". = '300'">атм</xsl:when><!--Физическая атмосфера (101325 Па)-->
			<xsl:when test=". = '301'">ат</xsl:when><!--Техническая атмосфера (98066,5 Па)-->
			<xsl:when test=". = '302'">ГБк</xsl:when><!--Гигабеккерель-->
			<xsl:when test=". = '304'">мКи</xsl:when><!--Милликюри-->
			<xsl:when test=". = '305'">Ки</xsl:when><!--Кюри-->
			<xsl:when test=". = '306'">г Д/И</xsl:when><!--Грамм делящихся изотопов-->
			<xsl:when test=". = '308'">мб</xsl:when><!--Миллибар-->
			<xsl:when test=". = '309'">бар</xsl:when><!--Бар-->
			<xsl:when test=". = '310'">гб</xsl:when><!--Гектобар-->
			<xsl:when test=". = '312'">кб</xsl:when><!--Килобар-->
			<xsl:when test=". = '314'">Ф</xsl:when><!--Фарад-->
			<xsl:when test=". = '316'">кг/м<sup><small>3</small></sup></xsl:when><!--Килограмм на кубический метр-->
			<xsl:when test=". = '323'">Бк</xsl:when><!--Беккерель-->
			<xsl:when test=". = '324'">Вб</xsl:when><!--Вебер-->
			<xsl:when test=". = '327'">уз</xsl:when><!--Узел (миля/ч)-->
			<xsl:when test=". = '328'">м/с</xsl:when><!--Метр в секунду-->
			<xsl:when test=". = '330'">об/с</xsl:when><!--Оборот в секунду-->
			<xsl:when test=". = '331'">об/мин</xsl:when><!--Оборот в минуту-->
			<xsl:when test=". = '333'">км/ч</xsl:when><!--Километр в час-->
			<xsl:when test=". = '335'">м/с<sup><small>2</small></sup></xsl:when><!--Метр на секунду в квадрате-->
			<xsl:when test=". = '349'">Кл/кг</xsl:when><!--Кулон на килограмм-->
			<xsl:when test=". = '354'">с</xsl:when><!--Секунда-->
			<xsl:when test=". = '355'">мин</xsl:when><!--Минута-->
			<xsl:when test=". = '356'">ч</xsl:when><!--Час-->
			<xsl:when test=". = '359'">сут; дн</xsl:when><!--Сутки-->
			<xsl:when test=". = '360'">нед</xsl:when><!--Неделя-->
			<xsl:when test=". = '361'">дек</xsl:when><!--Декада-->
			<xsl:when test=". = '362'">мес</xsl:when><!--Месяц-->
			<xsl:when test=". = '364'">кварт</xsl:when><!--Квартал-->
			<xsl:when test=". = '365'">полгода</xsl:when><!--Полугодие-->
			<xsl:when test=". = '366'">г; лет</xsl:when><!--Год-->
			<xsl:when test=". = '368'">деслет</xsl:when><!--Десятилетие-->
			<xsl:when test=". = '499'">кг/с</xsl:when><!--Килограмм в секунду-->
			<xsl:when test=". = '533'">т пар/ч</xsl:when><!--Тонна пара в час-->
			<xsl:when test=". = '596'">м<sup><small>3</small></sup>/с</xsl:when><!--Кубический метр в секунду-->
			<xsl:when test=". = '598'">м<sup><small>3</small></sup>/ч</xsl:when><!--Кубический метр в час-->
			<xsl:when test=". = '599'">тыс. м<sup><small>3</small></sup>/сут</xsl:when><!--Тысяча кубических метров в сутки-->
			<xsl:when test=". = '616'">боб</xsl:when><!--Бобина-->
			<xsl:when test=". = '625'">л.</xsl:when><!--Лист-->
			<xsl:when test=". = '626'">100 л.</xsl:when><!--Сто листов-->
			<xsl:when test=". = '630'">тыс станд. усл. кирп</xsl:when><!--Тысяча стандартных условных кирпичей-->
			<xsl:when test=". = '641'">дюжина</xsl:when><!--Дюжина (12 шт.)-->
			<xsl:when test=". = '657'">изд</xsl:when><!--Изделие-->
			<xsl:when test=". = '683'">100 ящ.</xsl:when><!--Сто ящиков-->
			<xsl:when test=". = '704'">набор</xsl:when><!--Набор-->
			<xsl:when test=". = '715'">пар</xsl:when><!--Пара (2 шт.)-->
			<xsl:when test=". = '730'">20</xsl:when><!--Два десятка-->
			<xsl:when test=". = '732'">10 пар</xsl:when><!--Десять пар-->
			<xsl:when test=". = '733'">дюжина пар</xsl:when><!--Дюжина пар-->
			<xsl:when test=". = '734'">посыл</xsl:when><!--Посылка-->
			<xsl:when test=". = '735'">часть</xsl:when><!--Часть-->
			<xsl:when test=". = '736'">рул</xsl:when><!--Рулон-->
			<xsl:when test=". = '737'">дюжина рул</xsl:when><!--Дюжина рулонов-->
			<xsl:when test=". = '740'">дюжина шт</xsl:when><!--Дюжина штук-->
			<xsl:when test=". = '745'">элем</xsl:when><!--Элемент-->
			<xsl:when test=". = '778'">упак</xsl:when><!--Упаковка-->
			<xsl:when test=". = '780'">дюжина упак</xsl:when><!--Дюжина упаковок-->
			<xsl:when test=". = '781'">100 упак</xsl:when><!--Сто упаковок-->
			<xsl:when test=". = '796'">шт</xsl:when><!--Штука-->
			<xsl:when test=". = '797'">100 шт</xsl:when><!--Сто штук-->
			<xsl:when test=". = '798'">тыс. шт; 1000 шт</xsl:when><!--Тысяча штук-->
			<xsl:when test=". = '799'">млн. шт</xsl:when><!--Миллион штук-->
			<xsl:when test=". = '800'">млрд. шт</xsl:when><!--Миллиард штук-->
			<xsl:when test=". = '801'">Биллион шт</xsl:when><!--Биллион штук (Европа); триллион штук-->
            <xsl:when test=". = '802'">Квинтильон шт</xsl:when><!--Квинтильон штук (Европа)-->
			<xsl:when test=". = '820'">креп. спирта по массе</xsl:when><!--Крепость спирта по массе-->
			<xsl:when test=". = '821'">креп. спирта по объему</xsl:when><!--Крепость спирта по объему-->
			<xsl:when test=". = '831'">л 100% спирта</xsl:when><!--Литр чистого (100%) спирта-->
			<xsl:when test=". = '833'">Гл 100% спирта</xsl:when><!--Гектолитр чистого (100%) спирта-->
			<xsl:when test=". = '841'">кг H<sub>2</sub>О<sub>2</sub></xsl:when><!--Килограмм пероксида водорода-->
			<xsl:when test=". = '845'">кг 90% с/в</xsl:when><!--Килограмм 90%-го сухого вещества-->
			<xsl:when test=". = '847'">т 90% с/в</xsl:when><!--Тонна 90%-го сухого вещества-->
			<xsl:when test=". = '852'">кг К<sub>2</sub>О</xsl:when><!--Килограмм оксида калия-->
			<xsl:when test=". = '859'">кг КОН</xsl:when><!--Килограмм гидроксида калия-->
			<xsl:when test=". = '861'">кг N</xsl:when><!--Килограмм азота-->
			<xsl:when test=". = '863'">кг NaOH</xsl:when><!--Килограмм гидроксида натрия-->
			<xsl:when test=". = '865'">кг Р<sub>2</sub>О<sub>5</sub></xsl:when><!--Килограмм пятиокиси фосфора-->
			<xsl:when test=". = '867'">кг U</xsl:when><!--Килограмм урана-->
			<xsl:when test=". = '018'">пог. м</xsl:when><!--Погонный метр-->
			<xsl:when test=". = '019'">тыс. пог. м</xsl:when><!--Тысяча погонных метров-->
			<xsl:when test=". = '020'">усл. м</xsl:when><!--Условный метр-->
			<xsl:when test=". = '048'">тыс. усл. м</xsl:when><!--Тысяча условных метров-->
			<xsl:when test=". = '049'">км усл. труб</xsl:when><!--Километр условных труб-->
			<xsl:when test=". = '054'">тыс. дм<sup><small>2</small></sup></xsl:when><!--Тысяча квадратных дециметров-->
			<xsl:when test=". = '056'">млн. дм<sup><small>2</small></sup></xsl:when><!--Миллион квадратных дециметров-->
			<xsl:when test=". = '057'">млн. м<sup><small>2</small></sup></xsl:when><!--Миллион квадратных метров-->
			<xsl:when test=". = '060'">тыс. га</xsl:when><!--Тысяча гектаров-->
			<xsl:when test=". = '062'">усл. м<sup><small>2</small></sup></xsl:when><!--Условный квадратный метр-->
			<xsl:when test=". = '063'">тыс. усл. м<sup><small>2</small></sup></xsl:when><!--Тысяча условных квадратных метров-->
			<xsl:when test=". = '064'">млн. усл. м<sup><small>2</small></sup></xsl:when><!--Миллион условных квадратных метров-->
			<xsl:when test=". = '081'">м<sup><small>2</small></sup> общ. пл</xsl:when><!--Квадратный метр общей площади-->
			<xsl:when test=". = '082'">тыс. м<sup><small></small></sup>2 общ. пл</xsl:when><!--Тысяча квадратных метров общей площади-->
			<xsl:when test=". = '083'">млн. м<sup><small>2</small></sup> общ. пл</xsl:when><!--Миллион квадратных метров общей площади-->
			<xsl:when test=". = '084'">м<sup><small>2</small></sup> жил. пл</xsl:when><!--Квадратный метр жилой площади-->
			<xsl:when test=". = '085'">тыс. м<sup><small>2</small></sup> жил. пл</xsl:when><!--Тысяча квадратных метров жилой площади-->
			<xsl:when test=". = '086'">млн. м<sup><small>2</small></sup> жил. пл</xsl:when><!--Миллион квадратных метров жилой площади-->
			<xsl:when test=". = '087'">м<sup><small>2</small></sup> уч. лаб. здан</xsl:when><!--Квадратный метр учебно-лабораторных зданий-->
			<xsl:when test=". = '088'">тыс. м<sup><small>2</small></sup> уч. лаб. здан</xsl:when><!--Тысяча квадратных метров учебно-лабораторных зданий-->
			<xsl:when test=". = '089'">млн. м<sup><small>2</small></sup> 2 мм исч</xsl:when><!--Миллион квадратных метров в двухмиллиметровом исчислении-->
			<xsl:when test=". = '114'">тыс. м<sup><small>3</small></sup></xsl:when><!--Тысяча кубических метров-->
			<xsl:when test=". = '115'">млрд. м<sup><small>3</small></sup></xsl:when><!--Миллиард кубических метров-->
			<xsl:when test=". = '116'">дкл</xsl:when><!--Декалитр-->
			<xsl:when test=". = '119'">тыс. дкл</xsl:when><!--Тысяча декалитров-->
			<xsl:when test=". = '120'">млн. дкл</xsl:when><!--Миллион декалитров-->
			<xsl:when test=". = '121'">плотн. м<sup><small>3</small></sup></xsl:when><!--Плотный кубический метр-->
			<xsl:when test=". = '123'">усл. м<sup><small>3</small></sup></xsl:when><!--Условный кубический метр-->
			<xsl:when test=". = '124'">тыс. усл. м<sup><small>3</small></sup></xsl:when><!--Тысяча условных кубических метров-->
			<xsl:when test=". = '125'">млн. м<sup><small>3</small></sup> перераб. газа</xsl:when><!--Миллион кубических метров переработки газа-->
			<xsl:when test=". = '127'">тыс. плотн. м<sup><small>3</small></sup></xsl:when><!--Тысяча плотных кубических метров-->
			<xsl:when test=". = '128'">тыс. пол. л</xsl:when><!--Тысяча полулитров-->
			<xsl:when test=". = '129'">млн. пол. л</xsl:when><!--Миллион полулитров-->
			<xsl:when test=". = '130'">тыс. л; 1000 л</xsl:when><!--Тысяча литров; 1000 литров-->
			<xsl:when test=". = '165'">тыс. кар</xsl:when><!--Тысяча каратов метрических-->
			<xsl:when test=". = '167'">млн. кар</xsl:when><!--Миллион каратов метрических-->
			<xsl:when test=". = '169'">тыс. т</xsl:when><!--Тысяча тонн-->
			<xsl:when test=". = '171'">млн. т</xsl:when><!--Миллион тонн-->
			<xsl:when test=". = '172'">т усл. топл</xsl:when><!--Тонна условного топлива-->
			<xsl:when test=". = '175'">тыс. т усл. топл</xsl:when><!--Тысяча тонн условного топлива-->
			<xsl:when test=". = '176'">млн. т усл. топл</xsl:when><!--Миллион тонн условного топлива-->
			<xsl:when test=". = '177'">тыс. т единовр. хран</xsl:when><!--Тысяча тонн единовременного хранения-->
			<xsl:when test=". = '178'">тыс. т перераб</xsl:when><!--Тысяча тонн переработки-->
			<xsl:when test=". = '179'">усл. т</xsl:when><!--Условная тонна-->
			<xsl:when test=". = '207'">тыс. ц</xsl:when><!--Тысяча центнеров-->
			<xsl:when test=". = '226'">В.А</xsl:when><!--Вольт-ампер-->
			<xsl:when test=". = '231'">м/ч</xsl:when><!--Метр в час-->
			<xsl:when test=". = '232'">ккал</xsl:when><!--Килокалория-->
			<xsl:when test=". = '233'">Гкал</xsl:when><!--Гигакалория-->
			<xsl:when test=". = '234'">тыс. Гкал</xsl:when><!--Тысяча гигакалорий-->
			<xsl:when test=". = '235'">млн. Гкал</xsl:when><!--Миллион гигакалорий-->
			<xsl:when test=". = '236'">кал/ч</xsl:when><!--Калория в час-->
			<xsl:when test=". = '237'">ккал/ч</xsl:when><!--Килокалория в час-->
			<xsl:when test=". = '238'">Гкал/ч</xsl:when><!--Гигакалория в час-->
			<xsl:when test=". = '239'">тыс. Гкал/ч</xsl:when><!--Тысяча гигакалорий в час-->
			<xsl:when test=". = '241'">млн. А.ч</xsl:when><!--Миллион ампер-часов-->
			<xsl:when test=". = '242'">млн. кВ.А</xsl:when><!--Миллион киловольт-ампер-->
			<xsl:when test=". = '248'">кВ.А Р</xsl:when><!--Киловольт-ампер реактивный-->
			<xsl:when test=". = '249'">млрд. кВт.ч</xsl:when><!--Миллиард киловатт-часов-->
			<xsl:when test=". = '250'">тыс. кВ.А Р</xsl:when><!--Тысяча киловольт-ампер реактивных-->
			<xsl:when test=". = '251'">л. с</xsl:when><!--Лошадиная сила-->
			<xsl:when test=". = '252'">тыс. л. с</xsl:when><!--Тысяча лошадиных сил-->
			<xsl:when test=". = '253'">млн. л. с</xsl:when><!--Миллион лошадиных сил-->
			<xsl:when test=". = '254'">бит</xsl:when><!--Бит-->
			<xsl:when test=". = '255'">байт</xsl:when><!--Байт-->
			<xsl:when test=". = '256'">кбайт</xsl:when><!--Килобайт-->
			<xsl:when test=". = '257'">Мбайт</xsl:when><!--Мегабайт-->
			<xsl:when test=". = '258'">бод</xsl:when><!--Бод-->
			<xsl:when test=". = '287'">Гн</xsl:when><!--Генри-->
			<xsl:when test=". = '313'">Тл</xsl:when><!--Тесла-->
			<xsl:when test=". = '317'">кг/см<sup><small>2</small></sup></xsl:when><!--Килограмм на квадратный сантиметр-->
			<xsl:when test=". = '337'">мм вод. ст</xsl:when><!--Миллиметр водяного столба-->
			<xsl:when test=". = '338'">мм рт. ст</xsl:when><!--Миллиметр ртутного столба-->
			<xsl:when test=". = '339'">см вод. ст</xsl:when><!--Сантиметр водяного столба-->
			<xsl:when test=". = '352'">мкс</xsl:when><!--Микросекунда-->
			<xsl:when test=". = '353'">млс</xsl:when><!--Миллисекунда-->
			<xsl:when test=". = '383'">руб</xsl:when><!--Рубль-->
			<xsl:when test=". = '384'">тыс. руб</xsl:when><!--Тысяча рублей-->
			<xsl:when test=". = '385'">млн. руб</xsl:when><!--Миллион рублей-->
			<xsl:when test=". = '386'">млрд. руб</xsl:when><!--Миллиард рублей-->
			<xsl:when test=". = '387'">трлн. руб</xsl:when><!--Триллион рублей-->
            <xsl:when test=". = '388'">Квадрильон руб</xsl:when><!--Квадрильон рублей-->
			<xsl:when test=". = '414'">пасс.км</xsl:when><!--Пассажиро-километр-->
			<xsl:when test=". = '421'">пасс. мест</xsl:when><!--Пассажирское место (пассажирских мест)-->
			<xsl:when test=". = '423'">тыс. пасс.км</xsl:when><!--Тысяча пассажиро-километров-->
			<xsl:when test=". = '424'">млн. пасс. км</xsl:when><!--Миллион пассажиро-километров-->
			<xsl:when test=". = '427'">пасс.поток</xsl:when><!--Пассажиропоток-->
			<xsl:when test=". = '449'">т.км</xsl:when><!--Тонно-километр-->
			<xsl:when test=". = '450'">тыс. т.км</xsl:when><!--Тысяча тонно-километров-->
			<xsl:when test=". = '451'">млн. т. км</xsl:when><!--Миллион тонно-километров-->
			<xsl:when test=". = '479'">тыс. набор</xsl:when><!--Тысяча наборов-->
			<xsl:when test=". = '510'">г/кВт.ч</xsl:when><!--Грамм на киловатт-час-->
			<xsl:when test=". = '511'">кг/Гкал</xsl:when><!--Килограмм на гигакалорию-->
			<xsl:when test=". = '512'">т.ном</xsl:when><!--Тонно-номер-->
			<xsl:when test=". = '513'">авто т</xsl:when><!--Автотонна-->
			<xsl:when test=". = '514'">т.тяги</xsl:when><!--Тонна тяги-->
			<xsl:when test=". = '515'">дедвейт.т</xsl:when><!--Дедвейт-тонна-->
			<xsl:when test=". = '516'">т.танид</xsl:when><!--Тонно-танид-->
			<xsl:when test=". = '521'">чел/м<sup><small>2</small></sup></xsl:when><!--Человек на квадратный метр-->
			<xsl:when test=". = '522'">чел/км<sup><small>2</small></sup></xsl:when><!--Человек на квадратный километр-->
			<xsl:when test=". = '534'">т/ч</xsl:when><!--Тонна в час-->
			<xsl:when test=". = '535'">т/сут</xsl:when><!--Тонна в сутки-->
			<xsl:when test=". = '536'">т/смен</xsl:when><!--Тонна в смену-->
			<xsl:when test=". = '537'">тыс. т/сез</xsl:when><!--Тысяча тонн в сезон-->
			<xsl:when test=". = '538'">тыс. т/год</xsl:when><!--Тысяча тонн в год-->
			<xsl:when test=". = '539'">чел.ч</xsl:when><!--Человеко-час-->
			<xsl:when test=". = '540'">чел.дн</xsl:when><!--Человеко-день-->
			<xsl:when test=". = '541'">тыс. чел.дн</xsl:when><!--Тысяча человеко-дней-->
			<xsl:when test=". = '542'">тыс. чел.ч</xsl:when><!--Тысяча человеко-часов-->
			<xsl:when test=". = '543'">тыс. усл. банк/ смен</xsl:when><!--Тысяча условных банок в смену-->
			<xsl:when test=". = '544'">млн. ед/год</xsl:when><!--Миллион единиц в год-->
			<xsl:when test=". = '545'">посещ/смен</xsl:when><!--Посещение в смену-->
			<xsl:when test=". = '546'">тыс. посещ/смен</xsl:when><!--Тысяча посещений в смену-->
			<xsl:when test=". = '547'">пар/смен</xsl:when><!--Пара в смену-->
			<xsl:when test=". = '548'">тыс. пар/смен</xsl:when><!--Тысяча пар в смену-->
			<xsl:when test=". = '550'">млн. т/год</xsl:when><!--Миллион тонн в год-->
			<xsl:when test=". = '552'">т перераб/сут</xsl:when><!--Тонна переработки в сутки-->
			<xsl:when test=". = '553'">тыс. т перераб/ сут</xsl:when><!--Тысяча тонн переработки в сутки-->
			<xsl:when test=". = '554'">ц перераб/сут</xsl:when><!--Центнер переработки в сутки-->
			<xsl:when test=". = '555'">тыс. ц перераб/ сут</xsl:when><!--Тысяча центнеров переработки в сутки-->
			<xsl:when test=". = '556'">тыс. гол/год</xsl:when><!--Тысяча голов в год-->
			<xsl:when test=". = '557'">млн. гол/год</xsl:when><!--Миллион голов в год-->
			<xsl:when test=". = '558'">тыс. птицемест</xsl:when><!--Тысяча птицемест-->
			<xsl:when test=". = '559'">тыс. кур. несуш</xsl:when><!--Тысяча кур-несушек-->
			<xsl:when test=". = '2541'">бит/с</xsl:when><!--Бит в секунду-->
			<xsl:when test=". = '2543'">кбит/с</xsl:when><!--Килобит в секунду-->
			<xsl:when test=". = '561'">тыс. т пар/ч</xsl:when><!--Тысяча тонн пара в час-->
			<xsl:when test=". = '562'">тыс. пряд.верет</xsl:when><!--Тысяча прядильных веретен-->
			<xsl:when test=". = '563'">тыс. пряд.мест</xsl:when><!--Тысяча прядильных мест-->
			<xsl:when test=". = '639'">доз</xsl:when><!--Доза-->
			<xsl:when test=". = '640'">тыс. доз</xsl:when><!--Тысяча доз-->
			<xsl:when test=". = '642'">ед</xsl:when><!--Единица-->
			<xsl:when test=". = '643'">тыс. ед</xsl:when><!--Тысяча единиц-->
			<xsl:when test=". = '644'">млн. ед</xsl:when><!--Миллион единиц-->
			<xsl:when test=". = '661'">канал</xsl:when><!--Канал-->
			<xsl:when test=". = '673'">тыс. компл</xsl:when><!--Тысяча комплектов-->
			<xsl:when test=". = '698'">мест</xsl:when><!--Место-->
			<xsl:when test=". = '699'">тыс. мест</xsl:when><!--Тысяча мест-->
			<xsl:when test=". = '709'">тыс. ном</xsl:when><!--Тысяча номеров-->
			<xsl:when test=". = '724'">тыс. га порц</xsl:when><!--Тысяча гектаров порций-->
			<xsl:when test=". = '729'">тыс. пач</xsl:when><!--Тысяча пачек-->
			<xsl:when test=". = '744'">%</xsl:when><!--Процент-->
			<xsl:when test=". = '746'">‰</xsl:when><!--Промилле (0,1 процента)-->
			<xsl:when test=". = '751'">тыс. рул</xsl:when><!--Тысяча рулонов-->
			<xsl:when test=". = '761'">тыс. стан</xsl:when><!--Тысяча станов-->
			<xsl:when test=". = '762'">станц</xsl:when><!--Станция-->
			<xsl:when test=". = '775'">тыс. тюбик</xsl:when><!--Тысяча тюбиков-->
			<xsl:when test=". = '776'">тыс. усл.туб</xsl:when><!--Тысяча условных тубов-->
			<xsl:when test=". = '779'">млн. упак</xsl:when><!--Миллион упаковок-->
			<xsl:when test=". = '782'">тыс. упак</xsl:when><!--Тысяча упаковок-->
			<xsl:when test=". = '792'">чел</xsl:when><!--Человек-->
			<xsl:when test=". = '793'">тыс. чел</xsl:when><!--Тысяча человек-->
			<xsl:when test=". = '794'">млн. чел</xsl:when><!--Миллион человек-->
			<xsl:when test=". = '808'">млн. экз</xsl:when><!--Миллион экземпляров-->
			<xsl:when test=". = '810'">яч</xsl:when><!--Ячейка-->
			<xsl:when test=". = '812'">ящ</xsl:when><!--Ящик-->
			<xsl:when test=". = '836'">гол</xsl:when><!--Голова-->
			<xsl:when test=". = '837'">тыс. пар</xsl:when><!--Тысяча пар-->
			<xsl:when test=". = '838'">млн. пар</xsl:when><!--Миллион пар-->
			<xsl:when test=". = '839'">компл</xsl:when><!--Комплект-->
			<xsl:when test=". = '840'">секц</xsl:when><!--Секция-->
			<xsl:when test=". = '868'">бут</xsl:when><!--Бутылка-->
			<xsl:when test=". = '869'">тыс. бут</xsl:when><!--Тысяча бутылок-->
			<xsl:when test=". = '870'">ампул</xsl:when><!--Ампула-->
			<xsl:when test=". = '871'">тыс. ампул</xsl:when><!--Тысяча ампул-->
			<xsl:when test=". = '872'">флак</xsl:when><!--Флакон-->
			<xsl:when test=". = '873'">тыс. флак</xsl:when><!--Тысяча флаконов-->
			<xsl:when test=". = '874'">тыс. туб</xsl:when><!--Тысяча тубов-->
			<xsl:when test=". = '875'">тыс. кор</xsl:when><!--Тысяча коробок-->
			<xsl:when test=". = '876'">усл. ед</xsl:when><!--Условная единица-->
			<xsl:when test=". = '877'">тыс. усл. ед</xsl:when><!--Тысяча условных единиц-->
            <xsl:when test=". = '878'">млн. усл. ед</xsl:when><!--Миллион условных единиц-->
			<xsl:when test=". = '879'">усл. шт</xsl:when><!--Условная штука-->
			<xsl:when test=". = '880'">тыс. усл. шт</xsl:when><!--Тысяча условных штук-->
			<xsl:when test=". = '881'">усл. банк</xsl:when><!--Условная банка-->
			<xsl:when test=". = '882'">тыс. усл. банк</xsl:when><!--Тысяча условных банок-->
			<xsl:when test=". = '883'">млн. усл. банк</xsl:when><!--Миллион условных банок-->
			<xsl:when test=". = '884'">усл. кус</xsl:when><!--Условный кусок-->
			<xsl:when test=". = '885'">тыс. усл. кус</xsl:when><!--Тысяча условных кусков-->
			<xsl:when test=". = '886'">млн. усл. кус</xsl:when><!--Миллион условных кусков-->
			<xsl:when test=". = '887'">усл. ящ</xsl:when><!--Условный ящик-->
			<xsl:when test=". = '888'">тыс. усл. ящ</xsl:when><!--Тысяча условных ящиков-->
			<xsl:when test=". = '889'">усл. кат</xsl:when><!--Условная катушка-->
			<xsl:when test=". = '890'">тыс. усл. кат</xsl:when><!--Тысяча условных катушек-->
			<xsl:when test=". = '891'">усл. плит</xsl:when><!--Условная плитка-->
			<xsl:when test=". = '892'">тыс. усл. плит</xsl:when><!--Тысяча условных плиток-->
			<xsl:when test=". = '893'">усл. кирп</xsl:when><!--Условный кирпич-->
			<xsl:when test=". = '894'">тыс. усл. кирп</xsl:when><!--Тысяча условных кирпичей-->
			<xsl:when test=". = '895'">млн. усл. кирп</xsl:when><!--Миллион условных кирпичей-->
			<xsl:when test=". = '896'">семей</xsl:when><!--Семья-->
			<xsl:when test=". = '897'">тыс. семей</xsl:when><!--Тысяча семей-->
			<xsl:when test=". = '898'">млн. семей</xsl:when><!--Миллион семей-->
			<xsl:when test=". = '899'">домхоз</xsl:when><!--Домохозяйство-->
			<xsl:when test=". = '900'">тыс. домхоз</xsl:when><!--Тысяча домохозяйств-->
			<xsl:when test=". = '901'">млн. домхоз</xsl:when><!--Миллион домохозяйств-->
			<xsl:when test=". = '902'">учен. мест</xsl:when><!--Ученическое место-->
			<xsl:when test=". = '903'">тыс. учен. мест</xsl:when><!--Тысяча ученических мест-->
			<xsl:when test=". = '904'">раб. мест</xsl:when><!--Рабочее место-->
			<xsl:when test=". = '905'">тыс. раб. мест</xsl:when><!--Тысяча рабочих мест-->
			<xsl:when test=". = '906'">посад. мест</xsl:when><!--Посадочное место-->
			<xsl:when test=". = '907'">тыс. посад. мест</xsl:when><!--Тысяча посадочных мест-->
			<xsl:when test=". = '908'">ном</xsl:when><!--Номер-->
			<xsl:when test=". = '909'">кварт</xsl:when><!--Квартира-->
			<xsl:when test=". = '910'">тыс. кварт</xsl:when><!--Тысяча квартир-->
			<xsl:when test=". = '911'">коек</xsl:when><!--Койка-->
			<xsl:when test=". = '912'">тыс. коек</xsl:when><!--Тысяча коек-->
			<xsl:when test=". = '913'">том книжн. фонд</xsl:when><!--Том книжного фонда-->
			<xsl:when test=". = '914'">тыс. том. книжн. фонд</xsl:when><!--Тысяча томов книжного фонда-->
			<xsl:when test=". = '915'">усл. рем</xsl:when><!--Условный ремонт-->
			<xsl:when test=". = '916'">усл. рем/год</xsl:when><!--Условный ремонт в год-->
			<xsl:when test=". = '917'">смен</xsl:when><!--Смена-->
			<xsl:when test=". = '918'">л. авт</xsl:when><!--Лист авторский-->
			<xsl:when test=". = '920'">л. печ</xsl:when><!--Лист печатный-->
			<xsl:when test=". = '921'">л. уч.-изд</xsl:when><!--Лист учетно-издательский-->
			<xsl:when test=". = '922'">знак</xsl:when><!--Знак-->
			<xsl:when test=". = '923'">слово</xsl:when><!--Слово-->
			<xsl:when test=". = '924'">символ</xsl:when><!--Символ-->
			<xsl:when test=". = '925'">усл. труб</xsl:when><!--Условная труба-->
			<xsl:when test=". = '930'">тыс. пласт</xsl:when><!--Тысяча пластин-->
			<xsl:when test=". = '937'">млн. доз</xsl:when><!--Миллион доз-->
			<xsl:when test=". = '949'">млн. лист.оттиск</xsl:when><!--Миллион листов-оттисков-->
			<xsl:when test=". = '950'">ваг (маш).дн</xsl:when><!--Вагоно(машино)-день-->
			<xsl:when test=". = '951'">тыс. ваг (маш).ч</xsl:when><!--Тысяча вагоно-(машино)-часов-->
			<xsl:when test=". = '952'">тыс. ваг (маш).км</xsl:when><!--Тысяча вагоно-(машино)-километров-->
			<xsl:when test=". = '953'">тыс. мест.км</xsl:when><!--Тысяча место-километров-->
			<xsl:when test=". = '954'">ваг.сут</xsl:when><!--Вагоно-сутки-->
			<xsl:when test=". = '955'">тыс. поезд.ч</xsl:when><!--Тысяча поездо-часов-->
			<xsl:when test=". = '956'">тыс. поезд.км</xsl:when><!--Тысяча поездо-километров-->
			<xsl:when test=". = '957'">тыс. т.миль</xsl:when><!--Тысяча тонно-миль-->
			<xsl:when test=". = '958'">тыс. пасс.миль</xsl:when><!--Тысяча пассажиро-миль-->
			<xsl:when test=". = '959'">автомоб.дн</xsl:when><!--Автомобиле-день-->
			<xsl:when test=". = '960'">тыс. автомоб.т.дн</xsl:when><!--Тысяча автомобиле-тонно-дней-->
			<xsl:when test=". = '961'">тыс. автомоб.ч</xsl:when><!--Тысяча автомобиле-часов-->
			<xsl:when test=". = '962'">тыс. автомоб.мест. дн</xsl:when><!--Тысяча автомобиле-место-дней-->
			<xsl:when test=". = '963'">привед.ч</xsl:when><!--Приведенный час-->
			<xsl:when test=". = '964'">самолет.км</xsl:when><!--Самолето-километр-->
			<xsl:when test=". = '965'">тыс. км</xsl:when><!--Тысяча километров-->
			<xsl:when test=". = '966'">тыс. тоннаж. рейс</xsl:when><!--Тысяча тоннаже-рейсов-->
			<xsl:when test=". = '967'">млн. т. миль</xsl:when><!--Миллион тонно-миль-->
			<xsl:when test=". = '968'">млн. пасс. миль</xsl:when><!--Миллион пассажиро-миль-->
			<xsl:when test=". = '969'">млн. тоннаж. миль</xsl:when><!--Миллион тоннаже-миль-->
			<xsl:when test=". = '970'">млн. пасс. мест. миль</xsl:when><!--Миллион пассажиро-место-миль-->
			<xsl:when test=". = '971'">корм. дн</xsl:when><!--Кормо-день-->
			<xsl:when test=". = '972'">ц корм ед</xsl:when><!--Центнер кормовых единиц-->
			<xsl:when test=". = '973'">тыс. автомоб. км</xsl:when><!--Тысяча автомобиле-километров-->
			<xsl:when test=". = '974'">тыс. тоннаж. сут</xsl:when><!--Тысяча тоннаже-сут-->
			<xsl:when test=". = '975'">суго. сут.</xsl:when><!--Суго-сутки-->
			<xsl:when test=". = '976'">штук в 20-футовом эквиваленте</xsl:when><!--Штук в 20-футовом эквиваленте (ДФЭ)-->
			<xsl:when test=". = '977'">канал. км</xsl:when><!--Канало-километр-->
			<xsl:when test=". = '978'">канал. конц</xsl:when><!--Канало-концы-->
			<xsl:when test=". = '979'">тыс. экз</xsl:when><!--Тысяча экземпляров-->
			<xsl:when test=". = '980'">тыс. доллар</xsl:when><!--Тысяча долларов-->
			<xsl:when test=". = '981'">тыс. корм ед</xsl:when><!--Тысяча тонн кормовых единиц-->
			<xsl:when test=". = '982'">млн. корм ед</xsl:when><!--Миллион тонн кормовых единиц-->
			<xsl:when test=". = '983'">суд.сут</xsl:when><!--Судо-сутки-->
			<xsl:when test=". = '2545'">Мбит/с</xsl:when><!--Мегабит в секунду-->
			<xsl:when test=". = '2547'">Гбит/с</xsl:when><!--Гигабит в секунду-->
			<xsl:when test=". = '2551'">Байт/с</xsl:when><!--Байт в секунду-->
			<xsl:when test=". = '2552'">Гбайт/с</xsl:when><!--Гигабайт в секунду-->
			<xsl:when test=". = '2561'">кбайт/с</xsl:when><!--Килобайт в секунду-->
			<xsl:when test=". = '2571'">Мбайт/с</xsl:when><!--Мегабайт в секунду-->
			<xsl:when test=". = '2581'">Эрл</xsl:when><!--Эрланг-->
			<xsl:when test=". = '276'">Гр</xsl:when><!--Грей-->
			<xsl:when test=". = '3135'">Дб</xsl:when><!--Децибел-->
			<xsl:when test=". = '7923'">Абонент</xsl:when><!--Абонент-->
			<xsl:when test=". = '9061'">млн. га</xsl:when><!--Миллион гектаров-->
			<xsl:when test=". = '9062'">млрд. га</xsl:when><!--Миллиард гектаров-->
			<xsl:when test=". = '9557'">млн. гол</xsl:when><!--Миллион голов-->
			<xsl:when test=". = '9642'">балл</xsl:when><!--Балл-->
			<xsl:when test=". = '9802'">млн. доллар</xsl:when><!--Миллион долларов-->
			<xsl:when test=". = '984'">ц/га</xsl:when><!--Центнеров с гектара-->
			<xsl:when test=". = '985'">тыс. гол</xsl:when><!--Тысяча голов-->
			<xsl:when test=". = '986'">тыс. краск. оттиск</xsl:when><!--Тысяча краско-оттисков -->
			<xsl:when test=". = '987'">млн. краск. оттиск</xsl:when><!--Миллион краско-оттисков-->
			<xsl:when test=". = '988'">млн. усл. плит</xsl:when><!--Миллион условных плиток-->
			<xsl:when test=". = '989'">чел/ч</xsl:when><!--Человек в час-->
			<xsl:when test=". = '990'">пасс/ч</xsl:when><!--Пассажиров в час-->
			<xsl:when test=". = '991'">пасс. миля</xsl:when><!--Пассажиро-миля-->
			<xsl:when test=". = '2553'">Гбайт</xsl:when><!--Гигабайт-->
			<xsl:when test=". = '2554'">Тбайт</xsl:when><!--Терабайт-->
			<xsl:when test=". = '2555'">Пбайт</xsl:when><!--Петабайт-->
			<xsl:when test=". = '2556'">Эбайт</xsl:when><!--Эксабайт-->
			<xsl:when test=". = '2557'">Збайт</xsl:when><!--Зеттабайт-->
			<xsl:when test=". = '2558'">Йбайт</xsl:when><!--Йоттабайт-->
			<xsl:when test=". = '3831'">руб. тонна</xsl:when><!--Рубль тонна-->
			<xsl:when test=". = '5401'">дет. дн</xsl:when><!--Дето-день-->
			<xsl:when test=". = '5423'">чел/год</xsl:when><!--Человек в год-->
			<xsl:when test=". = '5451'">посещ</xsl:when><!--Посещение-->
			<xsl:when test=". = '5562'">тыс. гнезд</xsl:when><!--Тысяча гнезд-->
			<xsl:when test=". = '6421'">ед/год</xsl:when><!--Единиц в год-->
			<xsl:when test=". = '6422'">вызов</xsl:when><!--Вызов-->
			<xsl:when test=". = '6424'">штамм</xsl:when><!--Штамм-->
			<xsl:when test=". = '8361'">ос</xsl:when><!--Особь-->
			<xsl:when test=". = '8751'">кор</xsl:when><!--Коробка-->
			<xsl:when test=". = '9111'">койк. дн</xsl:when><!--Койко-день-->
			<xsl:when test=". = '9113'">пациент. дн</xsl:when><!--Пациенто-день-->
			<xsl:when test=". = '9245'">запись</xsl:when><!--Запись-->
			<xsl:when test=". = '9246'">докум</xsl:when><!--Документ-->
			<xsl:when test=". = '9491'">лист. оттиск</xsl:when><!--Лист-оттиск-->
			<xsl:when test=". = '9501'">ваг (маш) ч</xsl:when><!--Вагоно (машино)-час-->
			<xsl:when test=". = '9641'">летн. ч</xsl:when><!--Летный час-->
			<xsl:when test=". = '9803'">млрд. доллар</xsl:when><!--Миллиард долларов-->
			<xsl:when test=". = '9805'">доллар за тонну</xsl:when><!--Доллар за тонну-->
			<xsl:when test=". = '6423'">пос.ед</xsl:when><!--Посевная единица-->
			<xsl:when test=". = '508'">103 м<sup><small>3</small></sup>/ч</xsl:when><!--Тысяча метров кубических в час-->
			<xsl:when test=". = '164'">мкг</xsl:when><!--Микрограмм-->
			<xsl:when test=". = '303'">кБк</xsl:when><!--Килобеккерель-->
			<xsl:when test=". = '307'">МБк</xsl:when><!--Мегабеккерель-->
			<xsl:when test=". = '320'">моль</xsl:when><!--Моль-->
			<xsl:when test=". = '9910'">МЕ</xsl:when><!--Международная единица биологической активности-->
			<xsl:when test=". = '9911'">тыс. МЕ</xsl:when><!--Тысяча международных единиц биологической активности-->
			<xsl:when test=". = '9912'">млн. МЕ</xsl:when><!--Миллион международных единиц биологической активности-->
			<xsl:when test=". = '9913'">МЕ/г</xsl:when><!--Международная единица биологической активности на грамм-->
			<xsl:when test=". = '9914'">тыс. МЕ/г</xsl:when><!--Тысяча международных единиц биологической активности на грамм-->
			<xsl:when test=". = '9915'">млн. МЕ/г</xsl:when><!--Миллион международных единиц биологической активности на грамм-->
			<xsl:when test=". = '9916'">МЕ/мл</xsl:when><!--Международная единица биологической активности на миллилитр-->
			<xsl:when test=". = '9917'">тыс. МЕ/мл</xsl:when><!--Тысяча международных единиц биологической активности на миллилитр-->
			<xsl:when test=". = '9918'">млн. МЕ/мл</xsl:when><!--Миллион международных единиц биологической активности на миллилитр-->
			<xsl:when test=". = '9920'">ЕД</xsl:when><!--Единица действия биологической активности-->
			<xsl:when test=". = '9921'">ЕД/г</xsl:when><!--Единица биологической активности на грамм-->
			<xsl:when test=". = '9922'">тыс. ЕД/г</xsl:when><!--Тысяча единиц действия биологической активности на грамм-->
			<xsl:when test=". = '9923'">ЕД/мкл</xsl:when><!--Единица действия биологической активности на микролитр-->
			<xsl:when test=". = '9924'">ЕД/мл</xsl:when><!--Единица действия биологической активности на миллилитр-->
			<xsl:when test=". = '9925'">тыс. ЕД/мл</xsl:when><!--Тысяча единиц действия биологической активности на миллилитр-->
			<xsl:when test=". = '9926'">млн. ЕД/мл</xsl:when><!--Миллион единиц действия биологической активности на миллилитр-->
			<xsl:when test=". = '9927'">ЕД/сут</xsl:when><!--Единица действия биологической активности в сутки-->
			<xsl:when test=". = '9930'">АЕ</xsl:when><!--Антитоксическая единица-->
			<xsl:when test=". = '9931'">тыс. АЕ</xsl:when><!--Тысяча антитоксических единиц-->
			<xsl:when test=". = '9940'">АТрЕ</xsl:when><!--Антитрипсиновая единица-->
			<xsl:when test=". = '9941'">тыс. АТрЕ</xsl:when><!--Тысяча антитрипсиновых единиц-->
			<xsl:when test=". = '9950'">ИР</xsl:when><!--Индекс Реактивности-->
			<xsl:when test=". = '9951'">ИР/мл</xsl:when><!--Индекс Реактивности на миллилитр-->
			<xsl:when test=". = '9960'">кБк/мл</xsl:when><!--Килобеккерель на миллилитр-->
			<xsl:when test=". = '9961'">МБк/мл</xsl:when><!--Мегабеккерель на миллилитр-->
			<xsl:when test=". = '9962'">МБк/м<sup><small>2</small></sup></xsl:when><!--Мегабеккерель на метр квадратный-->
			<xsl:when test=". = '9970'">КИЕ/мл</xsl:when><!--Калликреиновая ингибирующая единица на миллилитр-->
			<xsl:when test=". = '9971'">тыс. КИЕ/МЛ</xsl:when><!--Тысяча калликреиновых ингибирующих единиц на миллилитр-->
			<xsl:when test=". = '9980'">млн. КОЕ</xsl:when><!--Миллион колониеобразующих единиц-->
			<xsl:when test=". = '9981'">млн. КОЕ/пакет</xsl:when><!--Миллион колониеобразующих единиц на пакет-->
			<xsl:when test=". = '9982'">млрд. КОЕ</xsl:when><!--Миллиард колониеобразующих единиц-->
			<xsl:when test=". = '9983'">ПЕ</xsl:when><!--Протеолитическая единица-->
			<xsl:when test=". = '9985'">Мкг/мл</xsl:when><!--Микрограмм на миллилитр-->
			<xsl:when test=". = '9986'">Мкг/сут</xsl:when><!--Микрограмм в сутки-->
			<xsl:when test=". = '9987'">Мкг/ч</xsl:when><!--Микрограмм в час-->
			<xsl:when test=". = '9988'">Мкг/доза</xsl:when><!--Микрограмм на дозу-->
			<xsl:when test=". = '9990'">моль/мл</xsl:when><!--Миллимоль на миллилитр-->
			<xsl:when test=". = '9991'">ммоль/л</xsl:when><!--Миллимоль на литр-->
			<xsl:when test=". = '728'">пач</xsl:when><!--Пачка-->
			<xsl:when test=". = '509'">км/сут</xsl:when><!--Километр в сутки-->
			<xsl:when test=". = '277'">мкГр</xsl:when><!--Микрогрей-->
			<xsl:when test=". = '278'">мГр</xsl:when><!--Миллигрей-->
			<xsl:when test=". = '279'">кГр</xsl:when><!--Килогрей-->
			<xsl:when test=". = '293'">ГГц</xsl:when><!--Гигагерц-->
			<xsl:when test=". = '295'">ТГц</xsl:when><!--Терагерц-->
			<xsl:when test=". = '351'">нс</xsl:when><!--Наносекунда-->
			<xsl:when test=". = '318'">Зв</xsl:when><!--Зиверт-->
			<xsl:when test=". = '319'">мкЗв</xsl:when><!--Микрозиверт-->
			<xsl:when test=". = '321'">мЗв</xsl:when><!--Миллизиверт-->
			<xsl:when test=". = '348'">фс</xsl:when><!--Фемтосекунда-->
			<xsl:when test=". = '350'">пс</xsl:when><!--Пикосекунда-->
			<xsl:when test=". = '2311'">Гр/с</xsl:when><!--Грей в секунду-->
			<xsl:when test=". = '2312'">Гр/мин</xsl:when><!--Грей в минуту-->
			<xsl:when test=". = '2313'">Гр/ч</xsl:when><!--Грей в час-->
			<xsl:when test=". = '2314'">мкГр/с</xsl:when><!--Микрогрей в секунду-->
			<xsl:when test=". = '2315'">мкГр/ч</xsl:when><!--Микрогрей в час-->
			<xsl:when test=". = '2316'">мГр/ч</xsl:when><!--Миллигрей в час-->
			<xsl:when test=". = '2351'">Зв/ч</xsl:when><!--Зиверт в час-->
			<xsl:when test=". = '2352'">мкЗв/с</xsl:when><!--Микрозиверт в секунду-->
			<xsl:when test=". = '2353'">мкЗв/ч</xsl:when><!--Микрозиверт в час-->
			<xsl:when test=". = '2354'">мЗв/ч</xsl:when><!--Миллизиверт в час-->
			<xsl:when test=". = '426'">пар груз поезд/сут</xsl:when><!--Пар грузовых поездов в сутки-->
			<xsl:when test=". = '747'">б.п.</xsl:when><!--Базисный пункт-->
			<xsl:when test=". = '340'">г у.т./кВт•ч</xsl:when><!--Грамм условного топлива на киловатт-час-->
			<xsl:when test=". = '341'">кг у.т./Гкал</xsl:when><!--Килограмм условного топлива на гигакалорию-->
			<xsl:when test=". = '9823'">млрд. евро</xsl:when><!--Миллиард евро-->
			<xsl:when test=". = '9822'">млн. евро</xsl:when><!--Миллион евро-->
			<xsl:when test=". = '3181'">чел.-Зв</xsl:when><!--Человеко-зиверт-->
			<xsl:when test=". = '3231'">Бк/м<sup><small>3</small></sup></xsl:when><!--Беккерель на метр кубический-->
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="PrintUniqueObject">
        <xsl:param name="Code" select="0"/>
        <p>Объект отностится к категории уникальных в соответствии с пунктом <xsl:value-of select="$Code"/> части 2 статьи 48.2 Градостроительного кодекса Российской Федерации:</p> 
        <p>
        <xsl:choose>
            <xsl:when test="$Code=1">1) высота более чем 100 метров, для ветроэнергетических установок - более чем 250 метров</xsl:when>
            <xsl:when test="$Code=2">2) пролеты более чем 100 метров</xsl:when>
            <xsl:when test="$Code=3">3) наличие консоли более чем 20 метров</xsl:when>
            <xsl:when test="$Code=4">4) заглубление подземной части (полностью или частично) ниже планировочной отметки земли более чем на 15 метров</xsl:when>
        </xsl:choose>
        </p>
    </xsl:template>
    
    <xsl:template name="PrintDangerousAndComplexObject">
        <xsl:param name="Code" select="0"/>
        <p>Объект отностится к категории особо опасных и технически сложных объектов в соответствии с пунктом 
          <xsl:choose>
              <xsl:when test="$Code=1"> 1 </xsl:when>
              <xsl:when test="$Code=2"> 2 </xsl:when>
              <xsl:when test="$Code=3"> 3 </xsl:when>
              <xsl:when test="$Code=4"> 4 </xsl:when>
              <xsl:when test="$Code=5"> 5 </xsl:when>
              <xsl:when test="$Code=6"> 6 </xsl:when>
              <xsl:when test="$Code=7"> 7 </xsl:when>
              <xsl:when test="$Code=8"> 8 </xsl:when>
              <xsl:when test="$Code=9"> 9 </xsl:when>
              <xsl:when test="$Code=10"> 10.1 </xsl:when>
              <xsl:when test="$Code=11"> 10.2 </xsl:when>
              <xsl:when test="$Code=12"> 11. a</xsl:when>
              <xsl:when test="$Code=13"> 11. б</xsl:when>
              <xsl:when test="$Code=14"> 11. в</xsl:when>
          </xsl:choose>
           части 1 статьи 48.2 Градостроительного кодекса Российской Федерации:</p> 
        <p>
            <xsl:choose>
                <xsl:when test="$Code=1">1) объекты использования атомной энергии в соответствии с законодательством   Российской Федерации об использовании атомной энергии, за исключением объектов, содержащих:<br/>
                    а) только радиационные источники, в которых генерируется ионизирующее излучение, на объектах, радиационное воздействие от которых в случае аварии ограничивается помещениями, где осуществляется непосредственное обращение с источниками ионизирующего излучения;<br/>
                    б) радиационные источники, содержащие в своем составе только радионуклидные источники четвертой и пятой категорий радиационной опасности в соответствии с законодательством Российской Федерации об использовании атомной энергии </xsl:when>
                <xsl:when test="$Code=2">2) гидротехнические сооружения первого и второго классов, устанавливаемые в соответствии с законодательством о безопасности гидротехнических сооружений</xsl:when>
                <xsl:when test="$Code=3">3) сооружения связи, являющиеся особо опасными, технически сложными в соответствии с законодательством Российской Федерации в области связи</xsl:when>
                <xsl:when test="$Code=4">4) линии электропередачи и иные объекты электросетевого хозяйства напряжением 330 киловольт и более</xsl:when>
                <xsl:when test="$Code=5">5) объекты космической инфраструктуры</xsl:when>
                <xsl:when test="$Code=6">6) объекты инфраструктуры воздушного транспорта, являющиеся особо опасными, технически сложными объектами в соответствии с воздушным законодательством Российской Федерации</xsl:when>
                <xsl:when test="$Code=7">7) объекты капитального строительства инфраструктуры железнодорожного транспорта общего пользования, являющиеся особо опасными, технически сложными объектами в соответствии с законодательством Российской Федерации о железнодорожном транспорте</xsl:when>
                <xsl:when test="$Code=8">8) объекты инфраструктуры внеуличного транспорта</xsl:when>
                <xsl:when test="$Code=9">9) портовые гидротехнические сооружения, относящиеся к объектам инфраструктуры морского порта, за исключением объектов инфраструктуры морского порта, предназначенных для стоянок и обслуживания маломерных, спортивных парусных и прогулочных судов</xsl:when>
                <xsl:when test="$Code=10">10.1) тепловые электростанции мощностью 150 мегаватт и выше</xsl:when>
                <xsl:when test="$Code=11">10.2) подвесные канатные дороги</xsl:when>
                <xsl:when test="$Code=12">11. а) опасные производственные объекты I и II классов опасности, на которых получаются, используются, перерабатываются, образуются, хранятся, транспортируются, уничтожаются опасные вещества</xsl:when>
                <xsl:when test="$Code=13">11. б) опасные производственные объекты, на которых получаются, транспортируются, используются расплавы черных и цветных металлов, сплавы на основе этих расплавов с применением оборудования, рассчитанного на максимальное количество расплава 500 килограммов и более</xsl:when>
                <xsl:when test="$Code=14">11. в) опасные производственные объекты, на которых ведутся горные работы (за исключением добычи общераспространенных полезных ископаемых и разработки россыпных месторождений полезных ископаемых, осуществляемых открытым способом без применения взрывных работ), работы по обогащению полезных ископаемых</xsl:when>
            </xsl:choose>
        </p>
    </xsl:template>
		
</xsl:stylesheet>
