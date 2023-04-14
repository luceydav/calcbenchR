#' Create a new FootnoteQueryParameters
#'
#' @description
#' FootnoteQueryParameters Class
#'
#' @docType class
#' @title FootnoteQueryParameters
#' @description FootnoteQueryParameters Class
#' @format An \code{R6Class} generator object
#' @field fullTextQuery  character [optional]
#' @field arcRoles  list(integer) [optional]
#' @field footnoteTag  character [optional]
#' @field startEntityID  integer [optional]
#' @field startOffset  integer [optional]
#' @field accessionID  integer [optional]
#' @field allFootnotes  character [optional]
#' @field includeRelatedItems  character [optional]
#' @field fullTextSearchAllTimePeriods  character [optional]
#' @field fullTextSearchRestrictToMetricLabels  character [optional]
#' @field normalizedFaceMetric  character [optional]
#' @field normalizedFootnoteMetric  character [optional]
#' @field normalizedBreakoutMetric  character [optional]
#' @field ByDocumentID  character [optional]
#' @field XBRLNumericTag  character [optional]
#' @field FactID  integer [optional]
#' @field blobID  character [optional]
#' @field nonXBRLFactIdentifier  integer [optional]
#' @field nonXBRLExtractTag  character [optional]
#' @field XBRLFactIdentifier  integer [optional]
#' @field userSubmittedURL  character [optional]
#' @field subDivide  character [optional]
#' @field publicDisclosureID  character [optional]
#' @field historyFactID  integer [optional]
#' @field disclosureName  character [optional]
#' @field disclosureNames  list(character) [optional]
#' @field limit Maximum number of results to get integer [optional]
#' @field footnoteType  character [optional]
#' @field NetworkID Search by XBRL Network ID integer [optional]
#' @field AllTextBlocks Get all of the XBRL text blocks character [optional]
#' @field AllMDASections Get all MDA sections for a single filing character [optional]
#' @field FilingID For non-XBRL proxy filings, etc.  Specifying this will get you all the documents for the company/period that the document is associated with in the SECFiling table. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FootnoteQueryParameters <- R6::R6Class(
  "FootnoteQueryParameters",
  public = list(
    `fullTextQuery` = NULL,
    `arcRoles` = NULL,
    `footnoteTag` = NULL,
    `startEntityID` = NULL,
    `startOffset` = NULL,
    `accessionID` = NULL,
    `allFootnotes` = NULL,
    `includeRelatedItems` = NULL,
    `fullTextSearchAllTimePeriods` = NULL,
    `fullTextSearchRestrictToMetricLabels` = NULL,
    `normalizedFaceMetric` = NULL,
    `normalizedFootnoteMetric` = NULL,
    `normalizedBreakoutMetric` = NULL,
    `ByDocumentID` = NULL,
    `XBRLNumericTag` = NULL,
    `FactID` = NULL,
    `blobID` = NULL,
    `nonXBRLFactIdentifier` = NULL,
    `nonXBRLExtractTag` = NULL,
    `XBRLFactIdentifier` = NULL,
    `userSubmittedURL` = NULL,
    `subDivide` = NULL,
    `publicDisclosureID` = NULL,
    `historyFactID` = NULL,
    `disclosureName` = NULL,
    `disclosureNames` = NULL,
    `limit` = NULL,
    `footnoteType` = NULL,
    `NetworkID` = NULL,
    `AllTextBlocks` = NULL,
    `AllMDASections` = NULL,
    `FilingID` = NULL,
    #' Initialize a new FootnoteQueryParameters class.
    #'
    #' @description
    #' Initialize a new FootnoteQueryParameters class.
    #'
    #' @param fullTextQuery fullTextQuery
    #' @param arcRoles arcRoles
    #' @param footnoteTag footnoteTag
    #' @param startEntityID startEntityID
    #' @param startOffset startOffset
    #' @param accessionID accessionID
    #' @param allFootnotes allFootnotes
    #' @param includeRelatedItems includeRelatedItems
    #' @param fullTextSearchAllTimePeriods fullTextSearchAllTimePeriods
    #' @param fullTextSearchRestrictToMetricLabels fullTextSearchRestrictToMetricLabels
    #' @param normalizedFaceMetric normalizedFaceMetric
    #' @param normalizedFootnoteMetric normalizedFootnoteMetric
    #' @param normalizedBreakoutMetric normalizedBreakoutMetric
    #' @param ByDocumentID ByDocumentID
    #' @param XBRLNumericTag XBRLNumericTag
    #' @param FactID FactID
    #' @param blobID blobID
    #' @param nonXBRLFactIdentifier nonXBRLFactIdentifier
    #' @param nonXBRLExtractTag nonXBRLExtractTag
    #' @param XBRLFactIdentifier XBRLFactIdentifier
    #' @param userSubmittedURL userSubmittedURL
    #' @param subDivide subDivide
    #' @param publicDisclosureID publicDisclosureID
    #' @param historyFactID historyFactID
    #' @param disclosureName disclosureName
    #' @param disclosureNames disclosureNames
    #' @param limit Maximum number of results to get
    #' @param footnoteType footnoteType
    #' @param NetworkID Search by XBRL Network ID
    #' @param AllTextBlocks Get all of the XBRL text blocks
    #' @param AllMDASections Get all MDA sections for a single filing
    #' @param FilingID For non-XBRL proxy filings, etc.  Specifying this will get you all the documents for the company/period that the document is associated with in the SECFiling table.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`fullTextQuery` = NULL, `arcRoles` = NULL, `footnoteTag` = NULL, `startEntityID` = NULL, `startOffset` = NULL, `accessionID` = NULL, `allFootnotes` = NULL, `includeRelatedItems` = NULL, `fullTextSearchAllTimePeriods` = NULL, `fullTextSearchRestrictToMetricLabels` = NULL, `normalizedFaceMetric` = NULL, `normalizedFootnoteMetric` = NULL, `normalizedBreakoutMetric` = NULL, `ByDocumentID` = NULL, `XBRLNumericTag` = NULL, `FactID` = NULL, `blobID` = NULL, `nonXBRLFactIdentifier` = NULL, `nonXBRLExtractTag` = NULL, `XBRLFactIdentifier` = NULL, `userSubmittedURL` = NULL, `subDivide` = NULL, `publicDisclosureID` = NULL, `historyFactID` = NULL, `disclosureName` = NULL, `disclosureNames` = NULL, `limit` = NULL, `footnoteType` = NULL, `NetworkID` = NULL, `AllTextBlocks` = NULL, `AllMDASections` = NULL, `FilingID` = NULL, ...) {
      if (!is.null(`fullTextQuery`)) {
        if (!(is.character(`fullTextQuery`) && length(`fullTextQuery`) == 1)) {
          stop(paste("Error! Invalid data for `fullTextQuery`. Must be a string:", `fullTextQuery`))
        }
        self$`fullTextQuery` <- `fullTextQuery`
      }
      if (!is.null(`arcRoles`)) {
        stopifnot(is.vector(`arcRoles`), length(`arcRoles`) != 0)
        sapply(`arcRoles`, function(x) stopifnot(is.character(x)))
        self$`arcRoles` <- `arcRoles`
      }
      if (!is.null(`footnoteTag`)) {
        if (!(is.character(`footnoteTag`) && length(`footnoteTag`) == 1)) {
          stop(paste("Error! Invalid data for `footnoteTag`. Must be a string:", `footnoteTag`))
        }
        self$`footnoteTag` <- `footnoteTag`
      }
      if (!is.null(`startEntityID`)) {
        if (!(is.numeric(`startEntityID`) && length(`startEntityID`) == 1)) {
          stop(paste("Error! Invalid data for `startEntityID`. Must be an integer:", `startEntityID`))
        }
        self$`startEntityID` <- `startEntityID`
      }
      if (!is.null(`startOffset`)) {
        if (!(is.numeric(`startOffset`) && length(`startOffset`) == 1)) {
          stop(paste("Error! Invalid data for `startOffset`. Must be an integer:", `startOffset`))
        }
        self$`startOffset` <- `startOffset`
      }
      if (!is.null(`accessionID`)) {
        if (!(is.numeric(`accessionID`) && length(`accessionID`) == 1)) {
          stop(paste("Error! Invalid data for `accessionID`. Must be an integer:", `accessionID`))
        }
        self$`accessionID` <- `accessionID`
      }
      if (!is.null(`allFootnotes`)) {
        if (!(is.logical(`allFootnotes`) && length(`allFootnotes`) == 1)) {
          stop(paste("Error! Invalid data for `allFootnotes`. Must be a boolean:", `allFootnotes`))
        }
        self$`allFootnotes` <- `allFootnotes`
      }
      if (!is.null(`includeRelatedItems`)) {
        if (!(is.logical(`includeRelatedItems`) && length(`includeRelatedItems`) == 1)) {
          stop(paste("Error! Invalid data for `includeRelatedItems`. Must be a boolean:", `includeRelatedItems`))
        }
        self$`includeRelatedItems` <- `includeRelatedItems`
      }
      if (!is.null(`fullTextSearchAllTimePeriods`)) {
        if (!(is.logical(`fullTextSearchAllTimePeriods`) && length(`fullTextSearchAllTimePeriods`) == 1)) {
          stop(paste("Error! Invalid data for `fullTextSearchAllTimePeriods`. Must be a boolean:", `fullTextSearchAllTimePeriods`))
        }
        self$`fullTextSearchAllTimePeriods` <- `fullTextSearchAllTimePeriods`
      }
      if (!is.null(`fullTextSearchRestrictToMetricLabels`)) {
        if (!(is.logical(`fullTextSearchRestrictToMetricLabels`) && length(`fullTextSearchRestrictToMetricLabels`) == 1)) {
          stop(paste("Error! Invalid data for `fullTextSearchRestrictToMetricLabels`. Must be a boolean:", `fullTextSearchRestrictToMetricLabels`))
        }
        self$`fullTextSearchRestrictToMetricLabels` <- `fullTextSearchRestrictToMetricLabels`
      }
      if (!is.null(`normalizedFaceMetric`)) {
        if (!(is.character(`normalizedFaceMetric`) && length(`normalizedFaceMetric`) == 1)) {
          stop(paste("Error! Invalid data for `normalizedFaceMetric`. Must be a string:", `normalizedFaceMetric`))
        }
        self$`normalizedFaceMetric` <- `normalizedFaceMetric`
      }
      if (!is.null(`normalizedFootnoteMetric`)) {
        if (!(is.character(`normalizedFootnoteMetric`) && length(`normalizedFootnoteMetric`) == 1)) {
          stop(paste("Error! Invalid data for `normalizedFootnoteMetric`. Must be a string:", `normalizedFootnoteMetric`))
        }
        self$`normalizedFootnoteMetric` <- `normalizedFootnoteMetric`
      }
      if (!is.null(`normalizedBreakoutMetric`)) {
        if (!(is.character(`normalizedBreakoutMetric`) && length(`normalizedBreakoutMetric`) == 1)) {
          stop(paste("Error! Invalid data for `normalizedBreakoutMetric`. Must be a string:", `normalizedBreakoutMetric`))
        }
        self$`normalizedBreakoutMetric` <- `normalizedBreakoutMetric`
      }
      if (!is.null(`ByDocumentID`)) {
        if (!(is.logical(`ByDocumentID`) && length(`ByDocumentID`) == 1)) {
          stop(paste("Error! Invalid data for `ByDocumentID`. Must be a boolean:", `ByDocumentID`))
        }
        self$`ByDocumentID` <- `ByDocumentID`
      }
      if (!is.null(`XBRLNumericTag`)) {
        if (!(is.character(`XBRLNumericTag`) && length(`XBRLNumericTag`) == 1)) {
          stop(paste("Error! Invalid data for `XBRLNumericTag`. Must be a string:", `XBRLNumericTag`))
        }
        self$`XBRLNumericTag` <- `XBRLNumericTag`
      }
      if (!is.null(`FactID`)) {
        if (!(is.numeric(`FactID`) && length(`FactID`) == 1)) {
          stop(paste("Error! Invalid data for `FactID`. Must be an integer:", `FactID`))
        }
        self$`FactID` <- `FactID`
      }
      if (!is.null(`blobID`)) {
        if (!(is.character(`blobID`) && length(`blobID`) == 1)) {
          stop(paste("Error! Invalid data for `blobID`. Must be a string:", `blobID`))
        }
        self$`blobID` <- `blobID`
      }
      if (!is.null(`nonXBRLFactIdentifier`)) {
        if (!(is.numeric(`nonXBRLFactIdentifier`) && length(`nonXBRLFactIdentifier`) == 1)) {
          stop(paste("Error! Invalid data for `nonXBRLFactIdentifier`. Must be an integer:", `nonXBRLFactIdentifier`))
        }
        self$`nonXBRLFactIdentifier` <- `nonXBRLFactIdentifier`
      }
      if (!is.null(`nonXBRLExtractTag`)) {
        if (!(is.character(`nonXBRLExtractTag`) && length(`nonXBRLExtractTag`) == 1)) {
          stop(paste("Error! Invalid data for `nonXBRLExtractTag`. Must be a string:", `nonXBRLExtractTag`))
        }
        self$`nonXBRLExtractTag` <- `nonXBRLExtractTag`
      }
      if (!is.null(`XBRLFactIdentifier`)) {
        if (!(is.numeric(`XBRLFactIdentifier`) && length(`XBRLFactIdentifier`) == 1)) {
          stop(paste("Error! Invalid data for `XBRLFactIdentifier`. Must be an integer:", `XBRLFactIdentifier`))
        }
        self$`XBRLFactIdentifier` <- `XBRLFactIdentifier`
      }
      if (!is.null(`userSubmittedURL`)) {
        if (!(is.character(`userSubmittedURL`) && length(`userSubmittedURL`) == 1)) {
          stop(paste("Error! Invalid data for `userSubmittedURL`. Must be a string:", `userSubmittedURL`))
        }
        self$`userSubmittedURL` <- `userSubmittedURL`
      }
      if (!is.null(`subDivide`)) {
        if (!(is.logical(`subDivide`) && length(`subDivide`) == 1)) {
          stop(paste("Error! Invalid data for `subDivide`. Must be a boolean:", `subDivide`))
        }
        self$`subDivide` <- `subDivide`
      }
      if (!is.null(`publicDisclosureID`)) {
        if (!(is.character(`publicDisclosureID`) && length(`publicDisclosureID`) == 1)) {
          stop(paste("Error! Invalid data for `publicDisclosureID`. Must be a string:", `publicDisclosureID`))
        }
        self$`publicDisclosureID` <- `publicDisclosureID`
      }
      if (!is.null(`historyFactID`)) {
        if (!(is.numeric(`historyFactID`) && length(`historyFactID`) == 1)) {
          stop(paste("Error! Invalid data for `historyFactID`. Must be an integer:", `historyFactID`))
        }
        self$`historyFactID` <- `historyFactID`
      }
      if (!is.null(`disclosureName`)) {
        if (!(is.character(`disclosureName`) && length(`disclosureName`) == 1)) {
          stop(paste("Error! Invalid data for `disclosureName`. Must be a string:", `disclosureName`))
        }
        self$`disclosureName` <- `disclosureName`
      }
      if (!is.null(`disclosureNames`)) {
        stopifnot(is.vector(`disclosureNames`), length(`disclosureNames`) != 0)
        sapply(`disclosureNames`, function(x) stopifnot(is.character(x)))
        self$`disclosureNames` <- `disclosureNames`
      }
      if (!is.null(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!is.null(`footnoteType`)) {
        if (!(`footnoteType` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
          stop(paste("Error! \"", `footnoteType`, "\" cannot be assigned to `footnoteType`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
        }
        if (!(is.character(`footnoteType`) && length(`footnoteType`) == 1)) {
          stop(paste("Error! Invalid data for `footnoteType`. Must be a string:", `footnoteType`))
        }
        self$`footnoteType` <- `footnoteType`
      }
      if (!is.null(`NetworkID`)) {
        if (!(is.numeric(`NetworkID`) && length(`NetworkID`) == 1)) {
          stop(paste("Error! Invalid data for `NetworkID`. Must be an integer:", `NetworkID`))
        }
        self$`NetworkID` <- `NetworkID`
      }
      if (!is.null(`AllTextBlocks`)) {
        if (!(is.logical(`AllTextBlocks`) && length(`AllTextBlocks`) == 1)) {
          stop(paste("Error! Invalid data for `AllTextBlocks`. Must be a boolean:", `AllTextBlocks`))
        }
        self$`AllTextBlocks` <- `AllTextBlocks`
      }
      if (!is.null(`AllMDASections`)) {
        if (!(is.logical(`AllMDASections`) && length(`AllMDASections`) == 1)) {
          stop(paste("Error! Invalid data for `AllMDASections`. Must be a boolean:", `AllMDASections`))
        }
        self$`AllMDASections` <- `AllMDASections`
      }
      if (!is.null(`FilingID`)) {
        if (!(is.numeric(`FilingID`) && length(`FilingID`) == 1)) {
          stop(paste("Error! Invalid data for `FilingID`. Must be an integer:", `FilingID`))
        }
        self$`FilingID` <- `FilingID`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FootnoteQueryParameters in JSON format
    #' @export
    toJSON = function() {
      FootnoteQueryParametersObject <- list()
      if (!is.null(self$`fullTextQuery`)) {
        FootnoteQueryParametersObject[["fullTextQuery"]] <-
          self$`fullTextQuery`
      }
      if (!is.null(self$`arcRoles`)) {
        FootnoteQueryParametersObject[["arcRoles"]] <-
          self$`arcRoles`
      }
      if (!is.null(self$`footnoteTag`)) {
        FootnoteQueryParametersObject[["footnoteTag"]] <-
          self$`footnoteTag`
      }
      if (!is.null(self$`startEntityID`)) {
        FootnoteQueryParametersObject[["startEntityID"]] <-
          self$`startEntityID`
      }
      if (!is.null(self$`startOffset`)) {
        FootnoteQueryParametersObject[["startOffset"]] <-
          self$`startOffset`
      }
      if (!is.null(self$`accessionID`)) {
        FootnoteQueryParametersObject[["accessionID"]] <-
          self$`accessionID`
      }
      if (!is.null(self$`allFootnotes`)) {
        FootnoteQueryParametersObject[["allFootnotes"]] <-
          self$`allFootnotes`
      }
      if (!is.null(self$`includeRelatedItems`)) {
        FootnoteQueryParametersObject[["includeRelatedItems"]] <-
          self$`includeRelatedItems`
      }
      if (!is.null(self$`fullTextSearchAllTimePeriods`)) {
        FootnoteQueryParametersObject[["fullTextSearchAllTimePeriods"]] <-
          self$`fullTextSearchAllTimePeriods`
      }
      if (!is.null(self$`fullTextSearchRestrictToMetricLabels`)) {
        FootnoteQueryParametersObject[["fullTextSearchRestrictToMetricLabels"]] <-
          self$`fullTextSearchRestrictToMetricLabels`
      }
      if (!is.null(self$`normalizedFaceMetric`)) {
        FootnoteQueryParametersObject[["normalizedFaceMetric"]] <-
          self$`normalizedFaceMetric`
      }
      if (!is.null(self$`normalizedFootnoteMetric`)) {
        FootnoteQueryParametersObject[["normalizedFootnoteMetric"]] <-
          self$`normalizedFootnoteMetric`
      }
      if (!is.null(self$`normalizedBreakoutMetric`)) {
        FootnoteQueryParametersObject[["normalizedBreakoutMetric"]] <-
          self$`normalizedBreakoutMetric`
      }
      if (!is.null(self$`ByDocumentID`)) {
        FootnoteQueryParametersObject[["ByDocumentID"]] <-
          self$`ByDocumentID`
      }
      if (!is.null(self$`XBRLNumericTag`)) {
        FootnoteQueryParametersObject[["XBRLNumericTag"]] <-
          self$`XBRLNumericTag`
      }
      if (!is.null(self$`FactID`)) {
        FootnoteQueryParametersObject[["FactID"]] <-
          self$`FactID`
      }
      if (!is.null(self$`blobID`)) {
        FootnoteQueryParametersObject[["blobID"]] <-
          self$`blobID`
      }
      if (!is.null(self$`nonXBRLFactIdentifier`)) {
        FootnoteQueryParametersObject[["nonXBRLFactIdentifier"]] <-
          self$`nonXBRLFactIdentifier`
      }
      if (!is.null(self$`nonXBRLExtractTag`)) {
        FootnoteQueryParametersObject[["nonXBRLExtractTag"]] <-
          self$`nonXBRLExtractTag`
      }
      if (!is.null(self$`XBRLFactIdentifier`)) {
        FootnoteQueryParametersObject[["XBRLFactIdentifier"]] <-
          self$`XBRLFactIdentifier`
      }
      if (!is.null(self$`userSubmittedURL`)) {
        FootnoteQueryParametersObject[["userSubmittedURL"]] <-
          self$`userSubmittedURL`
      }
      if (!is.null(self$`subDivide`)) {
        FootnoteQueryParametersObject[["subDivide"]] <-
          self$`subDivide`
      }
      if (!is.null(self$`publicDisclosureID`)) {
        FootnoteQueryParametersObject[["publicDisclosureID"]] <-
          self$`publicDisclosureID`
      }
      if (!is.null(self$`historyFactID`)) {
        FootnoteQueryParametersObject[["historyFactID"]] <-
          self$`historyFactID`
      }
      if (!is.null(self$`disclosureName`)) {
        FootnoteQueryParametersObject[["disclosureName"]] <-
          self$`disclosureName`
      }
      if (!is.null(self$`disclosureNames`)) {
        FootnoteQueryParametersObject[["disclosureNames"]] <-
          self$`disclosureNames`
      }
      if (!is.null(self$`limit`)) {
        FootnoteQueryParametersObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`footnoteType`)) {
        FootnoteQueryParametersObject[["footnoteType"]] <-
          self$`footnoteType`
      }
      if (!is.null(self$`NetworkID`)) {
        FootnoteQueryParametersObject[["NetworkID"]] <-
          self$`NetworkID`
      }
      if (!is.null(self$`AllTextBlocks`)) {
        FootnoteQueryParametersObject[["AllTextBlocks"]] <-
          self$`AllTextBlocks`
      }
      if (!is.null(self$`AllMDASections`)) {
        FootnoteQueryParametersObject[["AllMDASections"]] <-
          self$`AllMDASections`
      }
      if (!is.null(self$`FilingID`)) {
        FootnoteQueryParametersObject[["FilingID"]] <-
          self$`FilingID`
      }
      FootnoteQueryParametersObject
    },
    #' Deserialize JSON string into an instance of FootnoteQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FootnoteQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FootnoteQueryParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`fullTextQuery`)) {
        self$`fullTextQuery` <- this_object$`fullTextQuery`
      }
      if (!is.null(this_object$`arcRoles`)) {
        self$`arcRoles` <- ApiClient$new()$deserializeObj(this_object$`arcRoles`, "array[integer]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`footnoteTag`)) {
        self$`footnoteTag` <- this_object$`footnoteTag`
      }
      if (!is.null(this_object$`startEntityID`)) {
        self$`startEntityID` <- this_object$`startEntityID`
      }
      if (!is.null(this_object$`startOffset`)) {
        self$`startOffset` <- this_object$`startOffset`
      }
      if (!is.null(this_object$`accessionID`)) {
        self$`accessionID` <- this_object$`accessionID`
      }
      if (!is.null(this_object$`allFootnotes`)) {
        self$`allFootnotes` <- this_object$`allFootnotes`
      }
      if (!is.null(this_object$`includeRelatedItems`)) {
        self$`includeRelatedItems` <- this_object$`includeRelatedItems`
      }
      if (!is.null(this_object$`fullTextSearchAllTimePeriods`)) {
        self$`fullTextSearchAllTimePeriods` <- this_object$`fullTextSearchAllTimePeriods`
      }
      if (!is.null(this_object$`fullTextSearchRestrictToMetricLabels`)) {
        self$`fullTextSearchRestrictToMetricLabels` <- this_object$`fullTextSearchRestrictToMetricLabels`
      }
      if (!is.null(this_object$`normalizedFaceMetric`)) {
        self$`normalizedFaceMetric` <- this_object$`normalizedFaceMetric`
      }
      if (!is.null(this_object$`normalizedFootnoteMetric`)) {
        self$`normalizedFootnoteMetric` <- this_object$`normalizedFootnoteMetric`
      }
      if (!is.null(this_object$`normalizedBreakoutMetric`)) {
        self$`normalizedBreakoutMetric` <- this_object$`normalizedBreakoutMetric`
      }
      if (!is.null(this_object$`ByDocumentID`)) {
        self$`ByDocumentID` <- this_object$`ByDocumentID`
      }
      if (!is.null(this_object$`XBRLNumericTag`)) {
        self$`XBRLNumericTag` <- this_object$`XBRLNumericTag`
      }
      if (!is.null(this_object$`FactID`)) {
        self$`FactID` <- this_object$`FactID`
      }
      if (!is.null(this_object$`blobID`)) {
        self$`blobID` <- this_object$`blobID`
      }
      if (!is.null(this_object$`nonXBRLFactIdentifier`)) {
        self$`nonXBRLFactIdentifier` <- this_object$`nonXBRLFactIdentifier`
      }
      if (!is.null(this_object$`nonXBRLExtractTag`)) {
        self$`nonXBRLExtractTag` <- this_object$`nonXBRLExtractTag`
      }
      if (!is.null(this_object$`XBRLFactIdentifier`)) {
        self$`XBRLFactIdentifier` <- this_object$`XBRLFactIdentifier`
      }
      if (!is.null(this_object$`userSubmittedURL`)) {
        self$`userSubmittedURL` <- this_object$`userSubmittedURL`
      }
      if (!is.null(this_object$`subDivide`)) {
        self$`subDivide` <- this_object$`subDivide`
      }
      if (!is.null(this_object$`publicDisclosureID`)) {
        self$`publicDisclosureID` <- this_object$`publicDisclosureID`
      }
      if (!is.null(this_object$`historyFactID`)) {
        self$`historyFactID` <- this_object$`historyFactID`
      }
      if (!is.null(this_object$`disclosureName`)) {
        self$`disclosureName` <- this_object$`disclosureName`
      }
      if (!is.null(this_object$`disclosureNames`)) {
        self$`disclosureNames` <- ApiClient$new()$deserializeObj(this_object$`disclosureNames`, "array[character]", loadNamespace("calcbenchR"))
      }
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`footnoteType`)) {
        if (!is.null(this_object$`footnoteType`) && !(this_object$`footnoteType` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
          stop(paste("Error! \"", this_object$`footnoteType`, "\" cannot be assigned to `footnoteType`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
        }
        self$`footnoteType` <- this_object$`footnoteType`
      }
      if (!is.null(this_object$`NetworkID`)) {
        self$`NetworkID` <- this_object$`NetworkID`
      }
      if (!is.null(this_object$`AllTextBlocks`)) {
        self$`AllTextBlocks` <- this_object$`AllTextBlocks`
      }
      if (!is.null(this_object$`AllMDASections`)) {
        self$`AllMDASections` <- this_object$`AllMDASections`
      }
      if (!is.null(this_object$`FilingID`)) {
        self$`FilingID` <- this_object$`FilingID`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FootnoteQueryParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`fullTextQuery`)) {
          sprintf(
          '"fullTextQuery":
            "%s"
                    ',
          self$`fullTextQuery`
          )
        },
        if (!is.null(self$`arcRoles`)) {
          sprintf(
          '"arcRoles":
             [%s]
          ',
          paste(unlist(lapply(self$`arcRoles`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`footnoteTag`)) {
          sprintf(
          '"footnoteTag":
            "%s"
                    ',
          self$`footnoteTag`
          )
        },
        if (!is.null(self$`startEntityID`)) {
          sprintf(
          '"startEntityID":
            %d
                    ',
          self$`startEntityID`
          )
        },
        if (!is.null(self$`startOffset`)) {
          sprintf(
          '"startOffset":
            %d
                    ',
          self$`startOffset`
          )
        },
        if (!is.null(self$`accessionID`)) {
          sprintf(
          '"accessionID":
            %d
                    ',
          self$`accessionID`
          )
        },
        if (!is.null(self$`allFootnotes`)) {
          sprintf(
          '"allFootnotes":
            %s
                    ',
          tolower(self$`allFootnotes`)
          )
        },
        if (!is.null(self$`includeRelatedItems`)) {
          sprintf(
          '"includeRelatedItems":
            %s
                    ',
          tolower(self$`includeRelatedItems`)
          )
        },
        if (!is.null(self$`fullTextSearchAllTimePeriods`)) {
          sprintf(
          '"fullTextSearchAllTimePeriods":
            %s
                    ',
          tolower(self$`fullTextSearchAllTimePeriods`)
          )
        },
        if (!is.null(self$`fullTextSearchRestrictToMetricLabels`)) {
          sprintf(
          '"fullTextSearchRestrictToMetricLabels":
            %s
                    ',
          tolower(self$`fullTextSearchRestrictToMetricLabels`)
          )
        },
        if (!is.null(self$`normalizedFaceMetric`)) {
          sprintf(
          '"normalizedFaceMetric":
            "%s"
                    ',
          self$`normalizedFaceMetric`
          )
        },
        if (!is.null(self$`normalizedFootnoteMetric`)) {
          sprintf(
          '"normalizedFootnoteMetric":
            "%s"
                    ',
          self$`normalizedFootnoteMetric`
          )
        },
        if (!is.null(self$`normalizedBreakoutMetric`)) {
          sprintf(
          '"normalizedBreakoutMetric":
            "%s"
                    ',
          self$`normalizedBreakoutMetric`
          )
        },
        if (!is.null(self$`ByDocumentID`)) {
          sprintf(
          '"ByDocumentID":
            %s
                    ',
          tolower(self$`ByDocumentID`)
          )
        },
        if (!is.null(self$`XBRLNumericTag`)) {
          sprintf(
          '"XBRLNumericTag":
            "%s"
                    ',
          self$`XBRLNumericTag`
          )
        },
        if (!is.null(self$`FactID`)) {
          sprintf(
          '"FactID":
            %d
                    ',
          self$`FactID`
          )
        },
        if (!is.null(self$`blobID`)) {
          sprintf(
          '"blobID":
            "%s"
                    ',
          self$`blobID`
          )
        },
        if (!is.null(self$`nonXBRLFactIdentifier`)) {
          sprintf(
          '"nonXBRLFactIdentifier":
            %d
                    ',
          self$`nonXBRLFactIdentifier`
          )
        },
        if (!is.null(self$`nonXBRLExtractTag`)) {
          sprintf(
          '"nonXBRLExtractTag":
            "%s"
                    ',
          self$`nonXBRLExtractTag`
          )
        },
        if (!is.null(self$`XBRLFactIdentifier`)) {
          sprintf(
          '"XBRLFactIdentifier":
            %d
                    ',
          self$`XBRLFactIdentifier`
          )
        },
        if (!is.null(self$`userSubmittedURL`)) {
          sprintf(
          '"userSubmittedURL":
            "%s"
                    ',
          self$`userSubmittedURL`
          )
        },
        if (!is.null(self$`subDivide`)) {
          sprintf(
          '"subDivide":
            %s
                    ',
          tolower(self$`subDivide`)
          )
        },
        if (!is.null(self$`publicDisclosureID`)) {
          sprintf(
          '"publicDisclosureID":
            "%s"
                    ',
          self$`publicDisclosureID`
          )
        },
        if (!is.null(self$`historyFactID`)) {
          sprintf(
          '"historyFactID":
            %d
                    ',
          self$`historyFactID`
          )
        },
        if (!is.null(self$`disclosureName`)) {
          sprintf(
          '"disclosureName":
            "%s"
                    ',
          self$`disclosureName`
          )
        },
        if (!is.null(self$`disclosureNames`)) {
          sprintf(
          '"disclosureNames":
             [%s]
          ',
          paste(unlist(lapply(self$`disclosureNames`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`limit`)) {
          sprintf(
          '"limit":
            %d
                    ',
          self$`limit`
          )
        },
        if (!is.null(self$`footnoteType`)) {
          sprintf(
          '"footnoteType":
            "%s"
                    ',
          self$`footnoteType`
          )
        },
        if (!is.null(self$`NetworkID`)) {
          sprintf(
          '"NetworkID":
            %d
                    ',
          self$`NetworkID`
          )
        },
        if (!is.null(self$`AllTextBlocks`)) {
          sprintf(
          '"AllTextBlocks":
            %s
                    ',
          tolower(self$`AllTextBlocks`)
          )
        },
        if (!is.null(self$`AllMDASections`)) {
          sprintf(
          '"AllMDASections":
            %s
                    ',
          tolower(self$`AllMDASections`)
          )
        },
        if (!is.null(self$`FilingID`)) {
          sprintf(
          '"FilingID":
            %d
                    ',
          self$`FilingID`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FootnoteQueryParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FootnoteQueryParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FootnoteQueryParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fullTextQuery` <- this_object$`fullTextQuery`
      self$`arcRoles` <- ApiClient$new()$deserializeObj(this_object$`arcRoles`, "array[integer]", loadNamespace("calcbenchR"))
      self$`footnoteTag` <- this_object$`footnoteTag`
      self$`startEntityID` <- this_object$`startEntityID`
      self$`startOffset` <- this_object$`startOffset`
      self$`accessionID` <- this_object$`accessionID`
      self$`allFootnotes` <- this_object$`allFootnotes`
      self$`includeRelatedItems` <- this_object$`includeRelatedItems`
      self$`fullTextSearchAllTimePeriods` <- this_object$`fullTextSearchAllTimePeriods`
      self$`fullTextSearchRestrictToMetricLabels` <- this_object$`fullTextSearchRestrictToMetricLabels`
      self$`normalizedFaceMetric` <- this_object$`normalizedFaceMetric`
      self$`normalizedFootnoteMetric` <- this_object$`normalizedFootnoteMetric`
      self$`normalizedBreakoutMetric` <- this_object$`normalizedBreakoutMetric`
      self$`ByDocumentID` <- this_object$`ByDocumentID`
      self$`XBRLNumericTag` <- this_object$`XBRLNumericTag`
      self$`FactID` <- this_object$`FactID`
      self$`blobID` <- this_object$`blobID`
      self$`nonXBRLFactIdentifier` <- this_object$`nonXBRLFactIdentifier`
      self$`nonXBRLExtractTag` <- this_object$`nonXBRLExtractTag`
      self$`XBRLFactIdentifier` <- this_object$`XBRLFactIdentifier`
      self$`userSubmittedURL` <- this_object$`userSubmittedURL`
      self$`subDivide` <- this_object$`subDivide`
      self$`publicDisclosureID` <- this_object$`publicDisclosureID`
      self$`historyFactID` <- this_object$`historyFactID`
      self$`disclosureName` <- this_object$`disclosureName`
      self$`disclosureNames` <- ApiClient$new()$deserializeObj(this_object$`disclosureNames`, "array[character]", loadNamespace("calcbenchR"))
      self$`limit` <- this_object$`limit`
      if (!is.null(this_object$`footnoteType`) && !(this_object$`footnoteType` %in% c("none", "StatementOfFinancialPositionUnclassified_RealEstateOperations", "StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2", "StatementOfShareholdersEquityAndOtherComprehensiveIncome", "StatementOfPartnersCapital", "StatementOfOtherComprehensiveIncomeAlternative", "StatementOfOtherComprehensiveIncome", "StatementOfIncomeSecuritiesBasedIncome3", "StatementOfIncomeSecuritiesBasedIncome", "StatementOfIncomeRealEstateInvestmentTrustsCalc2", "StatementOfIncomeRealEstateInvestmentTrusts", "StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4", "StatementOfIncomeRealEstateExcludingREITsCalc2", "StatementOfIncomeRealEstateExcludingREITs", "StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative", "StatementOfIncomeInterestBasedRevenueCalc4", "StatementOfIncomeInterestBasedRevenueCalc3", "StatementOfIncomeInterestBasedRevenueCalc2", "StatementOfIncomeInterestBasedRevenue", "StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3", "StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness", "StatementOfIncomeInsuranceBasedRevenue2", "StatementOfIncomeInsuranceBasedRevenue", "StatementOfIncomeDiscontinuedOperationsAlternate", "StatementOfIncomeAlternative", "StatementOfIncomeAlternateAggregations", "StatementOfIncome", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2", "StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations", "StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation", "StatementOfFinancialPositionUnclassified_InvestmentBasedOperations", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate", "StatementOfFinancialPositionUnclassified_DepositBasedOperations", "StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative", "StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative", "StatementOfFinancialPositionClassified_RealEstateOperations", "StatementOfFinancialPositionClassifiedFirstAlternative", "StatementOfFinancialPositionClassified", "StatementOfCashFlowsSupplementalDisclosures", "StatementOfCashFlowsIndirectSixthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectSecuritiesBasedOperations", "StatementOfCashFlowsIndirectRealEstateSecondAlternate", "StatementOfCashFlowsIndirectRealEstateFirstAlternate", "StatementOfCashFlowsIndirectRealEstate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectInvestmentBasedOperations", "StatementOfCashFlowsIndirectFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate", "StatementOfCashFlowsIndirectDepositBasedOperations", "StatementOfCashFlowsIndirectAdditionalElements", "StatementOfCashFlowsIndirect", "StatementOfCashFlowsDirectFirstAlternate", "StatementOfCashFlowsDirect", "disclosure_TransfersAndServicing", "disclosure_TemporaryEquity", "disclosure_SummaryOfInvestmentHoldings", "disclosure_SegmentReporting", "disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate", "disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation", "disclosure_SECScheduleArticle12_17Reinsurance", "disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts", "disclosure_SECScheduleArticle12_04CondensedFinancialInformation", "disclosure_revenueFromContractsWithCustomers", "disclosure_ResearchAndDevelopment", "disclosure_Reorganizations", "disclosure_RelatedPartyDisclosures", "disclosure_RegulatedOperations", "disclosure_ReceivablesLoansNotesReceivableAndOthers", "disclosure_RealEstate", "disclosure_PropertyPlantAndEquipment", "disclosure_PayablesAndAccruals", "disclosure_OtherThanSecuritiesInvestmentHoldings", "disclosure_OtherLiabilities", "disclosure_OtherExpenses", "disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements", "disclosure_MiscellaneousIndustries", "disclosure_MinorityInterest", "disclosure_Leases", "disclosure_InvestmentsSoldNotYetPurchased", "disclosure_InvestmentsInAndAdvancesToAffiliates", "disclosure_InvestmentsFederalTaxNote", "disclosure_InvestmentsEquityMethodAndJointVentures", "disclosure_InvestmentsDebtAndEquitySecurities", "disclosure_InvestmentsAllOtherInvestments", "disclosure_InvestmentHoldings", "disclosure_Inventory", "disclosure_InterimReporting", "disclosure_IntangibleAssetsGoodwillAndOther", "disclosure_IncomeTaxes", "disclosure_HealthCareOrganizations", "disclosure_guarantor_income_statement", "disclosure_guarantor_balance_sheet", "disclosure_guarantor_cash_flow", "disclosure_Guarantees", "disclosure_GoingConcern", "disclosure_ForeignOperationsAndCurrencyTranslation", "disclosure_FinancialServicesInsurance", "disclosure_FinancialServicesFederalHomeLoanBanks", "disclosure_FinancialServicesBrokersAndDealers", "disclosure_FinancialServicesBankingAndThriftInterest", "disclosure_FinancialServicesBankingAndThrift", "disclosure_FinancialInstrumentsFairValueDisclosures", "disclosure_ExtraordinaryAndUnusualItems", "disclosure_ExtractiveIndustries", "disclosure_ExitOrDisposalCostObligations", "disclosure_Equity", "disclosure_EnvironmentalRemediationObligations", "disclosure_EarningsPerShare", "disclosure_DiscontinuedOperations", "disclosure_DerivativeInstrumentsAndHedgingActivities", "disclosure_DeferredRevenue", "disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets", "disclosure_Debt", "disclosure_Contractors", "disclosure_CompensationRelatedCostsStockCompensation", "disclosure_CompensationRelatedCostsRetirementBenefits", "disclosure_CompensationRelatedCostsPostemploymentBenefits", "disclosure_CompensationRelatedCostsGeneral", "disclosure_CommitmentAndContingencies", "disclosure_CashAndCashEquivalents", "disclosure_BusinessCombinations", "disclosure_AssetRetirementObligations", "disclosure_AccountingPolicies", "disclosure_AccountingChangesAndErrorCorrections", "disclosure_unidentified", "QuarterlyOrAnualReport", "FaceFinancials", "NotesToFinancialStatements", "user_submitted_document", "ProxyStatement", "ProxyStatement_SummaryCompensationTable", "ProxyStatement_CEOCompensationRatioTable", "ProxyStatement_DirectorCompensationTable", "ProxyStatement_DirectorCommitteeCompensationTable", "ProxyStatement_equityComensationPlansTable", "ProxyStatement_AuditFees", "EarningsPressReleaseFrom8K", "EarningsPressRelease_GaapNonGaapReconcilliation", "EarningsPressRelease_Highlights", "EarningsPressRelease_guidanceOutlook", "EarningsPressRelease_KPIs", "tableFromNonXBRLDocument", "TenKQ_MarketCommonEquity_ShareRepurchases", "eightk_guidanceUpdate", "eightk_conferenceCallTranscript", "eightk_presentationSlides", "eightk_monthlyOperatingMetrics", "eightk_earningsPressRelease_preliminary", "eightk_other", "eightk_correction", "eightk_all_types", "commentLetter", "commentLetterResponse", "NT10KorQ", "eightk_nonfinancial", "form_3", "form_4", "form_5", "MD_A_section", "MD_A_Overview", "MD_A_ContractualObligations", "MD_A_SafeHarbourProvision", "MD_A_SegmentResults", "MD_A_ResultsOfOperations", "MD_A_RecentlyIssuedAccountingAnnouncements", "MD_A_OffBalanceSheetArrangements", "MD_A_InterimPeriodRequirements", "MD_A_TabularDisclosureOfContractualObligations", "MD_A_LiquidityAndCapitalResources", "MD_A_CriticalAccountingPolicies"))) {
        stop(paste("Error! \"", this_object$`footnoteType`, "\" cannot be assigned to `footnoteType`. Must be \"none\", \"StatementOfFinancialPositionUnclassified_RealEstateOperations\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncomeCalc2\", \"StatementOfShareholdersEquityAndOtherComprehensiveIncome\", \"StatementOfPartnersCapital\", \"StatementOfOtherComprehensiveIncomeAlternative\", \"StatementOfOtherComprehensiveIncome\", \"StatementOfIncomeSecuritiesBasedIncome3\", \"StatementOfIncomeSecuritiesBasedIncome\", \"StatementOfIncomeRealEstateInvestmentTrustsCalc2\", \"StatementOfIncomeRealEstateInvestmentTrusts\", \"StatementOfIncomeRealEstateExcludingREITsInvestementGainLossWithoutImpairmentElementAlternative4\", \"StatementOfIncomeRealEstateExcludingREITsCalc2\", \"StatementOfIncomeRealEstateExcludingREITs\", \"StatementOfIncomeInvestementGainLossWithoutImpairmentElementAlternative\", \"StatementOfIncomeInterestBasedRevenueCalc4\", \"StatementOfIncomeInterestBasedRevenueCalc3\", \"StatementOfIncomeInterestBasedRevenueCalc2\", \"StatementOfIncomeInterestBasedRevenue\", \"StatementOfIncomeInsuranceBasedRevenueInvestementGainLossWithoutImpairmentElementAlternative3\", \"StatementOfIncomeInsuranceBasedRevenueBreakdownByBusiness\", \"StatementOfIncomeInsuranceBasedRevenue2\", \"StatementOfIncomeInsuranceBasedRevenue\", \"StatementOfIncomeDiscontinuedOperationsAlternate\", \"StatementOfIncomeAlternative\", \"StatementOfIncomeAlternateAggregations\", \"StatementOfIncome\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperationsCalc2\", \"StatementOfFinancialPositionUnclassified_SecuritiesBasedOperations\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionUnclassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsFirstAlternative\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperationsAlternativePresentation\", \"StatementOfFinancialPositionUnclassified_InvestmentBasedOperations\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsSecondAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperationsFirstAlternate\", \"StatementOfFinancialPositionUnclassified_DepositBasedOperations\", \"StatementOfFinancialPositionClassified_RealEstateOperationsSecondAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperationsFirstAlternative\", \"StatementOfFinancialPositionClassified_RealEstateOperations\", \"StatementOfFinancialPositionClassifiedFirstAlternative\", \"StatementOfFinancialPositionClassified\", \"StatementOfCashFlowsSupplementalDisclosures\", \"StatementOfCashFlowsIndirectSixthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectSecuritiesBasedOperations\", \"StatementOfCashFlowsIndirectRealEstateSecondAlternate\", \"StatementOfCashFlowsIndirectRealEstateFirstAlternate\", \"StatementOfCashFlowsIndirectRealEstate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectInvestmentBasedOperations\", \"StatementOfCashFlowsIndirectFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFourthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperationsFifthAlternate\", \"StatementOfCashFlowsIndirectDepositBasedOperations\", \"StatementOfCashFlowsIndirectAdditionalElements\", \"StatementOfCashFlowsIndirect\", \"StatementOfCashFlowsDirectFirstAlternate\", \"StatementOfCashFlowsDirect\", \"disclosure_TransfersAndServicing\", \"disclosure_TemporaryEquity\", \"disclosure_SummaryOfInvestmentHoldings\", \"disclosure_SegmentReporting\", \"disclosure_SECScheduleArticle12_29MortgageLoansOnRealEstate\", \"disclosure_SECScheduleArticle12_28RealEstateAndAccumulatedDepreciation\", \"disclosure_SECScheduleArticle12_17Reinsurance\", \"disclosure_SECScheduleArticle12_09ValuationAndQualifyingAccounts\", \"disclosure_SECScheduleArticle12_04CondensedFinancialInformation\", \"disclosure_revenueFromContractsWithCustomers\", \"disclosure_ResearchAndDevelopment\", \"disclosure_Reorganizations\", \"disclosure_RelatedPartyDisclosures\", \"disclosure_RegulatedOperations\", \"disclosure_ReceivablesLoansNotesReceivableAndOthers\", \"disclosure_RealEstate\", \"disclosure_PropertyPlantAndEquipment\", \"disclosure_PayablesAndAccruals\", \"disclosure_OtherThanSecuritiesInvestmentHoldings\", \"disclosure_OtherLiabilities\", \"disclosure_OtherExpenses\", \"disclosure_OrganizationConsolidationAndPresentationOfFinancialStatements\", \"disclosure_MiscellaneousIndustries\", \"disclosure_MinorityInterest\", \"disclosure_Leases\", \"disclosure_InvestmentsSoldNotYetPurchased\", \"disclosure_InvestmentsInAndAdvancesToAffiliates\", \"disclosure_InvestmentsFederalTaxNote\", \"disclosure_InvestmentsEquityMethodAndJointVentures\", \"disclosure_InvestmentsDebtAndEquitySecurities\", \"disclosure_InvestmentsAllOtherInvestments\", \"disclosure_InvestmentHoldings\", \"disclosure_Inventory\", \"disclosure_InterimReporting\", \"disclosure_IntangibleAssetsGoodwillAndOther\", \"disclosure_IncomeTaxes\", \"disclosure_HealthCareOrganizations\", \"disclosure_guarantor_income_statement\", \"disclosure_guarantor_balance_sheet\", \"disclosure_guarantor_cash_flow\", \"disclosure_Guarantees\", \"disclosure_GoingConcern\", \"disclosure_ForeignOperationsAndCurrencyTranslation\", \"disclosure_FinancialServicesInsurance\", \"disclosure_FinancialServicesFederalHomeLoanBanks\", \"disclosure_FinancialServicesBrokersAndDealers\", \"disclosure_FinancialServicesBankingAndThriftInterest\", \"disclosure_FinancialServicesBankingAndThrift\", \"disclosure_FinancialInstrumentsFairValueDisclosures\", \"disclosure_ExtraordinaryAndUnusualItems\", \"disclosure_ExtractiveIndustries\", \"disclosure_ExitOrDisposalCostObligations\", \"disclosure_Equity\", \"disclosure_EnvironmentalRemediationObligations\", \"disclosure_EarningsPerShare\", \"disclosure_DiscontinuedOperations\", \"disclosure_DerivativeInstrumentsAndHedgingActivities\", \"disclosure_DeferredRevenue\", \"disclosure_DeferredCostsCapitalizedPrepaidAndOtherAssets\", \"disclosure_Debt\", \"disclosure_Contractors\", \"disclosure_CompensationRelatedCostsStockCompensation\", \"disclosure_CompensationRelatedCostsRetirementBenefits\", \"disclosure_CompensationRelatedCostsPostemploymentBenefits\", \"disclosure_CompensationRelatedCostsGeneral\", \"disclosure_CommitmentAndContingencies\", \"disclosure_CashAndCashEquivalents\", \"disclosure_BusinessCombinations\", \"disclosure_AssetRetirementObligations\", \"disclosure_AccountingPolicies\", \"disclosure_AccountingChangesAndErrorCorrections\", \"disclosure_unidentified\", \"QuarterlyOrAnualReport\", \"FaceFinancials\", \"NotesToFinancialStatements\", \"user_submitted_document\", \"ProxyStatement\", \"ProxyStatement_SummaryCompensationTable\", \"ProxyStatement_CEOCompensationRatioTable\", \"ProxyStatement_DirectorCompensationTable\", \"ProxyStatement_DirectorCommitteeCompensationTable\", \"ProxyStatement_equityComensationPlansTable\", \"ProxyStatement_AuditFees\", \"EarningsPressReleaseFrom8K\", \"EarningsPressRelease_GaapNonGaapReconcilliation\", \"EarningsPressRelease_Highlights\", \"EarningsPressRelease_guidanceOutlook\", \"EarningsPressRelease_KPIs\", \"tableFromNonXBRLDocument\", \"TenKQ_MarketCommonEquity_ShareRepurchases\", \"eightk_guidanceUpdate\", \"eightk_conferenceCallTranscript\", \"eightk_presentationSlides\", \"eightk_monthlyOperatingMetrics\", \"eightk_earningsPressRelease_preliminary\", \"eightk_other\", \"eightk_correction\", \"eightk_all_types\", \"commentLetter\", \"commentLetterResponse\", \"NT10KorQ\", \"eightk_nonfinancial\", \"form_3\", \"form_4\", \"form_5\", \"MD_A_section\", \"MD_A_Overview\", \"MD_A_ContractualObligations\", \"MD_A_SafeHarbourProvision\", \"MD_A_SegmentResults\", \"MD_A_ResultsOfOperations\", \"MD_A_RecentlyIssuedAccountingAnnouncements\", \"MD_A_OffBalanceSheetArrangements\", \"MD_A_InterimPeriodRequirements\", \"MD_A_TabularDisclosureOfContractualObligations\", \"MD_A_LiquidityAndCapitalResources\", \"MD_A_CriticalAccountingPolicies\".", sep = ""))
      }
      self$`footnoteType` <- this_object$`footnoteType`
      self$`NetworkID` <- this_object$`NetworkID`
      self$`AllTextBlocks` <- this_object$`AllTextBlocks`
      self$`AllMDASections` <- this_object$`AllMDASections`
      self$`FilingID` <- this_object$`FilingID`
      self
    },
    #' Validate JSON input with respect to FootnoteQueryParameters
    #'
    #' @description
    #' Validate JSON input with respect to FootnoteQueryParameters and throw an exception if invalid
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
    #' @return String representation of FootnoteQueryParameters
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
# FootnoteQueryParameters$unlock()
#
## Below is an example to define the print function
# FootnoteQueryParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FootnoteQueryParameters$lock()

