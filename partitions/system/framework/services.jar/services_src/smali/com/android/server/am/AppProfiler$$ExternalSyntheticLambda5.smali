.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-static {p1}, Lcom/android/server/am/AppProfiler;->$r8$lambda$Xzn48QLsLJH66nNdJ7JNrH-U6A8(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method
