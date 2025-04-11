.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/SurfaceControl;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$1:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$1:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->$r8$lambda$56EDE9u9Nw-BN-XmAezzCpF9XZA(Lcom/android/server/input/InputManagerService;Landroid/view/SurfaceControl;I)V

    return-void
.end method
