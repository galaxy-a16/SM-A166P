.class public Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "MediaResourceMonitorService.java"


# static fields
.field public static final DEBUG:Z

.field public static final mServiceEnabled:Z


# instance fields
.field public final CUSTOM_DIMENSION_PACKAGE_KEY:Ljava/lang/String;

.field public final CUSTOM_DIMENSION_UNSUPPORTED_CODEC_KEY:Ljava/lang/String;

.field public final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/media/MediaResourceMonitorService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPackageManager(Lcom/android/server/media/MediaResourceMonitorService;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmServiceEnabled()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaResourceMonitor"

    const/4 v1, 0x3

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string p1, "1003"

    .line 79
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->CUSTOM_DIMENSION_PACKAGE_KEY:Ljava/lang/String;

    const-string p1, "2001"

    .line 80
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->CUSTOM_DIMENSION_UNSUPPORTED_CODEC_KEY:Ljava/lang/String;

    .line 87
    new-instance p1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string/jumbo v0, "media_resource_monitor"

    .line 92
    iget-object v1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
