<!-- Header -->
<div id="header-wrapper">
	<div class="container">
		<!-- Header -->
		{{include header}}
		
		<!-- Banner -->
		<div id="banner">
			<div class="inner">
				
				
				<h2><strong>{{page.banner_header}}</strong></h2>
				<p>{{page.banner_paragraph}}</p>
				<a href="#" class="button big icon fa-check-circle">{{page.banner_button_text}}	</a>
			</div>
			
		</div>
	</div>
</div>

<!-- Main Wrapper -->
<div id="main-wrapper">
	<div class="wrapper style1">
		<div class="inner">
			
			<!-- Feature 1 -->
			<section class="container box feature1">
				<div class="container">
					<div class="z-row">
						<header class="first major">
							<h2>{{page.sec_one_main_header}}</h2>
							<p>{{page.sec_one_main_paragraph}}</p>
						</header>
					</div>
				</div>
				<div class="z-row">
					<div class="col-1/3">
						<section>
							<a href="#" class="image featured"><img src="{{thispage.sec_one_minor_left_image.getImage()}}" alt="" /></a>
							<header class="second icon fa-user">
								<h3>{{page.sec_one_minor_left_heading}}</h3>
								<p>{{page.sec_one_minor_left_paragraph}}</p>
							</header>
						</section>
					</div>
					<div class="col-1/3">
						<section>
							<a href="#" class="image featured"><img src="{{thispage.sec_one_minor_middle_image.getImage()}}" alt="" /></a>
							<header class="second icon fa-cog">
								<h3>{{page.sec_one_minor_middle_header}}</h3>
								<p>{{page.sec_one_minor_middle_paragraph}}</p>
							</header>
						</section>
					</div>
					<div class="col-1/3">
						<section>
							<a href="#" class="image featured"><img src="{{thispage.sec_one_minor_right_image.getImage()}}" alt="" /></a>
							<header class="second icon fa-bar-chart-o">
								<h3>{{page.sec_one_minor_right_header}}</h3>
								<p>{{page.sec_one_minor_right_paragraph}}</p>
							</header>
						</section>
					</div>
				</div>
				<p>{{page.sec_one_footer_paragraph}}</p>
			</section>
			
		</div>
	</div>
	<div class="wrapper style2">
		<div class="inner">
			
			<!-- Feature 2 -->
			<section class="container box feature2">
				<div class="z-row">
					<div class="col-1/2">
						<section>
							<header class="major">
								<h2>{{page.sec_two_left_major_header}}</h2>
								<p>{{page.sec_two_left_major_paragraph}}</p>
							</header>
							<p>{{page.sec_two_left_minor_paragraph}}</p>
							<footer>
								<a href="#" class="button big icon fa-arrow-circle-right">{{page.sec_two_left_button_text}}</a>
							</footer>
						</section>
					</div>
					<div class="col-1/2">
						<section>
							<header class="major">
								<h2>{{page.sec_two_right_major_header}}</h2>
								<p>{{page.sec_two_right_major_paragraph}}</p>
							</header>
							<p>{{page.sec_two_right_minor_paragraph}}</p>
							<footer>
								<a href="#" class="button big alt icon fa-info-circle">{{page.sec_two_right_button_text}}</a>
							</footer>
						</section>
					</div>
				</div>
			</section>
			
		</div>
	</div>
	<div class="wrapper style3">
		<div class="inner">
			<div class="container">
				<div class="z-row">
					<div class="col-2/3">
						
						<!-- Article list -->
						<section class="box article-list">
							<h2 class="icon fa-file-text-o">{{page.sec_three_blog_header_text}}</h2>
							<article class="box excerpt">
								{{each simple_blog_article as article limit 3}}
								<div class="z-row">
									<section class="box">
										<div>
											<a href="{{article.getUrl()}}" class="image left"><img src="{{article.image.getImage(150, 150, crop)}}" alt="" /></a>
											<header>
												<span class="date">{{article.date}}</span>
												<h3>{{article.title}}</h3>
											</header>
											<p>{{article.article_body.substr(0, 250)}}...</p>
										</div>
									</section>
								</div>
								{{end-each}}
							</article>
						</section>
					</div>
					<!-- Spotlight -->
					<div class="col-1/3">
						<section class="box article-list">
						<h2 class="icon fa-file-text-o">{{page.sec_three_major_article_header_text}}</h2>
							<article class="box excerpt">
								{{each simple_blog_article as article limit 1}}
									<section class="box">
										<div>
											<a href="{{article.getUrl()}}" class="image featured"><img src="{{article.image.getImage(500, 250, crop)}}" alt="" /></a>
											<header>
												<h3>{{article.title}}</h3>
											</header>
											<p>{{article.article_body.substr(0, 1500)}}</p>
										</div>
									</section>
								{{end-each}}
							</article>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
			