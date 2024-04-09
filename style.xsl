<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Telepizza</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
			</head>
			
			<body>
				<header>
					<nav class="navbar navbar-expand navbar-light bg-danger py-3">
						<div class="container">
							<a class="navbar-brand p-0" href="#"><img src="img/telepizzalogo.png" alt="" srcset=""/></a>
							<button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="collapsibleNavId">
								<ul class="navbar-nav ms-auto mt-lg-0 my-auto">
									<li class="nav-item">
										<a class="nav-link ms-1 my-auto" href="#"><img src="img/work.svg" alt="" srcset=""/></a>
									</li>
									<li class="nav-item">
										<a class="nav-link ms-1" href="#"><img src="img/user.svg" alt="" srcset=""/></a>
									</li>
									<li class="nav-item">
										<a class="nav-link ms-1" href="#"><img src="img/cart.svg" alt="" srcset=""/></a>
									</li>
								</ul>
								<form class="d-flex my-2 my-lg-0">
								</form>
							</div>
						</div>
					</nav>
					
				</header>
				<main>
					<div class="container">
						<h1 class="mb-4 mt-3">Entrantes</h1>
						<xsl:for-each select="entrantes/categoria">
							<section class="mb-4">
								<h3 class="text-secondary mb-2"><xsl:value-of select="@nombre"/></h3>
								<div class="row">
									<xsl:for-each select="entrante">
										<div class="col-12 col-md-6 col-lg-4 my-3">
											<div class="card">
												<img class="card-img-top"
													src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.png"
													alt="Title" />
												<div class="card-body position-relative">
													<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
													<div class="card-text pb-5 mt-3 mb-1 row justify-content-between text-secondary">
														<div class="col-6 fs-6 fw-medium">
															<p class="m-0"><a href="#" class="text-decoration-none text-secondary">Ver más</a></p>
														</div>
														<div class="col-6 text-end fs-5 fw-medium">
														<xsl:choose>
															<xsl:when test="oferta">
																<p class="m-0 my-auto"><span class="text-danger">(Oferta) </span><xsl:value-of select="precio"/> €</p>
															</xsl:when>
															<xsl:otherwise>
																<p class="m-0 my-auto"><xsl:value-of select="precio"/> €</p>

															</xsl:otherwise>
														</xsl:choose>
														</div>
													</div>
													<button type="button"
														class="btn btn-danger rounded-1 fs-6 px-4 position-absolute end-0 bottom-0 mb-3 me-3">
														AÑADIR
													</button>
												</div>
											</div>
										</div>
									</xsl:for-each>
								</div>
							</section>
						</xsl:for-each>
					</div>
				</main>
				<footer class="bg-danger py-3 text-white">
					<h4 class="text-center">Telepizza - Azarquiel</h4>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>