.class public final synthetic Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    iput-boolean p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->$r8$lambda$km4x46TiJ-mlgYSBydJTKs6UPn8(Landroid/view/SurfaceControl$Transaction;ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
