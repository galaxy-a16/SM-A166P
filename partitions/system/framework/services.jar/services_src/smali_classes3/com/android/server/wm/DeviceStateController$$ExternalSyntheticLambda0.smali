.class public final synthetic Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;

.field public final synthetic f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;->f$0:Landroid/util/Pair;

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;->f$0:Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-static {v0, p0}, Lcom/android/server/wm/DeviceStateController;->$r8$lambda$WIId5rtxWd84LH2mwt5BVuSAvnI(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceState;)V

    return-void
.end method
