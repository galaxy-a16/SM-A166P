.class public final synthetic Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    check-cast p2, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-static {p1, p2}, Lcom/android/server/chimera/ConservativePolicyHandler;->$r8$lambda$bq4zT3IMZg6d0rom6xtTk8bZOOY(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method
