.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackNavigationController;

    iput p2, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackNavigationController;

    iget p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/BackNavigationController;->$r8$lambda$_nw1XXpNooQ22sBPBjunRadaJ-Q(Lcom/android/server/wm/BackNavigationController;ILandroid/os/Bundle;)V

    return-void
.end method
