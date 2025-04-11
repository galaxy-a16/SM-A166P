.class public final synthetic Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->$r8$lambda$xxnbkwru_jyApE7X8BGJ4U63IVM(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)I

    move-result p0

    return p0
.end method
