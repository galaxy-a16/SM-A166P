.class public final synthetic Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotation;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotation;

    iput p2, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotation;

    iget p0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DisplayRotation;->$r8$lambda$8kCIbnYrpx-79-y5QX3R2xQpb44(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method
