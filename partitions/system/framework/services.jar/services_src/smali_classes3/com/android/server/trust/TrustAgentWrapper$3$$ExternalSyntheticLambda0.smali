.class public final synthetic Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/trust/TrustAgentWrapper$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustAgentWrapper$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/trust/TrustAgentWrapper$3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/trust/TrustAgentWrapper$3;

    check-cast p1, Landroid/service/trust/GrantTrustResult;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper$3;->$r8$lambda$5W8i5yUK6joPnfpQwG7Z3_K9YRY(Lcom/android/server/trust/TrustAgentWrapper$3;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method
