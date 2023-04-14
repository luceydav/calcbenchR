#' Create a new TextFootnote
#'
#' @description
#' TextFootnote Class
#'
#' @docType class
#' @title TextFootnote
#' @description TextFootnote Class
#' @format An \code{R6Class} generator object
#' @field entity_name  character [optional]
#' @field accession_id  integer [optional]
#' @field footnote_type  character [optional]
#' @field SEC_URL  character [optional]
#' @field fiscal_year  integer [optional]
#' @field fiscal_period  character [optional]
#' @field calendar_year  integer [optional]
#' @field calendar_period  character [optional]
#' @field filing_date  character [optional]
#' @field received_date  character [optional]
#' @field document_type  character [optional]
#' @field guide_link  character [optional]
#' @field page_url  character [optional]
#' @field entity_id  integer [optional]
#' @field id_detail  character [optional]
#' @field local_name  character [optional]
#' @field CIK  character [optional]
#' @field sec_accession_number  character [optional]
#' @field network_id  integer [optional]
#' @field schema  character [optional]
#' @field fact_id  integer [optional]
#' @field is_XBRL_document  character [optional]
#' @field ticker  character [optional]
#' @field sec_filing_id  integer [optional]
#' @field blob_id  character [optional]
#' @field date_reported  character [optional]
#' @field content  \link{XBRLDisclosure} [optional]
#' @field filing_type  character [optional]
#' @field description  character [optional]
#' @field disclosure_type_name  character [optional]
#' @field period_end_date  character [optional]
#' @field footnote_type_title  character [optional]
#' @field sub_sections  list(\link{DisclosureSubSection}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TextFootnote <- R6::R6Class(
  "TextFootnote",
  public = list(
    `entity_name` = NULL,
    `accession_id` = NULL,
    `footnote_type` = NULL,
    `SEC_URL` = NULL,
    `fiscal_year` = NULL,
    `fiscal_period` = NULL,
    `calendar_year` = NULL,
    `calendar_period` = NULL,
    `filing_date` = NULL,
    `received_date` = NULL,
    `document_type` = NULL,
    `guide_link` = NULL,
    `page_url` = NULL,
    `entity_id` = NULL,
    `id_detail` = NULL,
    `local_name` = NULL,
    `CIK` = NULL,
    `sec_accession_number` = NULL,
    `network_id` = NULL,
    `schema` = NULL,
    `fact_id` = NULL,
    `is_XBRL_document` = NULL,
    `ticker` = NULL,
    `sec_filing_id` = NULL,
    `blob_id` = NULL,
    `date_reported` = NULL,
    `content` = NULL,
    `filing_type` = NULL,
    `description` = NULL,
    `disclosure_type_name` = NULL,
    `period_end_date` = NULL,
    `footnote_type_title` = NULL,
    `sub_sections` = NULL,
    #' Initialize a new TextFootnote class.
    #'
    #' @description
    #' Initialize a new TextFootnote class.
    #'
    #' @param entity_name entity_name
    #' @param accession_id accession_id
    #' @param footnote_type footnote_type
    #' @param SEC_URL SEC_URL
    #' @param fiscal_year fiscal_year
    #' @param fiscal_period fiscal_period
    #' @param calendar_year calendar_year
    #' @param calendar_period calendar_period
    #' @param filing_date filing_date
    #' @param received_date received_date
    #' @param document_type document_type
    #' @param guide_link guide_link
    #' @param page_url page_url
    #' @param entity_id entity_id
    #' @param id_detail id_detail
    #' @param local_name local_name
    #' @param CIK CIK
    #' @param sec_accession_number sec_accession_number
    #' @param network_id network_id
    #' @param schema schema
    #' @param fact_id fact_id
    #' @param is_XBRL_document is_XBRL_document
    #' @param ticker ticker
    #' @param sec_filing_id sec_filing_id
    #' @param blob_id blob_id
    #' @param date_reported date_reported
    #' @param content content
    #' @param filing_type filing_type
    #' @param description description
    #' @param disclosure_type_name disclosure_type_name
    #' @param period_end_date period_end_date
    #' @param footnote_type_title footnote_type_title
    #' @param sub_sections sub_sections
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entity_name` = NULL, `accession_id` = NULL, `footnote_type` = NULL, `SEC_URL` = NULL, `fiscal_year` = NULL, `fiscal_period` = NULL, `calendar_year` = NULL, `calendar_period` = NULL, `filing_date` = NULL, `received_date` = NULL, `document_type` = NULL, `guide_link` = NULL, `page_url` = NULL, `entity_id` = NULL, `id_detail` = NULL, `local_name` = NULL, `CIK` = NULL, `sec_accession_number` = NULL, `network_id` = NULL, `schema` = NULL, `fact_id` = NULL, `is_XBRL_document` = NULL, `ticker` = NULL, `sec_filing_id` = NULL, `blob_id` = NULL, `date_reported` = NULL, `content` = NULL, `filing_type` = NULL, `description` = NULL, `disclosure_type_name` = NULL, `period_end_date` = NULL, `footnote_type_title` = NULL, `sub_sections` = NULL, ...) {
      if (!is.null(`entity_name`)) {
        if (!(is.character(`entity_name`) && length(`entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `entity_name`. Must be a string:", `entity_name`))
        }
        self$`entity_name` <- `entity_name`
      }
      if (!is.null(`accession_id`)) {
        if (!(is.numeric(`accession_id`) && length(`accession_id`) == 1)) {
          stop(paste("Error! Invalid data for `accession_id`. Must be an integer:", `accession_id`))
        }
        self$`accession_id` <- `accession_id`
      }
      if (!is.null(`footnote_type`)) {
        if (!(`footnote_type` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
          stop(paste("Error! \"", `footnote_type`, "\" cannot be assigned to `footnote_type`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
        }
        if (!(is.character(`footnote_type`) && length(`footnote_type`) == 1)) {
          stop(paste("Error! Invalid data for `footnote_type`. Must be a string:", `footnote_type`))
        }
        self$`footnote_type` <- `footnote_type`
      }
      if (!is.null(`SEC_URL`)) {
        if (!(is.character(`SEC_URL`) && length(`SEC_URL`) == 1)) {
          stop(paste("Error! Invalid data for `SEC_URL`. Must be a string:", `SEC_URL`))
        }
        self$`SEC_URL` <- `SEC_URL`
      }
      if (!is.null(`fiscal_year`)) {
        if (!(is.numeric(`fiscal_year`) && length(`fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_year`. Must be an integer:", `fiscal_year`))
        }
        self$`fiscal_year` <- `fiscal_year`
      }
      if (!is.null(`fiscal_period`)) {
        if (!(is.character(`fiscal_period`) && length(`fiscal_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period`. Must be a string:", `fiscal_period`))
        }
        self$`fiscal_period` <- `fiscal_period`
      }
      if (!is.null(`calendar_year`)) {
        if (!(is.numeric(`calendar_year`) && length(`calendar_year`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_year`. Must be an integer:", `calendar_year`))
        }
        self$`calendar_year` <- `calendar_year`
      }
      if (!is.null(`calendar_period`)) {
        if (!(is.character(`calendar_period`) && length(`calendar_period`) == 1)) {
          stop(paste("Error! Invalid data for `calendar_period`. Must be a string:", `calendar_period`))
        }
        self$`calendar_period` <- `calendar_period`
      }
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`received_date`)) {
        if (!is.character(`received_date`)) {
          stop(paste("Error! Invalid data for `received_date`. Must be a string:", `received_date`))
        }
        self$`received_date` <- `received_date`
      }
      if (!is.null(`document_type`)) {
        if (!(is.character(`document_type`) && length(`document_type`) == 1)) {
          stop(paste("Error! Invalid data for `document_type`. Must be a string:", `document_type`))
        }
        self$`document_type` <- `document_type`
      }
      if (!is.null(`guide_link`)) {
        if (!(is.character(`guide_link`) && length(`guide_link`) == 1)) {
          stop(paste("Error! Invalid data for `guide_link`. Must be a string:", `guide_link`))
        }
        self$`guide_link` <- `guide_link`
      }
      if (!is.null(`page_url`)) {
        if (!(is.character(`page_url`) && length(`page_url`) == 1)) {
          stop(paste("Error! Invalid data for `page_url`. Must be a string:", `page_url`))
        }
        self$`page_url` <- `page_url`
      }
      if (!is.null(`entity_id`)) {
        if (!(is.numeric(`entity_id`) && length(`entity_id`) == 1)) {
          stop(paste("Error! Invalid data for `entity_id`. Must be an integer:", `entity_id`))
        }
        self$`entity_id` <- `entity_id`
      }
      if (!is.null(`id_detail`)) {
        if (!(is.logical(`id_detail`) && length(`id_detail`) == 1)) {
          stop(paste("Error! Invalid data for `id_detail`. Must be a boolean:", `id_detail`))
        }
        self$`id_detail` <- `id_detail`
      }
      if (!is.null(`local_name`)) {
        if (!(is.character(`local_name`) && length(`local_name`) == 1)) {
          stop(paste("Error! Invalid data for `local_name`. Must be a string:", `local_name`))
        }
        self$`local_name` <- `local_name`
      }
      if (!is.null(`CIK`)) {
        if (!(is.character(`CIK`) && length(`CIK`) == 1)) {
          stop(paste("Error! Invalid data for `CIK`. Must be a string:", `CIK`))
        }
        self$`CIK` <- `CIK`
      }
      if (!is.null(`sec_accession_number`)) {
        if (!(is.character(`sec_accession_number`) && length(`sec_accession_number`) == 1)) {
          stop(paste("Error! Invalid data for `sec_accession_number`. Must be a string:", `sec_accession_number`))
        }
        self$`sec_accession_number` <- `sec_accession_number`
      }
      if (!is.null(`network_id`)) {
        if (!(is.numeric(`network_id`) && length(`network_id`) == 1)) {
          stop(paste("Error! Invalid data for `network_id`. Must be an integer:", `network_id`))
        }
        self$`network_id` <- `network_id`
      }
      if (!is.null(`schema`)) {
        if (!(`schema` %in% c("LocalName", "NetworkID", "BlobID"))) {
          stop(paste("Error! \"", `schema`, "\" cannot be assigned to `schema`. Must be \"LocalName\", \"NetworkID\", \"BlobID\".", sep = ""))
        }
        if (!(is.character(`schema`) && length(`schema`) == 1)) {
          stop(paste("Error! Invalid data for `schema`. Must be a string:", `schema`))
        }
        self$`schema` <- `schema`
      }
      if (!is.null(`fact_id`)) {
        if (!(is.numeric(`fact_id`) && length(`fact_id`) == 1)) {
          stop(paste("Error! Invalid data for `fact_id`. Must be an integer:", `fact_id`))
        }
        self$`fact_id` <- `fact_id`
      }
      if (!is.null(`is_XBRL_document`)) {
        if (!(is.logical(`is_XBRL_document`) && length(`is_XBRL_document`) == 1)) {
          stop(paste("Error! Invalid data for `is_XBRL_document`. Must be a boolean:", `is_XBRL_document`))
        }
        self$`is_XBRL_document` <- `is_XBRL_document`
      }
      if (!is.null(`ticker`)) {
        if (!(is.character(`ticker`) && length(`ticker`) == 1)) {
          stop(paste("Error! Invalid data for `ticker`. Must be a string:", `ticker`))
        }
        self$`ticker` <- `ticker`
      }
      if (!is.null(`sec_filing_id`)) {
        if (!(is.numeric(`sec_filing_id`) && length(`sec_filing_id`) == 1)) {
          stop(paste("Error! Invalid data for `sec_filing_id`. Must be an integer:", `sec_filing_id`))
        }
        self$`sec_filing_id` <- `sec_filing_id`
      }
      if (!is.null(`blob_id`)) {
        if (!(is.character(`blob_id`) && length(`blob_id`) == 1)) {
          stop(paste("Error! Invalid data for `blob_id`. Must be a string:", `blob_id`))
        }
        self$`blob_id` <- `blob_id`
      }
      if (!is.null(`date_reported`)) {
        if (!is.character(`date_reported`)) {
          stop(paste("Error! Invalid data for `date_reported`. Must be a string:", `date_reported`))
        }
        self$`date_reported` <- `date_reported`
      }
      if (!is.null(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
      }
      if (!is.null(`filing_type`)) {
        if (!(`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
          stop(paste("Error! \"", `filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
        }
        if (!(is.character(`filing_type`) && length(`filing_type`) == 1)) {
          stop(paste("Error! Invalid data for `filing_type`. Must be a string:", `filing_type`))
        }
        self$`filing_type` <- `filing_type`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`disclosure_type_name`)) {
        if (!(is.character(`disclosure_type_name`) && length(`disclosure_type_name`) == 1)) {
          stop(paste("Error! Invalid data for `disclosure_type_name`. Must be a string:", `disclosure_type_name`))
        }
        self$`disclosure_type_name` <- `disclosure_type_name`
      }
      if (!is.null(`period_end_date`)) {
        if (!is.character(`period_end_date`)) {
          stop(paste("Error! Invalid data for `period_end_date`. Must be a string:", `period_end_date`))
        }
        self$`period_end_date` <- `period_end_date`
      }
      if (!is.null(`footnote_type_title`)) {
        if (!(is.character(`footnote_type_title`) && length(`footnote_type_title`) == 1)) {
          stop(paste("Error! Invalid data for `footnote_type_title`. Must be a string:", `footnote_type_title`))
        }
        self$`footnote_type_title` <- `footnote_type_title`
      }
      if (!is.null(`sub_sections`)) {
        stopifnot(is.vector(`sub_sections`), length(`sub_sections`) != 0)
        sapply(`sub_sections`, function(x) stopifnot(R6::is.R6(x)))
        self$`sub_sections` <- `sub_sections`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TextFootnote in JSON format
    #' @export
    toJSON = function() {
      TextFootnoteObject <- list()
      if (!is.null(self$`entity_name`)) {
        TextFootnoteObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`accession_id`)) {
        TextFootnoteObject[["accession_id"]] <-
          self$`accession_id`
      }
      if (!is.null(self$`footnote_type`)) {
        TextFootnoteObject[["footnote_type"]] <-
          self$`footnote_type`
      }
      if (!is.null(self$`SEC_URL`)) {
        TextFootnoteObject[["SEC_URL"]] <-
          self$`SEC_URL`
      }
      if (!is.null(self$`fiscal_year`)) {
        TextFootnoteObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`fiscal_period`)) {
        TextFootnoteObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`calendar_year`)) {
        TextFootnoteObject[["calendar_year"]] <-
          self$`calendar_year`
      }
      if (!is.null(self$`calendar_period`)) {
        TextFootnoteObject[["calendar_period"]] <-
          self$`calendar_period`
      }
      if (!is.null(self$`filing_date`)) {
        TextFootnoteObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`received_date`)) {
        TextFootnoteObject[["received_date"]] <-
          self$`received_date`
      }
      if (!is.null(self$`document_type`)) {
        TextFootnoteObject[["document_type"]] <-
          self$`document_type`
      }
      if (!is.null(self$`guide_link`)) {
        TextFootnoteObject[["guide_link"]] <-
          self$`guide_link`
      }
      if (!is.null(self$`page_url`)) {
        TextFootnoteObject[["page_url"]] <-
          self$`page_url`
      }
      if (!is.null(self$`entity_id`)) {
        TextFootnoteObject[["entity_id"]] <-
          self$`entity_id`
      }
      if (!is.null(self$`id_detail`)) {
        TextFootnoteObject[["id_detail"]] <-
          self$`id_detail`
      }
      if (!is.null(self$`local_name`)) {
        TextFootnoteObject[["local_name"]] <-
          self$`local_name`
      }
      if (!is.null(self$`CIK`)) {
        TextFootnoteObject[["CIK"]] <-
          self$`CIK`
      }
      if (!is.null(self$`sec_accession_number`)) {
        TextFootnoteObject[["sec_accession_number"]] <-
          self$`sec_accession_number`
      }
      if (!is.null(self$`network_id`)) {
        TextFootnoteObject[["network_id"]] <-
          self$`network_id`
      }
      if (!is.null(self$`schema`)) {
        TextFootnoteObject[["schema"]] <-
          self$`schema`
      }
      if (!is.null(self$`fact_id`)) {
        TextFootnoteObject[["fact_id"]] <-
          self$`fact_id`
      }
      if (!is.null(self$`is_XBRL_document`)) {
        TextFootnoteObject[["is_XBRL_document"]] <-
          self$`is_XBRL_document`
      }
      if (!is.null(self$`ticker`)) {
        TextFootnoteObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`sec_filing_id`)) {
        TextFootnoteObject[["sec_filing_id"]] <-
          self$`sec_filing_id`
      }
      if (!is.null(self$`blob_id`)) {
        TextFootnoteObject[["blob_id"]] <-
          self$`blob_id`
      }
      if (!is.null(self$`date_reported`)) {
        TextFootnoteObject[["date_reported"]] <-
          self$`date_reported`
      }
      if (!is.null(self$`content`)) {
        TextFootnoteObject[["content"]] <-
          self$`content`$toJSON()
      }
      if (!is.null(self$`filing_type`)) {
        TextFootnoteObject[["filing_type"]] <-
          self$`filing_type`
      }
      if (!is.null(self$`description`)) {
        TextFootnoteObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`disclosure_type_name`)) {
        TextFootnoteObject[["disclosure_type_name"]] <-
          self$`disclosure_type_name`
      }
      if (!is.null(self$`period_end_date`)) {
        TextFootnoteObject[["period_end_date"]] <-
          self$`period_end_date`
      }
      if (!is.null(self$`footnote_type_title`)) {
        TextFootnoteObject[["footnote_type_title"]] <-
          self$`footnote_type_title`
      }
      if (!is.null(self$`sub_sections`)) {
        TextFootnoteObject[["sub_sections"]] <-
          lapply(self$`sub_sections`, function(x) x$toJSON())
      }
      TextFootnoteObject
    },
    #' Deserialize JSON string into an instance of TextFootnote
    #'
    #' @description
    #' Deserialize JSON string into an instance of TextFootnote
    #'
    #' @param input_json the JSON input
    #' @return the instance of TextFootnote
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`accession_id`)) {
        self$`accession_id` <- this_object$`accession_id`
      }
      if (!is.null(this_object$`footnote_type`)) {
        if (!is.null(this_object$`footnote_type`) && !(this_object$`footnote_type` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
          stop(paste("Error! \"", this_object$`footnote_type`, "\" cannot be assigned to `footnote_type`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
        }
        self$`footnote_type` <- this_object$`footnote_type`
      }
      if (!is.null(this_object$`SEC_URL`)) {
        self$`SEC_URL` <- this_object$`SEC_URL`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`calendar_year`)) {
        self$`calendar_year` <- this_object$`calendar_year`
      }
      if (!is.null(this_object$`calendar_period`)) {
        self$`calendar_period` <- this_object$`calendar_period`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`received_date`)) {
        self$`received_date` <- this_object$`received_date`
      }
      if (!is.null(this_object$`document_type`)) {
        self$`document_type` <- this_object$`document_type`
      }
      if (!is.null(this_object$`guide_link`)) {
        self$`guide_link` <- this_object$`guide_link`
      }
      if (!is.null(this_object$`page_url`)) {
        self$`page_url` <- this_object$`page_url`
      }
      if (!is.null(this_object$`entity_id`)) {
        self$`entity_id` <- this_object$`entity_id`
      }
      if (!is.null(this_object$`id_detail`)) {
        self$`id_detail` <- this_object$`id_detail`
      }
      if (!is.null(this_object$`local_name`)) {
        self$`local_name` <- this_object$`local_name`
      }
      if (!is.null(this_object$`CIK`)) {
        self$`CIK` <- this_object$`CIK`
      }
      if (!is.null(this_object$`sec_accession_number`)) {
        self$`sec_accession_number` <- this_object$`sec_accession_number`
      }
      if (!is.null(this_object$`network_id`)) {
        self$`network_id` <- this_object$`network_id`
      }
      if (!is.null(this_object$`schema`)) {
        if (!is.null(this_object$`schema`) && !(this_object$`schema` %in% c("LocalName", "NetworkID", "BlobID"))) {
          stop(paste("Error! \"", this_object$`schema`, "\" cannot be assigned to `schema`. Must be \"LocalName\", \"NetworkID\", \"BlobID\".", sep = ""))
        }
        self$`schema` <- this_object$`schema`
      }
      if (!is.null(this_object$`fact_id`)) {
        self$`fact_id` <- this_object$`fact_id`
      }
      if (!is.null(this_object$`is_XBRL_document`)) {
        self$`is_XBRL_document` <- this_object$`is_XBRL_document`
      }
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`sec_filing_id`)) {
        self$`sec_filing_id` <- this_object$`sec_filing_id`
      }
      if (!is.null(this_object$`blob_id`)) {
        self$`blob_id` <- this_object$`blob_id`
      }
      if (!is.null(this_object$`date_reported`)) {
        self$`date_reported` <- this_object$`date_reported`
      }
      if (!is.null(this_object$`content`)) {
        `content_object` <- XBRLDisclosure$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
      }
      if (!is.null(this_object$`filing_type`)) {
        if (!is.null(this_object$`filing_type`) && !(this_object$`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
          stop(paste("Error! \"", this_object$`filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
        }
        self$`filing_type` <- this_object$`filing_type`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`disclosure_type_name`)) {
        self$`disclosure_type_name` <- this_object$`disclosure_type_name`
      }
      if (!is.null(this_object$`period_end_date`)) {
        self$`period_end_date` <- this_object$`period_end_date`
      }
      if (!is.null(this_object$`footnote_type_title`)) {
        self$`footnote_type_title` <- this_object$`footnote_type_title`
      }
      if (!is.null(this_object$`sub_sections`)) {
        self$`sub_sections` <- ApiClient$new()$deserializeObj(this_object$`sub_sections`, "array[DisclosureSubSection]", loadNamespace("calcbenchR"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TextFootnote in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entity_name`)) {
          sprintf(
          '"entity_name":
            "%s"
                    ',
          self$`entity_name`
          )
        },
        if (!is.null(self$`accession_id`)) {
          sprintf(
          '"accession_id":
            %d
                    ',
          self$`accession_id`
          )
        },
        if (!is.null(self$`footnote_type`)) {
          sprintf(
          '"footnote_type":
            "%s"
                    ',
          self$`footnote_type`
          )
        },
        if (!is.null(self$`SEC_URL`)) {
          sprintf(
          '"SEC_URL":
            "%s"
                    ',
          self$`SEC_URL`
          )
        },
        if (!is.null(self$`fiscal_year`)) {
          sprintf(
          '"fiscal_year":
            %d
                    ',
          self$`fiscal_year`
          )
        },
        if (!is.null(self$`fiscal_period`)) {
          sprintf(
          '"fiscal_period":
            "%s"
                    ',
          self$`fiscal_period`
          )
        },
        if (!is.null(self$`calendar_year`)) {
          sprintf(
          '"calendar_year":
            %d
                    ',
          self$`calendar_year`
          )
        },
        if (!is.null(self$`calendar_period`)) {
          sprintf(
          '"calendar_period":
            "%s"
                    ',
          self$`calendar_period`
          )
        },
        if (!is.null(self$`filing_date`)) {
          sprintf(
          '"filing_date":
            "%s"
                    ',
          self$`filing_date`
          )
        },
        if (!is.null(self$`received_date`)) {
          sprintf(
          '"received_date":
            "%s"
                    ',
          self$`received_date`
          )
        },
        if (!is.null(self$`document_type`)) {
          sprintf(
          '"document_type":
            "%s"
                    ',
          self$`document_type`
          )
        },
        if (!is.null(self$`guide_link`)) {
          sprintf(
          '"guide_link":
            "%s"
                    ',
          self$`guide_link`
          )
        },
        if (!is.null(self$`page_url`)) {
          sprintf(
          '"page_url":
            "%s"
                    ',
          self$`page_url`
          )
        },
        if (!is.null(self$`entity_id`)) {
          sprintf(
          '"entity_id":
            %d
                    ',
          self$`entity_id`
          )
        },
        if (!is.null(self$`id_detail`)) {
          sprintf(
          '"id_detail":
            %s
                    ',
          tolower(self$`id_detail`)
          )
        },
        if (!is.null(self$`local_name`)) {
          sprintf(
          '"local_name":
            "%s"
                    ',
          self$`local_name`
          )
        },
        if (!is.null(self$`CIK`)) {
          sprintf(
          '"CIK":
            "%s"
                    ',
          self$`CIK`
          )
        },
        if (!is.null(self$`sec_accession_number`)) {
          sprintf(
          '"sec_accession_number":
            "%s"
                    ',
          self$`sec_accession_number`
          )
        },
        if (!is.null(self$`network_id`)) {
          sprintf(
          '"network_id":
            %d
                    ',
          self$`network_id`
          )
        },
        if (!is.null(self$`schema`)) {
          sprintf(
          '"schema":
            "%s"
                    ',
          self$`schema`
          )
        },
        if (!is.null(self$`fact_id`)) {
          sprintf(
          '"fact_id":
            %d
                    ',
          self$`fact_id`
          )
        },
        if (!is.null(self$`is_XBRL_document`)) {
          sprintf(
          '"is_XBRL_document":
            %s
                    ',
          tolower(self$`is_XBRL_document`)
          )
        },
        if (!is.null(self$`ticker`)) {
          sprintf(
          '"ticker":
            "%s"
                    ',
          self$`ticker`
          )
        },
        if (!is.null(self$`sec_filing_id`)) {
          sprintf(
          '"sec_filing_id":
            %d
                    ',
          self$`sec_filing_id`
          )
        },
        if (!is.null(self$`blob_id`)) {
          sprintf(
          '"blob_id":
            "%s"
                    ',
          self$`blob_id`
          )
        },
        if (!is.null(self$`date_reported`)) {
          sprintf(
          '"date_reported":
            "%s"
                    ',
          self$`date_reported`
          )
        },
        if (!is.null(self$`content`)) {
          sprintf(
          '"content":
          %s
          ',
          jsonlite::toJSON(self$`content`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`filing_type`)) {
          sprintf(
          '"filing_type":
            "%s"
                    ',
          self$`filing_type`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`disclosure_type_name`)) {
          sprintf(
          '"disclosure_type_name":
            "%s"
                    ',
          self$`disclosure_type_name`
          )
        },
        if (!is.null(self$`period_end_date`)) {
          sprintf(
          '"period_end_date":
            "%s"
                    ',
          self$`period_end_date`
          )
        },
        if (!is.null(self$`footnote_type_title`)) {
          sprintf(
          '"footnote_type_title":
            "%s"
                    ',
          self$`footnote_type_title`
          )
        },
        if (!is.null(self$`sub_sections`)) {
          sprintf(
          '"sub_sections":
          [%s]
',
          paste(sapply(self$`sub_sections`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TextFootnote
    #'
    #' @description
    #' Deserialize JSON string into an instance of TextFootnote
    #'
    #' @param input_json the JSON input
    #' @return the instance of TextFootnote
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entity_name` <- this_object$`entity_name`
      self$`accession_id` <- this_object$`accession_id`
      if (!is.null(this_object$`footnote_type`) && !(this_object$`footnote_type` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
        stop(paste("Error! \"", this_object$`footnote_type`, "\" cannot be assigned to `footnote_type`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
      }
      self$`footnote_type` <- this_object$`footnote_type`
      self$`SEC_URL` <- this_object$`SEC_URL`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`calendar_year` <- this_object$`calendar_year`
      self$`calendar_period` <- this_object$`calendar_period`
      self$`filing_date` <- this_object$`filing_date`
      self$`received_date` <- this_object$`received_date`
      self$`document_type` <- this_object$`document_type`
      self$`guide_link` <- this_object$`guide_link`
      self$`page_url` <- this_object$`page_url`
      self$`entity_id` <- this_object$`entity_id`
      self$`id_detail` <- this_object$`id_detail`
      self$`local_name` <- this_object$`local_name`
      self$`CIK` <- this_object$`CIK`
      self$`sec_accession_number` <- this_object$`sec_accession_number`
      self$`network_id` <- this_object$`network_id`
      if (!is.null(this_object$`schema`) && !(this_object$`schema` %in% c("LocalName", "NetworkID", "BlobID"))) {
        stop(paste("Error! \"", this_object$`schema`, "\" cannot be assigned to `schema`. Must be \"LocalName\", \"NetworkID\", \"BlobID\".", sep = ""))
      }
      self$`schema` <- this_object$`schema`
      self$`fact_id` <- this_object$`fact_id`
      self$`is_XBRL_document` <- this_object$`is_XBRL_document`
      self$`ticker` <- this_object$`ticker`
      self$`sec_filing_id` <- this_object$`sec_filing_id`
      self$`blob_id` <- this_object$`blob_id`
      self$`date_reported` <- this_object$`date_reported`
      self$`content` <- XBRLDisclosure$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`filing_type`) && !(this_object$`filing_type` %in% c("BusinessWirePR_filedAfterAn8K", "BusinessWirePR_replaced", "proxy", "annualQuarterlyReport", "eightk_earningsPressRelease", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_earningsPressRelease_correction", "eightk_other", "commentLetter", "commentLetterResponse", "form_3", "form_4", "form_5", "eightk_nonfinancial", "NT10KorQ", "S", "Four24B", "institutionalOwnsership_13F", "ForeignAnnualOrInterimReport"))) {
        stop(paste("Error! \"", this_object$`filing_type`, "\" cannot be assigned to `filing_type`. Must be \"BusinessWirePR_filedAfterAn8K\", \"BusinessWirePR_replaced\", \"proxy\", \"annualQuarterlyReport\", \"eightk_earningsPressRelease\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_earningsPressRelease_correction\", \"eightk_other\", \"commentLetter\", \"commentLetterResponse\", \"form_3\", \"form_4\", \"form_5\", \"eightk_nonfinancial\", \"NT10KorQ\", \"S\", \"Four24B\", \"institutionalOwnsership_13F\", \"ForeignAnnualOrInterimReport\".", sep = ""))
      }
      self$`filing_type` <- this_object$`filing_type`
      self$`description` <- this_object$`description`
      self$`disclosure_type_name` <- this_object$`disclosure_type_name`
      self$`period_end_date` <- this_object$`period_end_date`
      self$`footnote_type_title` <- this_object$`footnote_type_title`
      self$`sub_sections` <- ApiClient$new()$deserializeObj(this_object$`sub_sections`, "array[DisclosureSubSection]", loadNamespace("calcbenchR"))
      self
    },
    #' Validate JSON input with respect to TextFootnote
    #'
    #' @description
    #' Validate JSON input with respect to TextFootnote and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TextFootnote
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# TextFootnote$unlock()
#
## Below is an example to define the print function
# TextFootnote$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TextFootnote$lock()

