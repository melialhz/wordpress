<?php
/*
Plugin Name: Cinema Schedule
Description: Plugin pour gérer les films et les horaires de diffusion dans un cinéma.
Version: 1.0
Author: Votre Nom
*/

// Sécurité
if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}

// Inclure les fichiers nécessaires
include_once plugin_dir_path( __FILE__ ) . 'includes/admin-page.php';
include_once plugin_dir_path( __FILE__ ) . 'includes/shortcodes.php';

// Activation du plugin
function cs_activate() {
    // Code d'activation
}
register_activation_hook( __FILE__, 'cs_activate' );

// Désactivation du plugin
function cs_deactivate() {
    // Code de désactivation
}
register_deactivation_hook( __FILE__, 'cs_deactivate' );

?>
<?php
// Ajouter un custom post type pour les films
function cs_create_custom_post_type() {
    register_post_type( 'film',
        array(
            'labels'      => array(
                'name'          => __( 'Films' ),
                'singular_name' => __( 'Film' ),
                'add_new_item'  => __( 'Ajouter un film' ),
                'edit_item'     => __( 'Modifier le film' ),
            ),
            'public'      => true,
            'has_archive' => true,
            'supports'    => array( 'title', 'editor', 'thumbnail' ),
            'menu_icon'   => 'dashicons-video-alt2',
        )
    );
}
add_action( 'init', 'cs_create_custom_post_type' );

// Ajouter les champs personnalisés pour les horaires de diffusion
function cs_add_custom_meta_box() {
    add_meta_box(
        'cs_meta_box',
        'Horaires de Diffusion',
        'cs_display_meta_box',
        'film',
        'normal',
        'high'
    );
}
add_action( 'add_meta_boxes', 'cs_add_custom_meta_box' );

function cs_display_meta_box( $post ) {
    wp_nonce_field( basename( __FILE__ ), 'cs_nonce' );
    $cs_saved_data = get_post_meta( $post->ID, 'cs_horaires', true );
    $horaires = !empty($cs_saved_data) ? json_decode($cs_saved_data) : array();
    ?>
    <div id="horaires_container">
        <p>
            <button type="button" id="add_schedule">Ajouter horaires</button>
        </p>
        <?php
        if ( !empty($horaires) ) {
            foreach ( $horaires as $horaire ) {
                ?>
                <div class="horaire">
                    <input type="date" name="cs_date[]" value="<?php echo esc_attr( $horaire->date ); ?>" placeholder="Date">
                    <input type="text" name="cs_jour[]" value="<?php echo esc_attr( $horaire->jour ); ?>" placeholder="Jour">
                    <input type="text" name="cs_heure[]" value="<?php echo esc_attr( $horaire->heure ); ?>" placeholder="Heure">
                    <button type="button" class="remove_schedule">Retirer</button>
                </div>
                <?php
            }
        }
        ?>
    </div>
    <script>
        jQuery(document).ready(function($) {
            $('#add_schedule').click(function() {
                $('#horaires_container').append('<div class="horaire"><input type="date" name="cs_date[]" placeholder="Date"><input type="text" name="cs_jour[]" placeholder="Jour"><input type="text" name="cs_heure[]" placeholder="Heure"><button type="button" class="remove_schedule">Retirer</button></div>');
            });
            $(document).on('click', '.remove_schedule', function() {
                $(this).parent().remove();
            });
        });
    </script>
    <?php
}

function cs_save_meta_box_data( $post_id ) {
    if ( ! isset( $_POST['cs_nonce'] ) || ! wp_verify_nonce( $_POST['cs_nonce'], basename( __FILE__ ) ) ) {
        return;
    }
    if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
        return;
    }
    if ( ! current_user_can( 'edit_post', $post_id ) ) {
        return;
    }
    if ( isset( $_POST['cs_date'] ) && isset( $_POST['cs_jour'] ) && isset( $_POST['cs_heure'] ) ) {
        $horaires = array();
        for ( $i = 0; $i < count( $_POST['cs_date'] ); $i++ ) {
            $horaires[] = array(
                'date'  => sanitize_text_field( $_POST['cs_date'][$i] ),
                'jour'  => sanitize_text_field( $_POST['cs_jour'][$i] ),
                'heure' => sanitize_text_field( $_POST['cs_heure'][$i] ),
            );
        }
        update_post_meta( $post_id, 'cs_horaires', json_encode( $horaires ) );
    }
}
add_action( 'save_post', 'cs_save_meta_box_data' );

function cs_change_post_labels() {
    global $wp_post_types;
    if ( isset( $wp_post_types['post'] ) ) {
        $labels = &$wp_post_types['post']->labels;
        $labels->add_new = 'Ajouter un film';
        $labels->add_new_item = 'Ajouter un film';
    }
}
add_action( 'init', 'cs_change_post_labels' );

function cs_enqueue_styles() {
    wp_enqueue_style( 'cs_styles', plugin_dir_url( __FILE__ ) . 'css/style.css' );
}
add_action( 'wp_enqueue_scripts', 'cs_enqueue_styles' );