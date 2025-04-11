.class public final Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;
.super Ljava/lang/Object;
.source "SemWallpaperThemeOverlayPolicy.java"

# interfaces
.implements Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;


# static fields
.field public static final TAG:Ljava/lang/String; = "SemWallpaperThemeOverlayPolicy"


# instance fields
.field public final mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    return-void
.end method


# virtual methods
.method public final isGoogleWallpaperThemeOverlay(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "/data/resource-cache/android-SemWT_G_MonetPalette"

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSemWallpaperThemeOverlay(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "/data/resource-cache/android-SemWT"

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Z
    .locals 3

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->isSemWallpaperThemeOverlay(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    .line 31
    :cond_0
    sget-object p4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android"

    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->isGoogleWallpaperThemeOverlay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return p4

    .line 38
    :cond_1
    sget-object p2, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p4

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    .line 47
    :cond_3
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->isGoogleWallpaperThemeOverlay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return p4

    .line 54
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->isGoogleWallpaperThemeOverlay(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return p4

    :cond_5
    return v0
.end method
