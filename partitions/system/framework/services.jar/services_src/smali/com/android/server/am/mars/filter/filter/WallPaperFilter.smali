.class public Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
.super Ljava/lang/Object;
.source "WallPaperFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mWallpaperPackage:Ljava/lang/String;

.field public mWallpaperUid:I

.field public userId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperUid:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/WallPaperFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
    .locals 1

    .line 28
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 42
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/16 p2, 0xf

    if-ne p4, p2, :cond_0

    .line 44
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessController;->getScreenOnState()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperPackage()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getWallpaperUid()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperUid:I

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->initWallpaperPackage()V

    return-void
.end method

.method public final initWallpaperPackage()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    const-string v1, "ignore in case of default image wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperUid:I

    .line 60
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWallpaperPackage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaperPackage() exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onWallPaperPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->userId:Ljava/lang/Integer;

    return-void
.end method
