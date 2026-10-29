#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define VENDOR_LOGO_PATH "/usr/share/icons/vendor/scalable/emblems/emblem-vendor.svg"
#define AMELIA_DARK_LOGO "/usr/share/pixmaps/amelia-wordmark-full-white-200.svg"
#define AMELIA_LIGHT_LOGO "/usr/share/pixmaps/amelia-wordmark-full-black-200.svg"
#define SHIM_SO_PATH "/usr/lib/amelia/libamelia-about-logo.so"

__attribute__((constructor))
static void amelia_about_logo_init(void) {
    const char *preload = getenv("LD_PRELOAD");
    if (!preload) {
        return;
    }
    if (strcmp(preload, SHIM_SO_PATH) == 0) {
        unsetenv("LD_PRELOAD");
    }
}

void gtk_picture_set_filename(void *picture, const char *filename) {
    static void (*real_set_filename)(void *, const char *) = NULL;
    static void *(*get_default_mgr)(void) = NULL;
    static int (*get_dark)(void *) = NULL;

    if (!real_set_filename) {
        real_set_filename = (void (*)(void *, const char *))dlsym(RTLD_NEXT, "gtk_picture_set_filename");
    }
    if (!real_set_filename) {
        return;
    }

    if (filename && strcmp(filename, VENDOR_LOGO_PATH) == 0) {
        if (!get_default_mgr) {
            get_default_mgr = (void *(*)(void))dlsym(RTLD_DEFAULT, "adw_style_manager_get_default");
        }
        if (!get_dark) {
            get_dark = (int (*)(void *))dlsym(RTLD_DEFAULT, "adw_style_manager_get_dark");
        }

        if (get_default_mgr && get_dark) {
            void *mgr = get_default_mgr();
            if (mgr && get_dark(mgr)) {
                if (access(AMELIA_DARK_LOGO, R_OK) == 0) {
                    filename = AMELIA_DARK_LOGO;
                }
            } else {
                if (access(AMELIA_LIGHT_LOGO, R_OK) == 0) {
                    filename = AMELIA_LIGHT_LOGO;
                }
            }
        }
    }

    real_set_filename(picture, filename);
}

