.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DexOptHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/DexOptHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/DexOptHelper;

    check-cast p1, Lcom/android/server/art/model/OperationProgress;

    invoke-static {p0, p1}, Lcom/android/server/pm/DexOptHelper;->$r8$lambda$jQSM_i3s_6m4IaUKc54GyntRH-A(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/art/model/OperationProgress;)V

    return-void
.end method
