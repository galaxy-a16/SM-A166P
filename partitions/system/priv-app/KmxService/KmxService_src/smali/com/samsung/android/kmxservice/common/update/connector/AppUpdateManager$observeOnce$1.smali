.class public final Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->observeOnce(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/m0;"
    }
.end annotation


# instance fields
.field final synthetic $observer:Landroidx/lifecycle/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m0;"
        }
    .end annotation
.end field

.field final synthetic $this_observeOnce:Landroidx/lifecycle/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/h0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m0;Landroidx/lifecycle/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/m0;",
            "Landroidx/lifecycle/h0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;->$observer:Landroidx/lifecycle/m0;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;->$this_observeOnce:Landroidx/lifecycle/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;->$observer:Landroidx/lifecycle/m0;

    invoke-interface {v0, p1}, Landroidx/lifecycle/m0;->onChanged(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;->$this_observeOnce:Landroidx/lifecycle/h0;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/h0;->removeObserver(Landroidx/lifecycle/m0;)V

    return-void
.end method
