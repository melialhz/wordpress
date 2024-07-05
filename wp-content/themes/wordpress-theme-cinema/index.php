<?php 
get_header();

$categories = get_categories();
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$args = array(
    'post_type' => 'post',
    'posts_per_page' => 6,
    'paged' => $paged
);

$custom_query = new WP_Query($args);
?>

<main class="container mx-auto p-4 flex flex-col md:flex-row">
    <aside class="w-full md:w-1/4 md:mr-8 mb-8 md:mb-0">
        <div class="w-full ">
            <h5 class="text-xl font-bold leading-none text-gray-900 dark:text-white mb-4">Categories</h5>
            <div class="flow-root">
                <ul role="list" class="divide-y divide-gray-200 dark:divide-bg-orange-700">
                    <?php foreach ($categories as $category) : ?>
                        <li class="py-3 sm:py-4">
                            <a href="<?php echo get_category_link($category->term_id); ?>" class="block group">
                                <div class="flex items-center justify-between px-4 py-2 transition-colors duration-200 relative rounded-lg hover:bg-amber-500 dark:hover:bg-blue-700">
                                    <span class="text-sm font-medium text-gray-900 group-hover:text-blue-600 dark:text-white dark:group-hover:text-blue-500 truncate"><?php echo $category->name; ?></span>
                                    <svg class="w-4 h-4 text-gray-500 group-hover:text-blue-600 dark:text-gray-400 dark:group-hover:text-blue-500 transition-colors duration-200 absolute top-1/2 transform -translate-y-1/2 right-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                                        <path fill-rule="evenodd" d="M10 12a1 1 0 0 1-1-1V5a1 1 0 0 1 2 0v6a1 1 0 0 1-1 1zm0 4a1 1 0 0 1-1-1v-6a1 1 0 0 1 2 0v6a1 1 0 0 1-1 1zm5-8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm-10 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" clip-rule="evenodd" />
                                    </svg>
                                </div>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </aside>

    <div class="w-full md:w-3/4">
        <?php if ($custom_query->have_posts()) : ?>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <?php while ($custom_query->have_posts()) : $custom_query->the_post(); ?>
                    <?php get_template_part('template-parts/card', 'film'); ?>
                <?php endwhile; ?>
            </div>

            <div class="mt-8 flex justify-center">
                <div class="pagination flex justify-center">
                    <?php echo paginate_links(); ?>
                </div>
            </div>

            <?php wp_reset_postdata(); ?>

        <?php else : ?>
            <p><?php _e('No content found'); ?></p>
        <?php endif; ?>
    </div>
</main>

<?php get_footer(); ?>
