<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exportar.aspx.cs" Inherits="Exportar" %>

<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
table{background-color:transparent}table{border-spacing:0;border-collapse:collapse}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}td,th{padding:0}
span.dx-vam, span.dx-vat, span.dx-vab, a.dx-vam, a.dx-vat, a.dx-vab 
{ 
    line-height: 100%; 
    padding: 2px 0;
    text-decoration: inherit;
}

.dx-vam, .dx-valm { vertical-align: middle; }
.dx-vam, .dx-vat, .dx-vab { display: inline-block!important; }

.dxpDesignMode,
.dxpDesignMode b {
	float: none !important;
}

.dxpDesignMode {
	display: inline;
}

.dxp-summary,
.dxp-sep,
.dxp-button,
.dxp-pageSizeItem,
.dxp-num,
.dxp-current,
.dxp-ellip /*Bootstrap correction*/
{
    -moz-box-sizing: content-box;
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}
.dxp-summary,
.dxp-sep,
.dxp-button,
.dxp-pageSizeItem,
.dxp-num,
.dxp-current,
.dxp-ellip
{
	display: block;
	float: left;
    line-height: 100%;
}
b,strong{font-weight:700}
.dxp-current,
.dxp-disabledButton, 
.dxp-disabledButton span
{
    cursor: default;
}
.dxp-button,
.dxp-dropDownButton,
.dxp-num
{
    cursor: pointer;
}
.dxWeb_rpHeaderTopLeftCorner,
.dxWeb_rpHeaderTopRightCorner,
.dxWeb_rpHeaderBottomLeftCorner,
.dxWeb_rpHeaderBottomRightCorner,
.dxWeb_rpBottomLeftCorner,
.dxWeb_rpBottomRightCorner,
.dxWeb_rpTopLeftCorner,
.dxWeb_rpTopRightCorner,
.dxWeb_rpGroupBoxBottomLeftCorner,
.dxWeb_rpGroupBoxBottomRightCorner,
.dxWeb_rpGroupBoxTopLeftCorner,
.dxWeb_rpGroupBoxTopRightCorner,
.dxWeb_mHorizontalPopOut,
.dxWeb_mVerticalPopOut,
.dxWeb_mVerticalPopOutRtl,
.dxWeb_mSubMenuItem,
.dxWeb_mSubMenuItemChecked,
.dxWeb_mScrollUp,
.dxWeb_mScrollDown,
.dxWeb_tcScrollLeft,
.dxWeb_tcScrollRight,
.dxWeb_tcScrollLeftHover,
.dxWeb_tcScrollRightHover,
.dxWeb_tcScrollLeftPressed,
.dxWeb_tcScrollRightPressed,
.dxWeb_tcScrollLeftDisabled,
.dxWeb_tcScrollRightDisabled,
.dxWeb_nbCollapse,
.dxWeb_nbExpand,
.dxWeb_splVSeparator,
.dxWeb_splVSeparatorHover,
.dxWeb_splHSeparator,
.dxWeb_splHSeparatorHover,
.dxWeb_splVCollapseBackwardButton,
.dxWeb_splVCollapseBackwardButtonHover,
.dxWeb_splHCollapseBackwardButton,
.dxWeb_splHCollapseBackwardButtonHover,
.dxWeb_splVCollapseForwardButton,
.dxWeb_splVCollapseForwardButtonHover,
.dxWeb_splHCollapseForwardButton,
.dxWeb_splHCollapseForwardButtonHover,
.dxWeb_pcCloseButton,
.dxWeb_pcPinButton,
.dxWeb_pcRefreshButton,
.dxWeb_pcCollapseButton,
.dxWeb_pcMaximizeButton,
.dxWeb_pcSizeGrip,
.dxWeb_pcSizeGripRtl,
.dxWeb_pPopOut,
.dxWeb_pPopOutDisabled,
.dxWeb_pAll,
.dxWeb_pAllDisabled,
.dxWeb_pPrev,
.dxWeb_pPrevDisabled,
.dxWeb_pNext,
.dxWeb_pNextDisabled,
.dxWeb_pLast,
.dxWeb_pLastDisabled,
.dxWeb_pFirst,
.dxWeb_pFirstDisabled,
.dxWeb_tvColBtn,
.dxWeb_tvColBtnRtl,
.dxWeb_tvExpBtn,
.dxWeb_tvExpBtnRtl,
.dxWeb_fmFolder,
.dxWeb_fmFolderLocked,
.dxWeb_fmCreateButton,
.dxWeb_fmMoveButton,
.dxWeb_fmRenameButton,
.dxWeb_fmDeleteButton,
.dxWeb_fmRefreshButton,
.dxWeb_fmDwnlButton,
.dxWeb_fmCopyButton,
.dxWeb_fmCreateButtonDisabled,
.dxWeb_fmMoveButtonDisabled,
.dxWeb_fmRenameButtonDisabled,
.dxWeb_fmDeleteButtonDisabled,
.dxWeb_fmRefreshButtonDisabled,
.dxWeb_fmDwnlButtonDisabled,
.dxWeb_fmCopyButtonDisabled,
.dxWeb_fmThumbnailCheck,
.dxWeb_ucClearButton,
.dxWeb_isPrevBtnHor,
.dxWeb_isNextBtnHor,
.dxWeb_isPrevBtnVert,
.dxWeb_isNextBtnVert,
.dxWeb_isPrevPageBtnHor,
.dxWeb_isPrevPageBtnHorOutside,
.dxWeb_isNextPageBtnHor,
.dxWeb_isNextPageBtnHorOutside,
.dxWeb_isPrevPageBtnVert,
.dxWeb_isPrevPageBtnVertOutside,
.dxWeb_isNextPageBtnVert,
.dxWeb_isNextPageBtnVertOutside,
.dxWeb_isPrevBtnHorDisabled,
.dxWeb_isNextBtnHorDisabled,
.dxWeb_isPrevBtnVertDisabled,
.dxWeb_isNextBtnVertDisabled,
.dxWeb_isPrevPageBtnHorDisabled,
.dxWeb_isPrevPageBtnHorOutsideDisabled,
.dxWeb_isNextPageBtnHorDisabled,
.dxWeb_isNextPageBtnHorOutsideDisabled,
.dxWeb_isPrevPageBtnVertDisabled,
.dxWeb_isPrevPageBtnVertOutsideDisabled,
.dxWeb_isNextPageBtnVertDisabled,
.dxWeb_isNextPageBtnVertOutsideDisabled,
.dxWeb_isDot,
.dxWeb_isDotDisabled,
.dxWeb_isDotSelected,
.dxWeb_isPlayBtn,
.dxWeb_isPauseBtn,
.dxWeb_igCloseButton,
.dxWeb_igNextButton,
.dxWeb_igPrevButton,
.dxWeb_igPlayButton,
.dxWeb_igPauseButton,
.dxWeb_igNavigationBarMarker
 {
    display:block;
}
.dxWeb_pPrevDisabled
{
    background-position: -17px -442px;
    width: 16px;
    height: 17px;
}
.dxpc-collapseBtnChecked .dxWeb_pcCollapseButton,
.dxpc-maximizeBtnChecked .dxWeb_pcMaximizeButton,
.dxpc-pinBtnChecked .dxWeb_pcPinButton,
.dxpnl-btnPressed .dxWeb_pnlExpand,
.dxpnl-btnPressed .dxWeb_pnlExpandArrowBottom,
.dxpnl-btnPressed .dxWeb_pnlExpandArrowLeft,
.dxpnl-btnPressed .dxWeb_pnlExpandArrowRight,
.dxpnl-btnPressed .dxWeb_pnlExpandArrowTop,
.dxpnl-btnSelected .dxWeb_pnlExpand,
.dxpnl-btnSelected .dxWeb_pnlExpandArrowBottom,
.dxpnl-btnSelected .dxWeb_pnlExpandArrowLeft,
.dxpnl-btnSelected .dxWeb_pnlExpandArrowRight,
.dxpnl-btnSelected .dxWeb_pnlExpandArrowTop,
.dxpnl-btnSelected.dxpnl-btnPressed .dxWeb_pnlExpand,
.dxpnl-btnSelected.dxpnl-btnPressed .dxWeb_pnlExpandArrowBottom,
.dxpnl-btnSelected.dxpnl-btnPressed .dxWeb_pnlExpandArrowLeft,
.dxpnl-btnSelected.dxpnl-btnPressed .dxWeb_pnlExpandArrowRight,
.dxpnl-btnSelected.dxpnl-btnPressed .dxWeb_pnlExpandArrowTop,
.dxrpCollapsed .dxWeb_rpCollapseButton,
.dxTouchUI .dxWeb_igCloseButton,
.dxTouchUI .dxWeb_igPauseButton,
.dxTouchUI .dxWeb_igPlayButton,
.dxWeb_edtCheckBoxChecked,
.dxWeb_edtCheckBoxCheckedDisabled,
.dxWeb_edtCheckBoxGrayed,
.dxWeb_edtCheckBoxGrayedDisabled,
.dxWeb_edtCheckBoxUnchecked,
.dxWeb_edtCheckBoxUncheckedDisabled,
.dxWeb_fmBreadCrumbsSeparatorArrow,
.dxWeb_fmBreadCrumbsUpButton,
.dxWeb_fmBreadCrumbsUpButtonDisabled,
.dxWeb_fmCopyButton,
.dxWeb_fmCopyButtonDisabled,
.dxWeb_fmCreateButton,
.dxWeb_fmCreateButtonDisabled,
.dxWeb_fmDeleteButton,
.dxWeb_fmDeleteButtonDisabled,
.dxWeb_fmDwnlButton,
.dxWeb_fmDwnlButtonDisabled,
.dxWeb_fmFolder,
.dxWeb_fmFolderLocked,
.dxWeb_fmMoveButton,
.dxWeb_fmMoveButtonDisabled,
.dxWeb_fmRefreshButton,
.dxWeb_fmRefreshButtonDisabled,
.dxWeb_fmRenameButton,
.dxWeb_fmRenameButtonDisabled,
.dxWeb_fmThumbnailCheck,
.dxWeb_fmUplButton,
.dxWeb_fmUplButtonDisabled,
.dxWeb_igCloseButton,
.dxWeb_igNavigationBarMarker,
.dxWeb_igNextButton,
.dxWeb_igNextButtonDisabled,
.dxWeb_igNextButtonHover,
.dxWeb_igNextButtonPressed,
.dxWeb_igPauseButton,
.dxWeb_igPlayButton,
.dxWeb_igPrevButton,
.dxWeb_igPrevButtonDisabled,
.dxWeb_igPrevButtonHover,
.dxWeb_igPrevButtonPressed,
.dxWeb_isDot,
.dxWeb_isDotDisabled,
.dxWeb_isDotPressed,
.dxWeb_isDotSelected,
.dxWeb_isNextBtnHor,
.dxWeb_isNextBtnHorDisabled,
.dxWeb_isNextBtnVert,
.dxWeb_isNextBtnVertDisabled,
.dxWeb_isNextPageBtnHor,
.dxWeb_isNextPageBtnHorDisabled,
.dxWeb_isNextPageBtnHorOutside,
.dxWeb_isNextPageBtnHorOutsideDisabled,
.dxWeb_isNextPageBtnVert,
.dxWeb_isNextPageBtnVertDisabled,
.dxWeb_isNextPageBtnVertOutside,
.dxWeb_isNextPageBtnVertOutsideDisabled,
.dxWeb_isPauseBtn,
.dxWeb_isPlayBtn,
.dxWeb_isPrevBtnHor,
.dxWeb_isPrevBtnHorDisabled,
.dxWeb_isPrevBtnVert,
.dxWeb_isPrevBtnVertDisabled,
.dxWeb_isPrevPageBtnHor,
.dxWeb_isPrevPageBtnHorDisabled,
.dxWeb_isPrevPageBtnHorOutside,
.dxWeb_isPrevPageBtnHorOutsideDisabled,
.dxWeb_isPrevPageBtnVert,
.dxWeb_isPrevPageBtnVertDisabled,
.dxWeb_isPrevPageBtnVertOutside,
.dxWeb_isPrevPageBtnVertOutsideDisabled,
.dxWeb_izEWCloseButton,
.dxWeb_izHint,
.dxWeb_mAdaptiveMenu,
.dxWeb_mHorizontalPopOut,
.dxWeb_mScrollDown,
.dxWeb_mScrollUp,
.dxWeb_mSubMenuItem,
.dxWeb_mSubMenuItemChecked,
.dxWeb_mVerticalPopOut,
.dxWeb_mVerticalPopOutRtl,
.dxWeb_nbCollapse,
.dxWeb_nbExpand,
.dxWeb_pAll,
.dxWeb_pAllDisabled,
.dxWeb_pcCloseButton,
.dxWeb_pcCollapseButton,
.dxWeb_pcMaximizeButton,
.dxWeb_pcPinButton,
.dxWeb_pcRefreshButton,
.dxWeb_pcSizeGrip,
.dxWeb_pcSizeGripRtl,
.dxWeb_pFirst,
.dxWeb_pFirstDisabled,
.dxWeb_pLast,
.dxWeb_pLastDisabled,
.dxWeb_pNext,
.dxWeb_pNextDisabled,
.dxWeb_pnlExpand,
.dxWeb_pnlExpandArrowBottom,
.dxWeb_pnlExpandArrowLeft,
.dxWeb_pnlExpandArrowRight,
.dxWeb_pnlExpandArrowTop,
.dxWeb_pPopOut,
.dxWeb_pPopOutDisabled,
.dxWeb_pPrev,
.dxWeb_pPrevDisabled,
.dxWeb_rDialogBoxLauncher,
.dxWeb_rDialogBoxLauncherDisabled,
.dxWeb_rDialogBoxLauncherHover,
.dxWeb_rDialogBoxLauncherPressed,
.dxWeb_rGlrDown,
.dxWeb_rGlrDownDisabled,
.dxWeb_rGlrPopOut,
.dxWeb_rGlrPopOutDisabled,
.dxWeb_rGlrUp,
.dxWeb_rGlrUpDisabled,
.dxWeb_rMinBtn,
.dxWeb_rMinBtnChecked.dxWeb_rMinBtn,
.dxWeb_rMinBtnChecked.dxWeb_rMinBtnDisabled,
.dxWeb_rMinBtnChecked.dxWeb_rMinBtnHover,
.dxWeb_rMinBtnChecked.dxWeb_rMinBtnPressed,
.dxWeb_rMinBtnDisabled,
.dxWeb_rMinBtnHover,
.dxWeb_rMinBtnPressed,
.dxWeb_rpCollapseButton,
.dxWeb_rPopOut,
.dxWeb_splHCollapseBackwardButton,
.dxWeb_splHCollapseBackwardButtonHover,
.dxWeb_splHCollapseForwardButton,
.dxWeb_splHCollapseForwardButtonHover,
.dxWeb_splHSeparator,
.dxWeb_splHSeparatorHover,
.dxWeb_splVCollapseBackwardButton,
.dxWeb_splVCollapseBackwardButtonHover,
.dxWeb_splVCollapseForwardButton,
.dxWeb_splVCollapseForwardButtonHover,
.dxWeb_splVSeparator,
.dxWeb_splVSeparatorHover,
.dxWeb_tcScrollLeft,
.dxWeb_tcScrollLeftDisabled,
.dxWeb_tcScrollLeftHover,
.dxWeb_tcScrollLeftPressed,
.dxWeb_tcScrollRight,
.dxWeb_tcScrollRightDisabled,
.dxWeb_tcScrollRightHover,
.dxWeb_tcScrollRightPressed,
.dxWeb_tvColBtn,
.dxWeb_tvColBtnRtl,
.dxWeb_tvExpBtn,
.dxWeb_tvExpBtnRtl,
.dxWeb_ucClearButton,
.dxWeb_ucClearButtonDisabled
{
    background-repeat: no-repeat;
    background-color: transparent;
}
.dxWeb_pNextDisabled
{
    background-position: 0px -442px;
    width: 16px;
    height: 17px;
}
.dx-clear
{
	display: block;
	clear: both;
	height: 0;
	width: 0;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	visibility: hidden;
}
        .auto-style1 {
            vertical-align: middle;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background-image: url('mvwres://DevExpress.Web.v15.2,%20Version=15.2.9.0,%20Culture=neutral,%20PublicKeyToken=b88d1754d700e49a/DevExpress.Web.Images.sprite.png');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

<dx:ASPxGridView runat="server" ID="grillaReporte" AutoGenerateColumns="False" ClientInstanceName="grillaReporte" DataSourceID="odsReporte">
    <Columns>
        <dx:GridViewDataTextColumn FieldName="NombreProfesor" VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CodigoPack" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="NombreCliente" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ClasesCerradas" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ClasesPendientes" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="FechaPrimeraClase" VisibleIndex="6">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="TotalClases" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="EstaPagado" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
    </Columns>
        </dx:ASPxGridView>


                    <asp:ObjectDataSource ID="odsReporte" runat="server" SelectMethod="ObtenerDatosPagoCompleto" TypeName="SinAlitas.Admin.Negocio.CrudProfesores">
                        <SelectParameters>
                            <asp:Parameter Name="fechaInicio" Type="DateTime" />
                            <asp:Parameter Name="fechaTermino" Type="DateTime" />
                            <asp:Parameter Name="cantidadClases" Type="Int32" />
                        </SelectParameters>
        </asp:ObjectDataSource>
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="ReporteClases" GridViewID="grillaReporte" Landscape="True" ReportHeader="{\rtf1\ansi\ansicpg1252\deff0\deflang13322{\fonttbl{\f0\fnil\fcharset0 Tahoma;}{\f1\fnil\fcharset0 Times New Roman;}}
\viewkind4\uc1\pard\qc\lang3082\b\f0\fs32 Reporte Clases Profesores\par
\lang13322\b0\f1\fs20\par
}
" PaperKind="Legal">
            <Styles>
                <Default Font-Names="Segoe UI">
                </Default>
            </Styles>
        </dx:ASPxGridViewExporter>
    
    </div>
    </form>
</body>
</html>
