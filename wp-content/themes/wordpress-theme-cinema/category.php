<?php 
get_header(); 

$current_category = get_queried_object();
$header_image_url = get_term_meta($current_category->term_id, 'category_header_image', true);
$category_title = get_term_meta($current_category->term_id, 'category_header_name', true) ?: single_cat_title('', false);
?>

<main class="container mx-auto py-6 " style="background-image: url('<?php echo esc_url($header_image_url); ?>'); background-size: cover; background-position: center;">
    <?php if ($header_image_url) : ?>
        <header class="relative bg-center bg-cover h-72 flex items-center justify-center" style="background-image: url('<?php echo esc_url($header_image_url); ?>');">
            <div class="absolute inset-0 bg-black opacity-50"></div>
            <h1 class="relative text-5xl font-extrabold text-white z-10"><?php echo esc_html($category_title); ?></h1>
        </header>
    <?php else : ?>
        
    <?php endif; ?>

    <div class="mt-10">
        <?php if (have_posts()) : ?>
            <header class="mb-6 bg-white">
                <?php the_archive_description('<div class="text-gray-500 mb-6">', '</div>'); ?>
            </header>

            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10 mb-10">
                <?php while (have_posts()) : the_post(); ?>
                    <?php get_template_part('template-parts/card', 'film'); ?>
                <?php endwhile; ?>
            </div>

            <div class="pagination flex justify-center">
                <?php echo paginate_links(); ?>
            </div>
        <?php else : ?>
            <p><?php _e('Aucun contenu trouvé dans cette catégorie.', 'cinema-theme'); ?></p>
        <?php endif; ?>
    </div>
</main>

<?php get_footer(); ?>
