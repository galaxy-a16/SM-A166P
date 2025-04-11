.class public final synthetic Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

    iput-boolean p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->$r8$lambda$mDoCJynH80KNjrgxY5vpj5-iPb8(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;Z)V

    return-void
.end method
