.class public final synthetic Lcom/android/server/wallpaper/WallpaperData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperData$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperData;->$r8$lambda$8JoTyNErLh0kNjQHvOgBbVMQGRw(Ljava/lang/StringBuilder;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method
