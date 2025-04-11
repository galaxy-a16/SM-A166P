.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# instance fields
.field public final mMode:I

.field public final mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public final mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object p1

    iget p2, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    new-instance p2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p2, p1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "WallpaperDestinationChangeHandler: mode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    iput-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    :cond_0
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->put(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_5
    :goto_0
    return-void
.end method
