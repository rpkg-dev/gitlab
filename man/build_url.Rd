% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gitlab.gen.R
\name{build_url}
\alias{build_url}
\title{Build GitLab repository URL}
\usage{
build_url(
  id_project = funky::config_val("id_project"),
  ...,
  ref = "HEAD",
  force_branch_ref = FALSE,
  base_url = funky::config_val("base_url"),
  token = funky::config_val("token"),
  max_tries = 3L
)
}
\arguments{
\item{id_project}{\code{\link[base:integer]{integer(1)}}\cr
GitLab project identifier.}

\item{...}{\code{\link[base:character]{character()}}\cr
Optional path components added to the repository base URL.}

\item{ref}{\code{\link[base:character]{character(1)}}\cr
\href{https://git-scm.com/docs/revisions#_specifying_revisions}{Git revision expression} matching the desired Git tree object, e.g. a ref name (branch, tag,
etc.), a commit identifier, or another symbolic reference like \code{"HEAD~10"}. Omitted if \code{NULL}, otherwise set as a URL parameter in the API request. Note
that the GitLab API doesn't support every type of revision expression.}

\item{force_branch_ref}{\code{\link[base:logical]{logical(1)}}\cr
Whether or not to force \code{ref} to be interpreted as a \emph{branch} name by adding the \code{ref_type=heads} URL parameter.}

\item{base_url}{\code{\link[base:character]{character(1)}}\cr
Base URL to the GitLab v4 RESTful API root.}

\item{token}{\code{\link[base:character]{character(1)}}\cr
\href{https://docs.gitlab.com/ee/api/rest/authentication.html}{GitLab access token} used for authentication. If \code{NULL}, the API request is made unauthenticated
which results in \emph{HTTP 404 Not Found} and other errors for non-public resources.}

\item{max_tries}{\code{\link[base:integer]{integer(1)}}\cr
Maximum number of request attempts in case of an HTTP error. An integerish scalar. Retries are performed using exponential backoff and jitter, see \code{\link[httr2:req_retry]{httr2::req_retry()}} for details.}
}
\value{
A character scalar.
}
\description{
Assembles the URL to the specified repository path for GitLab's web interface.
}
\examples{
gitlab::build_url(id_project = 64767928,
                  "Rmd/gitlab.Rmd")
}
\seealso{
Other common functions around GitLab's v4 RESTful API:
\code{\link{api_req}()}
}
\concept{common}
