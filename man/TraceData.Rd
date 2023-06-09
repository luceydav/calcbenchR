% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trace_data.R
\docType{class}
\name{TraceData}
\alias{TraceData}
\title{TraceData}
\format{
An \code{R6Class} generator object
}
\description{
TraceData Class

TraceData Class
}
\details{
Create a new TraceData
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{dimensions}}{character \link{optional}}

\item{\code{local_name}}{character \link{optional}}

\item{\code{negative_weight}}{character \link{optional}}

\item{\code{XBRL_fact_value}}{object \link{optional}}

\item{\code{fact_id}}{integer \link{optional}}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-TraceData-new}{\code{TraceData$new()}}
\item \href{#method-TraceData-toJSON}{\code{TraceData$toJSON()}}
\item \href{#method-TraceData-fromJSON}{\code{TraceData$fromJSON()}}
\item \href{#method-TraceData-toJSONString}{\code{TraceData$toJSONString()}}
\item \href{#method-TraceData-fromJSONString}{\code{TraceData$fromJSONString()}}
\item \href{#method-TraceData-validateJSON}{\code{TraceData$validateJSON()}}
\item \href{#method-TraceData-toString}{\code{TraceData$toString()}}
\item \href{#method-TraceData-isValid}{\code{TraceData$isValid()}}
\item \href{#method-TraceData-getInvalidFields}{\code{TraceData$getInvalidFields()}}
\item \href{#method-TraceData-print}{\code{TraceData$print()}}
\item \href{#method-TraceData-clone}{\code{TraceData$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-new"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new TraceData class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$new(
  dimensions = NULL,
  local_name = NULL,
  negative_weight = NULL,
  XBRL_fact_value = NULL,
  fact_id = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dimensions}}{dimensions}

\item{\code{local_name}}{local_name}

\item{\code{negative_weight}}{negative_weight}

\item{\code{XBRL_fact_value}}{XBRL_fact_value}

\item{\code{fact_id}}{fact_id}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
TraceData in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of TraceData
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of TraceData
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
TraceData in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of TraceData
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of TraceData
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to TraceData and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-TraceData-toString"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of TraceData
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-print"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-print}{}}}
\subsection{Method \code{print()}}{
Print the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-TraceData-clone"></a>}}
\if{latex}{\out{\hypertarget{method-TraceData-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{TraceData$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
