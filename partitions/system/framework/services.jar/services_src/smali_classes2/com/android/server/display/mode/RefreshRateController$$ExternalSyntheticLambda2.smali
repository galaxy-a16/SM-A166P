.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$0:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$0:Landroid/os/IBinder;

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/display/mode/RefreshRateController;->$r8$lambda$8bvAg2vfoYRhVTRPoY1ul_PzqAs(Landroid/os/IBinder;I)V

    return-void
.end method
