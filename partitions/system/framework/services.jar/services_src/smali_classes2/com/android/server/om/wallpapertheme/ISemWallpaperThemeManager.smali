.class public interface abstract Lcom/android/server/om/wallpapertheme/ISemWallpaperThemeManager;
.super Ljava/lang/Object;
.source "ISemWallpaperThemeManager.java"


# virtual methods
.method public abstract applyThemeParkWallpaperColor(Landroid/net/Uri;)V
.end method

.method public abstract applyWallpaperColor(Ljava/util/List;Ljava/util/List;Z)V
.end method

.method public abstract applyWallpaperColors(Ljava/util/List;II)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getLastPalette(Ljava/util/List;Ljava/util/List;)Z
.end method

.method public abstract getWallpaperColors()Ljava/util/List;
.end method

.method public abstract initWallpaperTheme()V
.end method

.method public abstract isColoThemeApplied()Z
.end method

.method public abstract isRequestForColorTheme(Landroid/content/om/OverlayManagerTransaction;)Z
.end method

.method public abstract onPackageAdded(Ljava/lang/String;)V
.end method

.method public abstract onUserAdded(I)V
.end method

.method public abstract readLastPalette()Ljava/util/List;
.end method
