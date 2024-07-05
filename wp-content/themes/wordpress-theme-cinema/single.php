<?php get_header(); ?>

<main class="container mx-auto p-4">
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <article class="bg-white p-6 rounded shadow-lg">
            <div class="px-6 py-4">
                <h1 class="text-3xl font-bold mb-4 text-center"><?php the_title(); ?> - <?php echo render_movie_star_rating(get_post_meta(get_the_ID(), 'movie_rating', true)); ?></h1>
                <p class="text-gray-600 text-center"><strong>Release Date:</strong> <?php echo get_post_meta(get_the_ID(), 'movie_release_year', true); ?></p>
                <?php if ($trailer_url = get_post_meta(get_the_ID(), 'movie_trailer_url', true)) : ?>
                    <div class="mt-4 mb-5">
                        <iframe width="100%" height="315" src="<?php echo esc_url($trailer_url); ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="w-full rounded shadow-lg"></iframe>
                    </div>
                <?php endif; ?>

                <div class="text-gray-700 mb-4"><?php the_content(); ?></div>
            </div>
        </article>
    <?php endwhile; endif; ?>
</main>

<?php get_footer(); ?>
