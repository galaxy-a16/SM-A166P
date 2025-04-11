.class public final synthetic Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

.field public final synthetic f$1:[Landroid/view/InsetsSourceControl;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;[Landroid/view/InsetsSourceControl;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;->f$1:[Landroid/view/InsetsSourceControl;

    iput p3, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;->f$1:[Landroid/view/InsetsSourceControl;

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->$r8$lambda$9LMzm1Dz-svVRdIWvZOoZKfANPw(Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;[Landroid/view/InsetsSourceControl;I)V

    return-void
.end method
