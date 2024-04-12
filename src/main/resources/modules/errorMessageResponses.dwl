%dw 2.0
output application/json
---
if (vars.statusCode == 400) { message: "Bad Request" }
else if (vars.statusCode == 401) { message: "Unauthorized" }
else if (vars.statusCode == 403) { message: "Forbidden" }
else if (vars.statusCode == 404) { message: "Resource Not Found" }
else if (vars.statusCode == 405) { message: "Method Not Allowed" }
else if (vars.statusCode == 406) { message: "Not Acceptable" }
else if (vars.statusCode == 408) { message: "Timeout Exceeded" }
else if (vars.statusCode == 415) { message: "Unsupported Media Type" }
else if (vars.statusCode == 429) { message: "Too Many Requests" }
else if (vars.statusCode == 501) { message: "Not Implemented" }
else if (vars.statusCode == 503) { message: "Service Unavailable" }
else if (vars.statusCode == 504) { message: "Gateway Timeout" }
else { message: "An error has occurred" }