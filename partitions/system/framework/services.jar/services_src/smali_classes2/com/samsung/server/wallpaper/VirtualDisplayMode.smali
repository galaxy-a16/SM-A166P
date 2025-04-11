.class public Lcom/samsung/server/wallpaper/VirtualDisplayMode;
.super Ljava/lang/Object;
.source "VirtualDisplayMode.java"


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public isVirtualWallpaperDisplay(I)Z
    .locals 4

    .line 38
    iget-object p0, p0, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    .line 39
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 40
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 41
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
