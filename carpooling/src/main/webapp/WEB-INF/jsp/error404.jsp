<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorator="meta-layout">
    <head>
        <title>Page Not Found</title>
    </head>
    <body>
        <div layout:fragment="main">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center text-center error-page bg-primary">
                    <div class="row flex-grow">
                        <div class="col-lg-7 mx-auto text-white">
                            <div class="row align-items-center d-flex flex-row">
                                <div class="col-lg-6 error-page-divider text-lg-left pl-lg-4">
                                    <h3 class="font-weight-light">The page you’re looking for was not found!</h3>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-12 text-center mt-xl-2">
                                    <a class="text-white font-weight-medium" href="${pageContext.request.contextPath}">Back to Ηome Page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
