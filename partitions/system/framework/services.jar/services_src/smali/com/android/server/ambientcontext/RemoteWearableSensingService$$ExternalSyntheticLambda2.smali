.class public final synthetic Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RemoteCallback;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

    iput-object p2, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    iput-object p4, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

    iget-object v1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$3:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->$r8$lambda$xImiXCbrnCrskCRMdmPbskYRFHg(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method
