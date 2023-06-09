% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_footnote.R
\docType{class}
\name{TextFootnote}
\alias{TextFootnote}
\title{TextFootnote}
\format{
An \code{R6Class} generator object
}
\description{
TextFootnote Class

TextFootnote Class
}
\details{
Create a new TextFootnote
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{entity_name}}{character \link{optional}}

\item{\code{accession_id}}{integer \link{optional}}

\item{\code{footnote_type}}{character \link{optional}}

\item{\code{SEC_URL}}{character \link{optional}}

\item{\code{fiscal_year}}{integer \link{optional}}

\item{\code{fiscal_period}}{character \link{optional}}

\item{\code{calendar_year}}{integer \link{optional}}

\item{\code{calendar_period}}{character \link{optional}}

\item{\code{filing_date}}{character \link{optional}}

\item{\code{received_date}}{character \link{optional}}

\item{\code{document_type}}{character \link{optional}}

\item{\code{guide_link}}{character \link{optional}}

\item{\code{page_url}}{character \link{optional}}

\item{\code{entity_id}}{integer \link{optional}}

\item{\code{id_detail}}{character \link{optional}}

\item{\code{local_name}}{character \link{optional}}

\item{\code{CIK}}{character \link{optional}}

\item{\code{sec_accession_number}}{character \link{optional}}

\item{\code{network_id}}{integer \link{optional}}

\item{\code{schema}}{character \link{optional}}

\item{\code{fact_id}}{integer \link{optional}}

\item{\code{is_XBRL_document}}{character \link{optional}}

\item{\code{ticker}}{character \link{optional}}

\item{\code{sec_filing_id}}{integer \link{optional}}

\item{\code{blob_id}}{character \link{optional}}

\item{\code{date_reported}}{character \link{optional}}

\item{\code{content}}{\link{XBRLDisclosure} \link{optional}}

\item{\code{filing_type}}{character \link{optional}}

\item{\code{description}}{character \link{optional}}

\item{\code{disclosure_type_name}}{character \link{optional}}

\item{\code{period_end_date}}{character \link{optional}}

\item{\code{footnote_type_title}}{character \link{optional}}

\item{\code{sub_sections}}{list(\link{DisclosureSubSection}) \link{optional}}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-TextFootnote-new}{\code{TextFootnote$new()}}
\item \href{#method-TextFootnote-toJSON}{\code{TextFootnote$toJSON()}}
\item \href{#method-TextFootnote-fromJSON}{\code{TextFootnote$fromJSON()}}
\item \href{#method-TextFootnote-toJSONString}{\code{TextFootnote$toJSONString()}}
\item \href{#method-TextFootnote-fromJSONString}{\code{TextFootnote$fromJSONString()}}
\item \href{#method-TextFootnote-validateJSON}{\code{TextFootnote$validateJSON()}}
\item \href{#method-TextFootnote-toString}{\code{TextFootnote$toString()}}
\item \href{#method-TextFootnote-isValid}{\code{TextFootnote$isValid()}}
\item \href{#method-TextFootnote-getInvalidFields}{\code{TextFootnote$getInvalidFields()}}
\item \href{#method-TextFootnote-print}{\code{TextFootnote$print()}}
\item \href{#method-TextFootnote-clone}{\code{TextFootnote$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-new"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new TextFootnote class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$new(
  entity_name = NULL,
  accession_id = NULL,
  footnote_type = NULL,
  SEC_URL = NULL,
  fiscal_year = NULL,
  fiscal_period = NULL,
  calendar_year = NULL,
  calendar_period = NULL,
  filing_date = NULL,
  received_date = NULL,
  document_type = NULL,
  guide_link = NULL,
  page_url = NULL,
  entity_id = NULL,
  id_detail = NULL,
  local_name = NULL,
  CIK = NULL,
  sec_accession_number = NULL,
  network_id = NULL,
  schema = NULL,
  fact_id = NULL,
  is_XBRL_document = NULL,
  ticker = NULL,
  sec_filing_id = NULL,
  blob_id = NULL,
  date_reported = NULL,
  content = NULL,
  filing_type = NULL,
  description = NULL,
  disclosure_type_name = NULL,
  period_end_date = NULL,
  footnote_type_title = NULL,
  sub_sections = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{entity_name}}{entity_name}

\item{\code{accession_id}}{accession_id}

\item{\code{footnote_type}}{footnote_type}

\item{\code{SEC_URL}}{SEC_URL}

\item{\code{fiscal_year}}{fiscal_year}

\item{\code{fiscal_period}}{fiscal_period}

\item{\code{calendar_year}}{calendar_year}

\item{\code{calendar_period}}{calendar_period}

\item{\code{filing_date}}{filing_date}

\item{\code{received_date}}{received_date}

\item{\code{document_type}}{document_type}

\item{\code{guide_link}}{guide_link}

\item{\code{page_url}}{page_url}

\item{\code{entity_id}}{entity_id}

\item{\code{id_detail}}{id_detail}

\item{\code{local_name}}{local_name}

\item{\code{CIK}}{CIK}

\item{\code{sec_accession_number}}{sec_accession_number}

\item{\code{network_id}}{network_id}

\item{\code{schema}}{schema}

\item{\code{fact_id}}{fact_id}

\item{\code{is_XBRL_document}}{is_XBRL_document}

\item{\code{ticker}}{ticker}

\item{\code{sec_filing_id}}{sec_filing_id}

\item{\code{blob_id}}{blob_id}

\item{\code{date_reported}}{date_reported}

\item{\code{content}}{content}

\item{\code{filing_type}}{filing_type}

\item{\code{description}}{description}

\item{\code{disclosure_type_name}}{disclosure_type_name}

\item{\code{period_end_date}}{period_end_date}

\item{\code{footnote_type_title}}{footnote_type_title}

\item{\code{sub_sections}}{sub_sections}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
TextFootnote in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of TextFootnote
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of TextFootnote
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
TextFootnote in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of TextFootnote
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of TextFootnote
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to TextFootnote and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$validateJSON(input)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input}}{the JSON input}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-toString"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of TextFootnote
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-print"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TextFootnote-clone"></a>}}
\if{latex}{\out{\hypertarget{method-TextFootnote-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TextFootnote$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
