.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final synthetic f$1:Landroid/hardware/display/SemWifiDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/SemWifiDisplay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/SemWifiDisplay;

    invoke-static {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->$r8$lambda$Xt9_7cbfiZxxDHQ5crb8CvtU714(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V

    return-void
.end method
