.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Lcom/android/server/wm/InputTarget;

.field public final synthetic f$2:Lcom/android/server/wm/InputTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;->f$1:Lcom/android/server/wm/InputTarget;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;->f$2:Lcom/android/server/wm/InputTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;->f$1:Lcom/android/server/wm/InputTarget;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda31;->f$2:Lcom/android/server/wm/InputTarget;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$3IAG5WIL-gMSbyb6vuOhmc91bKE(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V

    return-void
.end method
