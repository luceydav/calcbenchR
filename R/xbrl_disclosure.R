#' Create a new XBRLDisclosure
#'
#' @description
#' XBRLDisclosure Class
#'
#' @docType class
#' @title XBRLDisclosure
#' @description XBRLDisclosure Class
#' @format An \code{R6Class} generator object
#' @field entity_id  object [optional]
#' @field entity_name  object [optional]
#' @field document_type  character [optional]
#' @field end_date  character [optional]
#' @field filing_date  character [optional]
#' @field sec_html_url  character [optional]
#' @field sec_accession_number  character [optional]
#' @field accession_id  integer [optional]
#' @field label  character [optional]
#' @field fact_id  integer [optional]
#' @field disclosure_type  character [optional]
#' @field is_detail  character [optional]
#' @field fiscal_period  character [optional]
#' @field fiscal_year  integer [optional]
#' @field last_in_group  character [optional]
#' @field networkID  integer [optional]
#' @field ticker  character [optional]
#' @field table_list  list(object) [optional]
#' @field local_name  character [optional]
#' @field CIK  character [optional]
#' @field facts  object [optional]
#' @field blobs  list(character) [optional]
#' @field date_reported  character [optional]
#' @field display_filing_date  character [optional]
#' @field display_end_date  character [optional]
#' @field CalendarPeriod  character [optional]
#' @field CalendarYear  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XBRLDisclosure <- R6::R6Class(
  "XBRLDisclosure",
  public = list(
    `entity_id` = NULL,
    `entity_name` = NULL,
    `document_type` = NULL,
    `end_date` = NULL,
    `filing_date` = NULL,
    `sec_html_url` = NULL,
    `sec_accession_number` = NULL,
    `accession_id` = NULL,
    `label` = NULL,
    `fact_id` = NULL,
    `disclosure_type` = NULL,
    `is_detail` = NULL,
    `fiscal_period` = NULL,
    `fiscal_year` = NULL,
    `last_in_group` = NULL,
    `networkID` = NULL,
    `ticker` = NULL,
    `table_list` = NULL,
    `local_name` = NULL,
    `CIK` = NULL,
    `facts` = NULL,
    `blobs` = NULL,
    `date_reported` = NULL,
    `display_filing_date` = NULL,
    `display_end_date` = NULL,
    `CalendarPeriod` = NULL,
    `CalendarYear` = NULL,
    #' Initialize a new XBRLDisclosure class.
    #'
    #' @description
    #' Initialize a new XBRLDisclosure class.
    #'
    #' @param entity_id entity_id
    #' @param entity_name entity_name
    #' @param document_type document_type
    #' @param end_date end_date
    #' @param filing_date filing_date
    #' @param sec_html_url sec_html_url
    #' @param sec_accession_number sec_accession_number
    #' @param accession_id accession_id
    #' @param label label
    #' @param fact_id fact_id
    #' @param disclosure_type disclosure_type
    #' @param is_detail is_detail
    #' @param fiscal_period fiscal_period
    #' @param fiscal_year fiscal_year
    #' @param last_in_group last_in_group
    #' @param networkID networkID
    #' @param ticker ticker
    #' @param table_list table_list
    #' @param local_name local_name
    #' @param CIK CIK
    #' @param facts facts
    #' @param blobs blobs
    #' @param date_reported date_reported
    #' @param display_filing_date display_filing_date
    #' @param display_end_date display_end_date
    #' @param CalendarPeriod CalendarPeriod
    #' @param CalendarYear CalendarYear
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entity_id` = NULL, `entity_name` = NULL, `document_type` = NULL, `end_date` = NULL, `filing_date` = NULL, `sec_html_url` = NULL, `sec_accession_number` = NULL, `accession_id` = NULL, `label` = NULL, `fact_id` = NULL, `disclosure_type` = NULL, `is_detail` = NULL, `fiscal_period` = NULL, `fiscal_year` = NULL, `last_in_group` = NULL, `networkID` = NULL, `ticker` = NULL, `table_list` = NULL, `local_name` = NULL, `CIK` = NULL, `facts` = NULL, `blobs` = NULL, `date_reported` = NULL, `display_filing_date` = NULL, `display_end_date` = NULL, `CalendarPeriod` = NULL, `CalendarYear` = NULL, ...) {
      if (!is.null(`entity_id`)) {
        self$`entity_id` <- `entity_id`
      }
      if (!is.null(`entity_name`)) {
        self$`entity_name` <- `entity_name`
      }
      if (!is.null(`document_type`)) {
        if (!(is.character(`document_type`) && length(`document_type`) == 1)) {
          stop(paste("Error! Invalid data for `document_type`. Must be a string:", `document_type`))
        }
        self$`document_type` <- `document_type`
      }
      if (!is.null(`end_date`)) {
        if (!is.character(`end_date`)) {
          stop(paste("Error! Invalid data for `end_date`. Must be a string:", `end_date`))
        }
        self$`end_date` <- `end_date`
      }
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`sec_html_url`)) {
        if (!(is.character(`sec_html_url`) && length(`sec_html_url`) == 1)) {
          stop(paste("Error! Invalid data for `sec_html_url`. Must be a string:", `sec_html_url`))
        }
        self$`sec_html_url` <- `sec_html_url`
      }
      if (!is.null(`sec_accession_number`)) {
        if (!(is.character(`sec_accession_number`) && length(`sec_accession_number`) == 1)) {
          stop(paste("Error! Invalid data for `sec_accession_number`. Must be a string:", `sec_accession_number`))
        }
        self$`sec_accession_number` <- `sec_accession_number`
      }
      if (!is.null(`accession_id`)) {
        if (!(is.numeric(`accession_id`) && length(`accession_id`) == 1)) {
          stop(paste("Error! Invalid data for `accession_id`. Must be an integer:", `accession_id`))
        }
        self$`accession_id` <- `accession_id`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`fact_id`)) {
        if (!(is.numeric(`fact_id`) && length(`fact_id`) == 1)) {
          stop(paste("Error! Invalid data for `fact_id`. Must be an integer:", `fact_id`))
        }
        self$`fact_id` <- `fact_id`
      }
      if (!is.null(`disclosure_type`)) {
        if (!(`disclosure_type` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
          stop(paste("Error! \"", `disclosure_type`, "\" cannot be assigned to `disclosure_type`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
        }
        if (!(is.character(`disclosure_type`) && length(`disclosure_type`) == 1)) {
          stop(paste("Error! Invalid data for `disclosure_type`. Must be a string:", `disclosure_type`))
        }
        self$`disclosure_type` <- `disclosure_type`
      }
      if (!is.null(`is_detail`)) {
        if (!(is.logical(`is_detail`) && length(`is_detail`) == 1)) {
          stop(paste("Error! Invalid data for `is_detail`. Must be a boolean:", `is_detail`))
        }
        self$`is_detail` <- `is_detail`
      }
      if (!is.null(`fiscal_period`)) {
        if (!(is.character(`fiscal_period`) && length(`fiscal_period`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_period`. Must be a string:", `fiscal_period`))
        }
        self$`fiscal_period` <- `fiscal_period`
      }
      if (!is.null(`fiscal_year`)) {
        if (!(is.numeric(`fiscal_year`) && length(`fiscal_year`) == 1)) {
          stop(paste("Error! Invalid data for `fiscal_year`. Must be an integer:", `fiscal_year`))
        }
        self$`fiscal_year` <- `fiscal_year`
      }
      if (!is.null(`last_in_group`)) {
        if (!(is.logical(`last_in_group`) && length(`last_in_group`) == 1)) {
          stop(paste("Error! Invalid data for `last_in_group`. Must be a boolean:", `last_in_group`))
        }
        self$`last_in_group` <- `last_in_group`
      }
      if (!is.null(`networkID`)) {
        if (!(is.numeric(`networkID`) && length(`networkID`) == 1)) {
          stop(paste("Error! Invalid data for `networkID`. Must be an integer:", `networkID`))
        }
        self$`networkID` <- `networkID`
      }
      if (!is.null(`ticker`)) {
        if (!(is.character(`ticker`) && length(`ticker`) == 1)) {
          stop(paste("Error! Invalid data for `ticker`. Must be a string:", `ticker`))
        }
        self$`ticker` <- `ticker`
      }
      if (!is.null(`table_list`)) {
        stopifnot(is.vector(`table_list`), length(`table_list`) != 0)
        sapply(`table_list`, function(x) stopifnot(is.character(x)))
        self$`table_list` <- `table_list`
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
      if (!is.null(`facts`)) {
        self$`facts` <- `facts`
      }
      if (!is.null(`blobs`)) {
        stopifnot(is.vector(`blobs`), length(`blobs`) != 0)
        sapply(`blobs`, function(x) stopifnot(is.character(x)))
        self$`blobs` <- `blobs`
      }
      if (!is.null(`date_reported`)) {
        if (!is.character(`date_reported`)) {
          stop(paste("Error! Invalid data for `date_reported`. Must be a string:", `date_reported`))
        }
        self$`date_reported` <- `date_reported`
      }
      if (!is.null(`display_filing_date`)) {
        if (!(is.character(`display_filing_date`) && length(`display_filing_date`) == 1)) {
          stop(paste("Error! Invalid data for `display_filing_date`. Must be a string:", `display_filing_date`))
        }
        self$`display_filing_date` <- `display_filing_date`
      }
      if (!is.null(`display_end_date`)) {
        if (!(is.character(`display_end_date`) && length(`display_end_date`) == 1)) {
          stop(paste("Error! Invalid data for `display_end_date`. Must be a string:", `display_end_date`))
        }
        self$`display_end_date` <- `display_end_date`
      }
      if (!is.null(`CalendarPeriod`)) {
        if (!(is.character(`CalendarPeriod`) && length(`CalendarPeriod`) == 1)) {
          stop(paste("Error! Invalid data for `CalendarPeriod`. Must be a string:", `CalendarPeriod`))
        }
        self$`CalendarPeriod` <- `CalendarPeriod`
      }
      if (!is.null(`CalendarYear`)) {
        if (!(is.numeric(`CalendarYear`) && length(`CalendarYear`) == 1)) {
          stop(paste("Error! Invalid data for `CalendarYear`. Must be an integer:", `CalendarYear`))
        }
        self$`CalendarYear` <- `CalendarYear`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLDisclosure in JSON format
    #' @export
    toJSON = function() {
      XBRLDisclosureObject <- list()
      if (!is.null(self$`entity_id`)) {
        XBRLDisclosureObject[["entity_id"]] <-
          self$`entity_id`
      }
      if (!is.null(self$`entity_name`)) {
        XBRLDisclosureObject[["entity_name"]] <-
          self$`entity_name`
      }
      if (!is.null(self$`document_type`)) {
        XBRLDisclosureObject[["document_type"]] <-
          self$`document_type`
      }
      if (!is.null(self$`end_date`)) {
        XBRLDisclosureObject[["end_date"]] <-
          self$`end_date`
      }
      if (!is.null(self$`filing_date`)) {
        XBRLDisclosureObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`sec_html_url`)) {
        XBRLDisclosureObject[["sec_html_url"]] <-
          self$`sec_html_url`
      }
      if (!is.null(self$`sec_accession_number`)) {
        XBRLDisclosureObject[["sec_accession_number"]] <-
          self$`sec_accession_number`
      }
      if (!is.null(self$`accession_id`)) {
        XBRLDisclosureObject[["accession_id"]] <-
          self$`accession_id`
      }
      if (!is.null(self$`label`)) {
        XBRLDisclosureObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`fact_id`)) {
        XBRLDisclosureObject[["fact_id"]] <-
          self$`fact_id`
      }
      if (!is.null(self$`disclosure_type`)) {
        XBRLDisclosureObject[["disclosure_type"]] <-
          self$`disclosure_type`
      }
      if (!is.null(self$`is_detail`)) {
        XBRLDisclosureObject[["is_detail"]] <-
          self$`is_detail`
      }
      if (!is.null(self$`fiscal_period`)) {
        XBRLDisclosureObject[["fiscal_period"]] <-
          self$`fiscal_period`
      }
      if (!is.null(self$`fiscal_year`)) {
        XBRLDisclosureObject[["fiscal_year"]] <-
          self$`fiscal_year`
      }
      if (!is.null(self$`last_in_group`)) {
        XBRLDisclosureObject[["last_in_group"]] <-
          self$`last_in_group`
      }
      if (!is.null(self$`networkID`)) {
        XBRLDisclosureObject[["networkID"]] <-
          self$`networkID`
      }
      if (!is.null(self$`ticker`)) {
        XBRLDisclosureObject[["ticker"]] <-
          self$`ticker`
      }
      if (!is.null(self$`table_list`)) {
        XBRLDisclosureObject[["table_list"]] <-
          self$`table_list`
      }
      if (!is.null(self$`local_name`)) {
        XBRLDisclosureObject[["local_name"]] <-
          self$`local_name`
      }
      if (!is.null(self$`CIK`)) {
        XBRLDisclosureObject[["CIK"]] <-
          self$`CIK`
      }
      if (!is.null(self$`facts`)) {
        XBRLDisclosureObject[["facts"]] <-
          self$`facts`
      }
      if (!is.null(self$`blobs`)) {
        XBRLDisclosureObject[["blobs"]] <-
          self$`blobs`
      }
      if (!is.null(self$`date_reported`)) {
        XBRLDisclosureObject[["date_reported"]] <-
          self$`date_reported`
      }
      if (!is.null(self$`display_filing_date`)) {
        XBRLDisclosureObject[["display_filing_date"]] <-
          self$`display_filing_date`
      }
      if (!is.null(self$`display_end_date`)) {
        XBRLDisclosureObject[["display_end_date"]] <-
          self$`display_end_date`
      }
      if (!is.null(self$`CalendarPeriod`)) {
        XBRLDisclosureObject[["CalendarPeriod"]] <-
          self$`CalendarPeriod`
      }
      if (!is.null(self$`CalendarYear`)) {
        XBRLDisclosureObject[["CalendarYear"]] <-
          self$`CalendarYear`
      }
      XBRLDisclosureObject
    },
    #' Deserialize JSON string into an instance of XBRLDisclosure
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLDisclosure
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLDisclosure
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entity_id`)) {
        self$`entity_id` <- this_object$`entity_id`
      }
      if (!is.null(this_object$`entity_name`)) {
        self$`entity_name` <- this_object$`entity_name`
      }
      if (!is.null(this_object$`document_type`)) {
        self$`document_type` <- this_object$`document_type`
      }
      if (!is.null(this_object$`end_date`)) {
        self$`end_date` <- this_object$`end_date`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`sec_html_url`)) {
        self$`sec_html_url` <- this_object$`sec_html_url`
      }
      if (!is.null(this_object$`sec_accession_number`)) {
        self$`sec_accession_number` <- this_object$`sec_accession_number`
      }
      if (!is.null(this_object$`accession_id`)) {
        self$`accession_id` <- this_object$`accession_id`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`fact_id`)) {
        self$`fact_id` <- this_object$`fact_id`
      }
      if (!is.null(this_object$`disclosure_type`)) {
        if (!is.null(this_object$`disclosure_type`) && !(this_object$`disclosure_type` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
          stop(paste("Error! \"", this_object$`disclosure_type`, "\" cannot be assigned to `disclosure_type`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
        }
        self$`disclosure_type` <- this_object$`disclosure_type`
      }
      if (!is.null(this_object$`is_detail`)) {
        self$`is_detail` <- this_object$`is_detail`
      }
      if (!is.null(this_object$`fiscal_period`)) {
        self$`fiscal_period` <- this_object$`fiscal_period`
      }
      if (!is.null(this_object$`fiscal_year`)) {
        self$`fiscal_year` <- this_object$`fiscal_year`
      }
      if (!is.null(this_object$`last_in_group`)) {
        self$`last_in_group` <- this_object$`last_in_group`
      }
      if (!is.null(this_object$`networkID`)) {
        self$`networkID` <- this_object$`networkID`
      }
      if (!is.null(this_object$`ticker`)) {
        self$`ticker` <- this_object$`ticker`
      }
      if (!is.null(this_object$`table_list`)) {
        self$`table_list` <- ApiClient$new()$deserializeObj(this_object$`table_list`, "array[object]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`local_name`)) {
        self$`local_name` <- this_object$`local_name`
      }
      if (!is.null(this_object$`CIK`)) {
        self$`CIK` <- this_object$`CIK`
      }
      if (!is.null(this_object$`facts`)) {
        self$`facts` <- this_object$`facts`
      }
      if (!is.null(this_object$`blobs`)) {
        self$`blobs` <- ApiClient$new()$deserializeObj(this_object$`blobs`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`date_reported`)) {
        self$`date_reported` <- this_object$`date_reported`
      }
      if (!is.null(this_object$`display_filing_date`)) {
        self$`display_filing_date` <- this_object$`display_filing_date`
      }
      if (!is.null(this_object$`display_end_date`)) {
        self$`display_end_date` <- this_object$`display_end_date`
      }
      if (!is.null(this_object$`CalendarPeriod`)) {
        self$`CalendarPeriod` <- this_object$`CalendarPeriod`
      }
      if (!is.null(this_object$`CalendarYear`)) {
        self$`CalendarYear` <- this_object$`CalendarYear`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return XBRLDisclosure in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entity_id`)) {
          sprintf(
          '"entity_id":
            "%s"
                    ',
          self$`entity_id`
          )
        },
        if (!is.null(self$`entity_name`)) {
          sprintf(
          '"entity_name":
            "%s"
                    ',
          self$`entity_name`
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
        if (!is.null(self$`end_date`)) {
          sprintf(
          '"end_date":
            "%s"
                    ',
          self$`end_date`
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
        if (!is.null(self$`sec_html_url`)) {
          sprintf(
          '"sec_html_url":
            "%s"
                    ',
          self$`sec_html_url`
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
        if (!is.null(self$`accession_id`)) {
          sprintf(
          '"accession_id":
            %d
                    ',
          self$`accession_id`
          )
        },
        if (!is.null(self$`label`)) {
          sprintf(
          '"label":
            "%s"
                    ',
          self$`label`
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
        if (!is.null(self$`disclosure_type`)) {
          sprintf(
          '"disclosure_type":
            "%s"
                    ',
          self$`disclosure_type`
          )
        },
        if (!is.null(self$`is_detail`)) {
          sprintf(
          '"is_detail":
            %s
                    ',
          tolower(self$`is_detail`)
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
        if (!is.null(self$`fiscal_year`)) {
          sprintf(
          '"fiscal_year":
            %d
                    ',
          self$`fiscal_year`
          )
        },
        if (!is.null(self$`last_in_group`)) {
          sprintf(
          '"last_in_group":
            %s
                    ',
          tolower(self$`last_in_group`)
          )
        },
        if (!is.null(self$`networkID`)) {
          sprintf(
          '"networkID":
            %d
                    ',
          self$`networkID`
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
        if (!is.null(self$`table_list`)) {
          sprintf(
          '"table_list":
             [%s]
          ',
          paste(unlist(lapply(self$`table_list`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`facts`)) {
          sprintf(
          '"facts":
            "%s"
                    ',
          self$`facts`
          )
        },
        if (!is.null(self$`blobs`)) {
          sprintf(
          '"blobs":
             [%s]
          ',
          paste(unlist(lapply(self$`blobs`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`display_filing_date`)) {
          sprintf(
          '"display_filing_date":
            "%s"
                    ',
          self$`display_filing_date`
          )
        },
        if (!is.null(self$`display_end_date`)) {
          sprintf(
          '"display_end_date":
            "%s"
                    ',
          self$`display_end_date`
          )
        },
        if (!is.null(self$`CalendarPeriod`)) {
          sprintf(
          '"CalendarPeriod":
            "%s"
                    ',
          self$`CalendarPeriod`
          )
        },
        if (!is.null(self$`CalendarYear`)) {
          sprintf(
          '"CalendarYear":
            %d
                    ',
          self$`CalendarYear`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of XBRLDisclosure
    #'
    #' @description
    #' Deserialize JSON string into an instance of XBRLDisclosure
    #'
    #' @param input_json the JSON input
    #' @return the instance of XBRLDisclosure
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entity_id` <- this_object$`entity_id`
      self$`entity_name` <- this_object$`entity_name`
      self$`document_type` <- this_object$`document_type`
      self$`end_date` <- this_object$`end_date`
      self$`filing_date` <- this_object$`filing_date`
      self$`sec_html_url` <- this_object$`sec_html_url`
      self$`sec_accession_number` <- this_object$`sec_accession_number`
      self$`accession_id` <- this_object$`accession_id`
      self$`label` <- this_object$`label`
      self$`fact_id` <- this_object$`fact_id`
      if (!is.null(this_object$`disclosure_type`) && !(this_object$`disclosure_type` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
        stop(paste("Error! \"", this_object$`disclosure_type`, "\" cannot be assigned to `disclosure_type`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
      }
      self$`disclosure_type` <- this_object$`disclosure_type`
      self$`is_detail` <- this_object$`is_detail`
      self$`fiscal_period` <- this_object$`fiscal_period`
      self$`fiscal_year` <- this_object$`fiscal_year`
      self$`last_in_group` <- this_object$`last_in_group`
      self$`networkID` <- this_object$`networkID`
      self$`ticker` <- this_object$`ticker`
      self$`table_list` <- ApiClient$new()$deserializeObj(this_object$`table_list`, "array[object]", loadNamespace("calcbenchR"))
      self$`local_name` <- this_object$`local_name`
      self$`CIK` <- this_object$`CIK`
      self$`facts` <- this_object$`facts`
      self$`blobs` <- ApiClient$new()$deserializeObj(this_object$`blobs`, "array[character]", loadNamespace("calcbenchR"))
      self$`date_reported` <- this_object$`date_reported`
      self$`display_filing_date` <- this_object$`display_filing_date`
      self$`display_end_date` <- this_object$`display_end_date`
      self$`CalendarPeriod` <- this_object$`CalendarPeriod`
      self$`CalendarYear` <- this_object$`CalendarYear`
      self
    },
    #' Validate JSON input with respect to XBRLDisclosure
    #'
    #' @description
    #' Validate JSON input with respect to XBRLDisclosure and throw an exception if invalid
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
    #' @return String representation of XBRLDisclosure
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
# XBRLDisclosure$unlock()
#
## Below is an example to define the print function
# XBRLDisclosure$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XBRLDisclosure$lock()

