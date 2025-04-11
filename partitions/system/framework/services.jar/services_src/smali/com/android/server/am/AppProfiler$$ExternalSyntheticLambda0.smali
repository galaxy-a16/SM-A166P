.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {p1}, Lcom/android/server/am/AppProfiler;->$r8$lambda$wOLGg9BWai5G5VB0Hiikm4E91KE(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
