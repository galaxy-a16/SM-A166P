.class public final synthetic Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field public final synthetic f$1:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->$r8$lambda$fmewUghw9_hzL_xElvaTK1JEUMw(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Landroid/os/IBinder;)V

    return-void
.end method
