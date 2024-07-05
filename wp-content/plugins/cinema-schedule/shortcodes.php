<?php
function cs_display_films() {
    $args = array(
        'post_type' => 'film',
        'posts_per_page' => -1
    );
    $films = new WP_Query( $args );
    if ( $films->have_posts() ) {
        $output = '<div class="films">';
        while ( $films->have_posts() ) {
            $films->the_post();
            $horaires = get_post_meta( get_the_ID(), 'cs_horaires', true );
            $horaires = json_decode( $horaires );
            $output .= '<div class="film">';
            $output .= '<h2>' . get_the_title() . '</h2>';
            if ( $horaires ) {
                $output .= '<ul>';
                foreach ( $horaires as $horaire ) {
                    $output .= '<li>' . esc_html( $horaire->date ) . ' - ' . esc_html( $horaire->jour ) . ' - ' . esc_html( $horaire->heure ) . '</li>';
                }
                $output .= '</ul>';
            }
            $output .= '</div>';
        }
        $output .= '</div>';
        wp_reset_postdata();
        return $output;
    } else {
        return '<p>Aucun film trouvé.</p>';
    }
}
add_shortcode( 'afficher_films', 'cs_display_films' );
